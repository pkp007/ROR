class SubjectsController < ApplicationController

layout "admin"

  def index
    @subject = Subject.all
  end

  def show
    @subject = Subject.find_by_id(params["id"])
  end

  def new
    @subject = Subject.new
  end

  def create
   @subject = Subject.new(subject_params)
    
    if (@subject.save)
      flash[:notice]="Subject Created successfully"
      redirect_to(:action => "index")
    else
        render('new')
    end
  end

  def edit
    @subject= Subject.find_by_id(params["id"])
  end

  def update
    @subject= Subject.find_by_id(params["id"])
    if( @subject.update_attributes(subject_params))
      flash[:notice]="Subject updated successfully"
      redirect_to(:action => "show", :id => @subject.id)
    else
        render('edit')
    end
  end

def delete
  @subject = Subject.find_by_id(params["id"])
end
  def destroy
    @subject = Subject.find_by_id(params["id"])
    @subject.destroy
    flash[:notice]="Subject '#{@subject.name}' destroyed "
    redirect_to(:action => "index")
  end
  private

  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end
end
