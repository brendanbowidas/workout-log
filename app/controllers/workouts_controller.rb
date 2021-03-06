class WorkoutsController < ApplicationController
    
    before_action :find_workout, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
    
    def index 
        @workouts = Workout.all
    end
    
    def show 
       
    end
    
    def new
       # @workout = current_user.workouts.build
       @workout = Workout.new
       @workout.user_id = current_user.id
    end
    
    def create 
        @workout = current_user.workouts.build(workout_params)
        if @workout.save
            redirect_to @workout
            
        else
            render 'new'
        end
    end
    
    def edit 
       
    end
    
     def update 
        
            if @workout.update(workout_params)
                redirect_to @workout
            else
                render 'edit'
            end
     end
     
     def destroy 
         @workout.destroy
         redirect_to root_path
     end
     
     private
     def workout_params 
     params.require(:workout).permit(:date, :workout, :comments, :length, :image)
         
     end
     
     def find_workout 
            @workout = Workout.find(params[:id])
     end
end
