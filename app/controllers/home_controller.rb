class HomeController < ApplicationController
  def index
    @work_shifts = WorkShift.all
    @work_shifts_by_date = @work_shifts.group_by{ |work_shift| work_shift.start_of_shift.to_date}
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @time_offs = TimeOff.all
	@time_offs_by_date = @time_offs.group_by{ |time_off| time_off.start_date..time_off.end_date }
  end
end
