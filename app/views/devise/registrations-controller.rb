
def after_sign_up_path_for(resource)
	session[ :plan_id] = params [ :plan_id]
	setup_campaign_path( :campaign_setup)
end