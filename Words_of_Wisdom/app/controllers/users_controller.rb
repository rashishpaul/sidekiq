class UsersController < ApplicationController

  def index
    @users = User.all
  end
  def destroy
    User.destroy(params['id'])
    redirect_to(:back)
  end
  def create
    user = params['user']
    User.create(name: user['name'], email: user['email'])
    CatfactsMailer.catfacts_welcome(user['email']).deliver
    redirect_to(:back)
  end
end
