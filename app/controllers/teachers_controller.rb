class TeachersController < ApplicationController
  def new
    @placeholder_course = '186'
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
      if @teacher.save
        redirect_to root_path
      else
        redirect_to new_technique_path
      end
    end

    # Hint: params??
    # YOUR CODE HERE

    private
    def teacher_params
      params.require(:full_name).permit(:course_name, :grade_level, :authenticity_token)
    end
    # This line is explicitly declaring that this controller method should render/serve the
    # 'views/teachers/show.html.erb' view. Otherwise, the controller would try to look for a 
    # 'views/teachers/create.html.erb' view file which we do not have. 
    # By convention, create is associated with a POST/PUT method while show is associated with the GET HTTP method
    # so the result after a "create" (C in CRUD) is a show.
    render 'show'
end
# class TechniquesController < ApplicationController

#   def index
#     @all_techniques = Technique.all
#   end

#   def new
#     @technique = Technique.new
#   end

#   def create
#       @technique = Technique.new(technique_params)
#       if @technique.save
#         redirect_to root_path
#       else
#         redirect_to new_technique_path
#       end
#     end

#     def delete
#     @technique = Technique.find(params[:id])
#     @technique.delete
#     redirect_to root_path
#   end

#     private
#     def technique_params
#       params.require(:technique).permit(:name, :difficulty, :notes, :martial_art, :form_type, :link, :belt_color)
#     end

# end