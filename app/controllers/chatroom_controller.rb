class ChatroomController < ApplicationController
  before_action :set_chatroom, only: %i[ show edit update destroy ]

  # GET /chatroom or /chatroom.json
  def index
    @chatroom = Chatroom.all
    @messages = Message.all
  end

  # GET /chatroom/1 or /chatroom/1.json
  def show
  end

  # GET /chatroom/new
  def new
    @chatroom = Chatroom.new
  end

  # GET /chatroom/1/edit
  def edit
  end

  # POST /chatroom or /chatroom.json
  def create
    @chatroom = Chatroom.new(chatroom_params)

    respond_to do |format|
      if @chatroom.save
        format.html { redirect_to chatroom_url(@chatroom), notice: 'Chatroom was successfully created.' }
        format.json { render :show, status: :created, location: @chatroom }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chatroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chatroom/1 or /chatroom/1.json
  def update
    respond_to do |format|
      if @chatroom.update(chatroom_params)
        format.html { redirect_to chatroom_url(@chatroom), notice: 'Chatroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @chatroom }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chatroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chatroom/1 or /chatroom/1.json
  def destroy
    @chatroom.destroy

    respond_to do |format|
      format.html { redirect_to chatrooms_url, notice: 'Chatroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatroom
      @chatroom = Chatroom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chatroom_params
      params.require(:chatroom).permit(:sessions)
    end
  end


