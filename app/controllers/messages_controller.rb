class MessagesController < ApplicationController
  before_action :fetch_booking


  def index # mostra mensagens agrupadas por user e refere o user
    @messages = Message.all.where(booking_id: @booking)

  end

  def new # mostra mensagem com o user
    @history = Message.all.where(booking_id: @booking.id)
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.sent_to = recipient
    @message.created_by = current_user
    @message.booking = @booking
    @message.save!
    redirect_to new_booking_message_path(@booking)
  end

  def show # mostra com user e refere o booking
    @messages = Message.all.where(booking: @booking)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def fetch_booking
    @booking = Booking.find(params[:booking_id])
  end

  def recipient
    if current_user == @booking.student
      @send_to = @booking.job.client
    else
      @send_to = @booking.student
    end
      @send_to
  end





end
