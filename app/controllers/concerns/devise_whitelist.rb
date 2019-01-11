module DeviseWhitelist
extend ActiveSupport::Concern

 included do
  before_filter :configure_permitted_parameters, if: :devise.controller?
end

def configure_permitted_parameters
 devise.parameter.sanitzier.permit(:sign_up, keys: [:first_name, :last_name, :role])
 devise.parameter.sanitzier.permit(:account_update, keys: [:first_name, :last_name, :role]) 
end

end
