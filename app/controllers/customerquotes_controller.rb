class CustomerquotesController < ApplicationController
  before_action :set_customerquote, only: [:show, :edit, :update, :destroy]

  # GET /customerquotes
  # GET /customerquotes.json
  def index
    @customerquotes = Customerquote.all
  end

  # GET /customerquotes/1
  # GET /customerquotes/1.json
  def show
  end

  # GET /customerquotes/new
  def new
    @customerquote = Customerquote.new
  end

  # GET /customerquotes/1/edit
  def edit
  end

  # POST /customerquotes
  # POST /customerquotes.json
  def create
    @customerquote = Customerquote.new(customerquote_params)

    respond_to do |format|
      if @customerquote.save
        format.html { redirect_to @customerquote, notice: 'Customerquote was successfully created.' }
        format.json { render :show, status: :created, location: @customerquote }
      else
        format.html { render :new }
        format.json { render json: @customerquote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customerquotes/1
  # PATCH/PUT /customerquotes/1.json
  def update
    respond_to do |format|
      if @customerquote.update(customerquote_params)
        format.html { redirect_to @customerquote, notice: 'Customerquote was successfully updated.' }
        format.json { render :show, status: :ok, location: @customerquote }
      else
        format.html { render :edit }
        format.json { render json: @customerquote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customerquotes/1
  # DELETE /customerquotes/1.json
  def destroy
    @customerquote.destroy
    respond_to do |format|
      format.html { redirect_to customerquotes_url, notice: 'Customerquote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customerquote
      @customerquote = Customerquote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customerquote_params
      params.require(:customerquote).permit(:name, :date, :amount, :cost_center_id)
    end
end
