class UsersController < ApplicationController
  def new
  	@user = User.new(name: 'Luffy', 
  				email: 'something@something.com', 
  				password: 'test', 
  				password_confirmation: 'test')
  end

  def show
    @user = User.find(params[:id])
  end
end
=======
  	@user = User.where(id: params[:id]).first
  end

  def index
  	@users = User.all
  end
end
>>>>>>> master
