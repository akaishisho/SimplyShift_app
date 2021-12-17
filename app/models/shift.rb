class Shift < ApplicationRecord
  before_save :set_the_day_implement

  belongs_to :user

  private

  def set_the_day_implement
    year = self.date.year
    month = self.date.month
    day = self.date.day

    self.start_time = self.start_time.change(year: year, month: month, day: day)
    self.finish_time = self.finish_time.change(year: year, month: month, day: day)
  end

end
