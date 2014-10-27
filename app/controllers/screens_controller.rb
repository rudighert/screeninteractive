class ScreensController < ApplicationController
  def index

  end

  def show

    NotificationsManager.send_notification "screen_show", params[:id]
  end
end