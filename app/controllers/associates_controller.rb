class AssociatesController < ApplicationController
  before_action:authenticate_user!
def index
  userPresent = current_user[:email]
       @associate= Associate.new()
end
  def show
# @associate= Associate.find_by_cerner_id params[:show_cerner_id]
# render action: 'show'

  end

def new
  @associate= params || {}
end

       def create
         # if current_user.associate?
         #   render 'associate/edit'
         # else current_user.manager?
         #   render 'associate/edit'
         #  end
           @new = Associate.new()
           @values=params[:associate]
           @new.cerner_id=params[:associate][:cerner_id]
           @new.type_of_request=params[:associate][:type_of_request]
           @new.leave_approval=params[:associate][:leave_approval]
           @new.start_date=params[:associate][:start_date]
           @new.end_date=params[:associate][:end_date]

             @new.save
       end



           private
           def associate_params

             params.require(:associate).permit(:leave_approval, :start_date, :end_date, :type_of_request, :cerner_id)
           end

end
