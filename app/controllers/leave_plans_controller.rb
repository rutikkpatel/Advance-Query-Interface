class LeavePlansController < ApplicationController
  before_action :set_leave_plan, only: [:edit, :update, :show, :destory]

  def index
    @leave_plans = LeavePlan.all
  end

  def new
    @leave_plan = LeavePlan.new
  end

  def create
    @leave_plan = LeavePlan.create(leave_plan_params)
    if @leave_plan.valid?
      flash[:notice] = 'Leave Applied Successfully'
      redirect_to leave_plans_path
    else
      flash[:errors] = @leave_plan.errors.full_messages
      redirect_to new_leave_plan_path
    end
  end

  def show; end

  def edit; end

  def update
        
        # binding.pry
        
    if @leave_plan.update(leave_plan_params)
      flash[:notice] = 'Leave Updated Successfully'
      redirect_to leave_plan_path(@leave_plan)
    else
      flash[:errors] = @leave_plan.errors.full_messages
      redirect_to edit_leave_plan_path(@leave_plan)
    end
  end

  def destroy
    if @leave_plan.delete
      flash[:notice] = 'Leave Successfully Cancelled'
      redirect_to root_path(@leave_plan)
    else
      flash[:errors] = @leave_plan.errors.full_messages
      redirect_to destroy_leave_plan_path
    end
  end

  private

  def leave_plan_params
    params.require(:leave_plan).permit(:employee_id, :leave_type, :leave_reason, :leave_from, :leave_to)
  end

  def set_leave_plan
    @leave_plan = LeavePlan.find(params[:id])
  end
end
