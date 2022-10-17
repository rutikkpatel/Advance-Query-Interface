class EmployeesController < ApplicationController
  before_action :set_employee, only: [:edit, :update, :show, :destory]

  def index
    # @employees = Employee.all
    @employees = Employee.includes(:designation)
    # @employees = Employee.preload(:designation)
    # @employees = Employee.eager_load(:designation)

    # includes => we can use where clause in this ||| widely used |||
    # preload => we can not use where clause with preload
    # eager_load => it use LEFT OUTER JOIN
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employee_params)
    if @employee.valid?
      flash[:errors] = 'Employees Added Successfully'
      redirect_to employees_path
    else
      flash[:errors] = @employee.errors.full_messages
      redirect_to new_employee_path
    end
  end

  def show; end

  def edit; end

  def update
    if @employee.update(employee_params)
      flash[:errors] = 'Employees Updated Successfully'
      redirect_to employee_path(@employee)
    else
      flash[:errors] = @employee.errors.full_messages
      redirect_to edit_employee_path(@employee)
    end
  end

  def destroy
    if @employee.delete
      flash[:errors] = 'Employees Successfully Deleted'
      redirect_to root_path(@employee)
    else
      flash[:errors] = @employee.errors.full_messages
      redirect_to destroy_employee_path
    end
  end

  #  Method for displaying all queries
  def queries;  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :contact_number, :age, :gender, :designation_id, :joining_date, :birth_date, :salary, :availability)
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end
end
