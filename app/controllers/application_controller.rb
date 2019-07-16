class ApplicationController < ActionController::Base
    # skip_before_action :verify_authenticity_token
    # before_action :authenticate_user!
    before_action :set_buyer

    def set_buyer
        puts "----set buyer ----"
        puts params
        @user_type = params[:user_type]
    end
    def after_sign_in_path_for(profile)

        puts "----application controller ----"
        puts params[:user]
        puts params[:user][:user_type]

        if(current_user.profile)
            if(params[:user][:user_type] == "returning") ||(params[:user][:user_type] == "buyer")
                root_path
            else
                new_car_path
            end
        else
            new_profile_path(user_type: params[:user][:user_type]) || root_path
        end
    end
end
