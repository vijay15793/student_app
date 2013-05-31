class StudentsController < ApplicationController
  layout 'school'
  def index
    
  end
  
  def list
    @student = Student.order("students.name ASC")
  end
  
  def show
    @student = Student.find(params[:id])
  end
  
  def new
    #@student = Student.new(:username => 'username',:email=>'email')
  end
  
  def create
    # Instantiate a new object using form parameters
    flash[:notice]="Student Added:"
    @student = Student.new(params[:student])
    # Save the object
    if @student.save
      # If save succeeds, redirect to the list action
      redirect_to(:action => 'list')
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end
  
  def edit
    @student = Student.find(params[:id])
  end
  
  def update
      @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      flash[:notice]="Student Updated:"
      redirect_to(:action => 'show', :id => @student.id)
    else
      render('edit')
    end
  end
  
  def delete
    @student = Student.find(params[:id])
  end
  
  def destroy
    Student.find(params[:id]).destroy
    flash[:notice]="Student Deleted:"
    redirect_to(:action => 'list')
  end
end
