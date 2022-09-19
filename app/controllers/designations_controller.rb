class DesignationsController < ApplicationController
  before_action :set_designation, only: %i[edit update destory]

  def index
    @designations = Designation.all
  end

  def new
    @designation = Designation.new
  end

  def create
    @designation = Designation.create(designation_params)
    if @designation.save
      redirect_to designations_path, notice: 'Designation has been created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @designation.update(designation_params)
      redirect_to designation_path(@designation), notice: 'Designation has been updated successfully.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @designation = Designation.find(params[:id])
    if @designation.delete
      redirect_to designations_path, notice: 'Designation has been successfully destroyed.'
    else
      redirect_to destroy_designation_path
    end
  end

  private

  def set_designation    
    @designation = Designation.find(params[:id])
  end

  def designation_params
    params.require(:designation).permit(:designation_name)
  end
end
