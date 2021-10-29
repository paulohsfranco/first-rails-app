class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @students = %w( Matheus André Alé Monique)
    @time = Time.now
    user_input = params[:student_name]

    @students = @students.select { |student| student.start_with?(user_input)}
  end
end
