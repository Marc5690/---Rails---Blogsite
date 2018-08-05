class EmailAddressController < ApplicationController
  def addEmail

  	@emailString = params[:email]
  	@nameString = params[:name]

    @newEmailAddress = EmailAddress.create({ :name => @nameString, :email => @emailString})
    if @newEmailAddress.save
      flash[:success] = "Your details have been saved, thanks!"
      redirect_to root_path
    else
      flash[:failure] = "Something went wrong, drop me a line at marclaffan@gmail.com and I'll sort it out for you. Sorry!"
      redirect_to root_path
    end
  end
end
