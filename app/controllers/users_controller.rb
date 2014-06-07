class UsersController < ApplicationController


def create
    existing_user = User.find_by("username" => params["username"])

   if existing_user == nil
      User.create("username" => params["username"],
                  "password" => params["password"],
                  "name" => params["name"],
                  "photo_url" => params["photo_url"])

      redirect_to "/"
    else
      @message = "That username is taken.  Try again."
      render "new"
    end
  end



  def update
    the_user = User.find_by("username" => params["username"])
    the_user.update("username" => params["username"],
                "password" => params["password"],
                "name" => params["name"],
                "photo_url" => params["photo_url"])


    redirect_to "/users/#{the_user["id"]}"
  end

end
