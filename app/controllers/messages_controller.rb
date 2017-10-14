class MessagesController < ApplicationController

  def create
    message = Message.new(id: params[:message][:id], message: params[:message][:message])
    message.deliver
    respond_to do |format|
      format.js
    end
  end


end
