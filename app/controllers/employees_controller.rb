class EmployeesController < ApplicationController

    before_action :set_employee, only: [:show, :edit, :update]

    def index
        @employees = Employee.all
    end
    
    def show
    end

    def new
        @employee = Employee.new
    end

    def create
        new_employee = Employee.create(employee_params(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url))
        if new_employee.valid?
            redirect_to employee_path(new_employee)
        else
            redirect_to new_employee_path
        end
    end

    def edit
    end

    def update
        @employee.update(employee_params(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url))
    end

    private

    def set_employee
        @employee = Employee.find(params[:id])
    end

    def employee_params(*args)
        params.require(:employee).permit(*args)
    end
end
