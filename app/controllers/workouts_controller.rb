class WorkoutsController < ApplicationController
    def index 
        @workouts = Workout.all
    end
    
    def show 
        @workout = Workout.find(params[:id])
    end
    
    def new
        @workout = Workout.new
    end
    
    def create 
        @workout = Workout.new(workout_params)
        if @workout.save
            redirect_to @workout
            
        else
            render 'new'
        end
    end
    
    def edit 
        
    end
    
     def update 
         
     end
     
     def destroy 
         
     end
     
     private
     def workout_params 
     params.require(:workout).permit(:date, :workout, :comments, :length)
         
     end
     
     def find_workout 
            
     end
end
