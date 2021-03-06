class ConversationsController < ApplicationController
  #before_action :user_authenticated!

  def index
    @conversations = current_user.mailbox.conversations
  end

  def show
    @conversation = current_user.mailbox.conversations.find(params[:id])
  end

  def new
    @user = User.find(params[:user])
  end

  def create
    @recipient = User.find(params[:user])
    receipt = current_user.send_message(@recipient, params[:body], params[:subject])
    redirect_to conversation_path(receipt.notification.conversation)
  end

end
