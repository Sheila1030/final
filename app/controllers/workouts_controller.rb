class WorkoutsController < ApplicationController

  def create
    Workout.create("combo_id" => params["chosen_combo_id"],
                    "day" => params["day"],
                    "start_time" => params["start_time"],
                    "end_time" => params["end_time"],
                    "user_id" => cookies["user_id"])

    redirect_to "/users/#{cookies["user_id"]}", :notice => "That's a great workout choice!"

  end
end
