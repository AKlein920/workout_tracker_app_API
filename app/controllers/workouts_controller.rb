class WorkoutsController < ApplicationController

  # GET /workouts
  def index
    @workouts = Workout.where(user_id: params[:user_id])
    render json: @workouts
  end

  #GET /workouts/1
  def show
    workout = Workout.where(user_id: params[:user_id], id: params[:id])
    render json: workout
  end

  # POST /workouts
  def create
    workout = Workout.new(workout_params)
    workout.user_id = params[:user_id]

    if workout.save
      render json: workout, status: 200
    else
      render json: workout.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workouts/1
  def update
    workout = Workout.where(user_id: params[:user_id], id: params[:id])
    workout.update(workout_params)

    if workout.update(workout_params)
      render json: workout
    else
      render json: workout.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workouts/1
  def destroy
    workout = Workout.where(user_id: params[:user_id], id: params[:id])
    workout.destroy(params[:id])
  end

  private

  def workout_params
    params.require(:workout).permit(:title, :duration, :time_of_day, :location, :equipment_used, :class, :notes, :calories_burned, :user_id, :start, :editable, :className, :backgroundColor)
  end

end
