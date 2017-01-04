require 'date'

class Date
  def mweek
    (day + 6 + (self - day + 1).wday) / 7
  end

  def mwday
    mw = mweek
    d  = self - ((mw - 1) * 7)
    month == d.month ? mw : mw - 1
  end
end
