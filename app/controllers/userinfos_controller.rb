class UserinfosController < ApplicationController
    def show
        @userinfo = Userinfo.new()

    end

    def create
        @userinfo = Userinfo.new(userinfo_params)
        binding.pry
        if @userinfo.save
            # If user saves in the db successfully:
            flash[:notice] = "Data saved successfully"
            redirect_to root_path
          else
            
            flash.now.alert = "Error while storing the Data"
            render :new
          end
        end
        private
    
        def userinfo_params
         
          params.require(:userinfo).permit(:leave_approval, :start_date, :end_date, :in_meeting, :out_of_office)
        end
        

end
