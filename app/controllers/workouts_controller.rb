class WorkoutsController < ApplicationController

  def create
    Workout.create("combo_id" => params["chosen_combo_id"],
                    )
    redirect_to '/workouts',"

  end
end
