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
    start_date = SUMMER.start_date
    end_date = SUMMER.end_date

    date <= end_date && date >= start_date
  end

  def spring(date)
    start_date = SPRING.start_date
    end_date = SPRING.end_date

    date <= end_date && date >= start_date
  end

  def autum(date)
    start_date = AUTUM.start_date
    end_date = AUTUM.end_date

    date <= end_date && date >= start_date
  end
end
