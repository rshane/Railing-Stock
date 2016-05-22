class PagesController < ApplicationController
  def index
    @time_to_display = Time.now.strftime("%I:%M%P")
  end

  def about
  end

end
