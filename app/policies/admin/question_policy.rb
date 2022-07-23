class Admin::QuestionPolicy < ApplicationPolicy
  def new?
    during_semester(Date.today)
  end

  def create?
    during_semester(Date.today)
  end

  def edit?
    during_semester(Date.today)
  end

  def update?
    during_semester(Date.today)
  end

  def destroy?
    during_semester(Date.today)
  end


  private

  def during_semester(date)
    !summer(date) && !autum(date) && !spring(date)
  end

  def summer(date)
    @summer ||= Admin::Semester.where(name: 'Summer').first
    start_date = @summer.start_date
    end_date = @summer.end_date

    date <= end_date && date >= start_date
  end

  def spring(date)
    @spring ||= Admin::Semester.where(name: 'Spring').first
    start_date = @spring.start_date
    end_date = @spring.end_date

    date <= end_date && date >= start_date
  end

  def autum(date)
    @autum ||= Admin::Semester.where(name: 'Autum').first
    start_date = @autum.start_date
    end_date = @autum.end_date

    date <= end_date && date >= start_date
  end
end
