class LandingController < ApplicationController
  def index
    @pcrs = Pcr.all
  end
end
