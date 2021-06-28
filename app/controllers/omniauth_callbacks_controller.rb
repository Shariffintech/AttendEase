class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # before_action :new
  # skip_before_action :verify_authenticity_token, only: :create

#Devise has a SessionsController natively so dont need to create it.

# Setting a method for all providers if multi-providers
  def all
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
    sign_in_and_redirect user, notice: "Sign in!"
    else 
      #persisting user attributes when validations fail
      session["devise.user_attributes"] =  user.attributes
      redirect_to new_user_registration_url
    end
  end

  # Displaying a notice for user if registration fails
  def self.new_with_session(params, session)
      # overriding class method on user
    if session["devise.user_attributes"]
      # check if session exists then creating a record on those user given details
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params[:attributes]
        user.valid?
      end
    else 
      #defails to devise and creates a new instance
      super
    end
  end



  alias_method :google_oauth2, :all

end