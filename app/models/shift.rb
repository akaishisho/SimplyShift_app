class Shift < ApplicationRecord
  before_save :set_the_day_implement
  validate :check_the_time

  belongs_to :user

  private

  def set_the_day_implement
    year = self.date.year
    month = self.date.month
    day = self.date.day

    self.start_time = self.start_time.change(year: year, month: month, day: day)
    self.finish_time = self.finish_time.change(year: year, month: month, day: day)
  end

  def check_the_time
    set_the_day_implement
    if self.start_time.strftime("%H%M") !='0000' && self.finish_time.strftime("%H%M") !='0000'
      if self.start_time >= self.finish_time
        errors.add(:base, '希望終了時間は希望開始時間より後の時刻を入力してください。') #本来の:baseの使い方ではないがRailsのバージョンが6.0.0ではないので一旦割り切る
      end
    end
  end

end
