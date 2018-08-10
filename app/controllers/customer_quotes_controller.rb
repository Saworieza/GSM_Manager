class CustomerQuotesController < ApplicationController
  before_action :set_customer_quote, only: [:show, :edit, :update, :destroy]

  # GET /customer_quotes
  # GET /customer_quotes.json
  def index
    @customer_quotes = CustomerQuote.all
  end

  # GET /customer_quotes/1
  # GET /customer_quotes/1.json
  def show
  end

  # GET /customer_quotes/new
  def new
    @customer_quote = CustomerQuote.new
  end

  # GET /customer_quotes/1/edit
  def edit
  end

  # POST /customer_quotes
  # POST /customer_quotes.json
  def create
    @customer_quote = CustomerQuote.new(customer_quote_params)

    respond_to do |format|
      if @customer_quote.save
        format.html { redirect_to @customer_quote, notice: 'Customer quote was successfully created.' }
        format.json { render :show, status: :created, location: @customer_quote }
      else
        format.html { render :new }
        format.json { render json: @customer_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_quotes/1
  # PATCH/PUT /customer_quotes/1.json
  def update
    respond_to do |format|
      if @customer_quote.update(customer_quote_params)
        format.html { redirect_to @customer_quote, notice: 'Customer quote was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_quote }
      else
        format.html { render :edit }
        format.json { render json: @customer_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_quotes/1
  # DELETE /customer_quotes/1.json
  def destroy
    @customer_quote.destroy
    respond_to do |format|
      format.html { redirect_to customer_quotes_url, notice: 'Customer quote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_quote
      @customer_quote = CustomerQuote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_quote_params
      params.require(:customer_quote).permit(:name, :date, :amount, :customer_po_id)
    end
end
