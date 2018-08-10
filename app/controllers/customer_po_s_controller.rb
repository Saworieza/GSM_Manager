class CustomerPOsController < ApplicationController
  before_action :set_customer_po, only: [:show, :edit, :update, :destroy]

  # GET /customer_pos
  # GET /customer_pos.json
  def index
    @customer_pos = CustomerPo.all
  end

  # GET /customer_pos/1
  # GET /customer_pos/1.json
  def show
  end

  # GET /customer_pos/new
  def new
    @customer_po = CustomerPo.new
  end

  # GET /customer_pos/1/edit
  def edit
  end

  # POST /customer_pos
  # POST /customer_pos.json
  def create
    @customer_po = CustomerPo.new(customer_po_params)

    respond_to do |format|
      if @customer_po.save
        format.html { redirect_to @customer_po, notice: 'Customer po was successfully created.' }
        format.json { render :show, status: :created, location: @customer_po }
      else
        format.html { render :new }
        format.json { render json: @customer_po.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_pos/1
  # PATCH/PUT /customer_pos/1.json
  def update
    respond_to do |format|
      if @customer_po.update(customer_po_params)
        format.html { redirect_to @customer_po, notice: 'Customer po was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_po }
      else
        format.html { render :edit }
        format.json { render json: @customer_po.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_pos/1
  # DELETE /customer_pos/1.json
  def destroy
    @customer_po.destroy
    respond_to do |format|
      format.html { redirect_to customer_pos_url, notice: 'Customer po was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_po
      @customer_po = CustomerPo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_po_params
      params.require(:customer_po).permit(:Date, :number, :cost_center_id)
    end
end
