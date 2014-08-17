class SetupCampaignController < ApplicationController
	include Wicked::Wizard
	steps :campaign_setup

	def show
		@user = current_user
		case steps
		when :campaign_setup
			@campaign = Campaign.new
		end
		render_wizard

		def update
			@user = current_user
			@campaign = Campaign.new(campaign_params)
			@campaign.users << @user
			render_wizard @campaign
		end

		private
		def campaign_params
			params.require( :campaign).permit(:name, :description, :plan_id, {:user_ids => []})
		end

		def redirect_to_finish_wizard
			redirect_to dashboard_path, notice: "Thank you for signing up"
		end

	end
