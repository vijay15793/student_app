class StudentsController < ApplicationController
  
  def index
    
  end
  
  def list
    @students = Student.order("students.name ASC")
  end
  
  def show
    @student = Student.find(params[:id])
  end
  
  def new
    #@student = Student.new(:username => 'username',:email=>'email')
  end
  
  def create
    @student = Student.new(params[:student])
    if @student.save
      redirect_to(:action => 'list')
    else
      rendr('new')
    end
  end
  
  def edit
    @student = Student.find(params[:id])
  end
  
  def update
      @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      redirect_to(:action => 'show', :id => @subject.id)
    else
      rendr('edit')
    end
  end
  
  def delete
    @student = Student.find(params[:id])
  end
  
  def destroy
    Student.find(params[:id]).destroy
    redirect_to(:action => 'list')
  end
end
