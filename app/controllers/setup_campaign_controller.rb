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

end
