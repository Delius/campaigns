class SetupCampaignController < ApplicationController
include Wicked::Wizard
steps :campaign_setup
end
