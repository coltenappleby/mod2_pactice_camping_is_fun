class SignupsController < ApplicationController

    def new
        @signup = Signup.new
    end

    def create
        @signup = Signup.create(signup_params)
        # @camper = Camper.find(params[:camper_id])
        
        if @signup.valid?
            redirect_to camper_path(@signup.camper_id)
        else 
            redirect_to new_signup_path()  #(@signup)
        end



    end

    private 

    def signup_params
        params.require(:signup).permit(:camper_id, :activity_id, :time)
    end
end 