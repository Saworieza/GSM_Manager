class CustomerposController < ApplicationController
  before_action :set_customerpo, only: [:show, :edit, :update, :destroy]

  # GET /customerpos
  # GET /customerpos.json
  def index
    @customerpos = Customerpo.all
  end

  # GET /customerpos/1
  # GET /customerpos/1.json
  def show
  end

  # GET /customerpos/new
  def new
    @customerpo = Customerpo.new
  end

  # GET /customerpos/1/edit
  def edit
  end

  # POST /customerpos
  # POST /customerpos.json
  def create
    @customerpo = Customerpo.new(customerpo_params)

    respond_to do |format|
      if @customerpo.save
        format.html { redirect_to @customerpo, notice: 'Customerpo was successfully created.' }
        format.json { render :show, status: :created, location: @customerpo }
      else
        format.html { render :new }
        format.json { render json: @customerpo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customerpos/1
  # PATCH/PUT /customerpos/1.json
  def update
    respond_to do |format|
      if @customerpo.update(customerpo_params)
        format.html { redirect_to @customerpo, notice: 'Customerpo was successfully updated.' }
        format.json { render :show, status: :ok, location: @customerpo }
      else
        format.html { render :edit }
        format.json { render json: @customerpo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customerpos/1
  # DELETE /customerpos/1.json
  def destroy
    @customerpo.destroy
    respond_to do |format|
      format.html { redirect_to customerpos_url, notice: 'Customerpo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customerpo
      @customerpo = Customerpo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customerpo_params
      params.require(:customerpo).permit(:number, :date, :amount, :customerquote_id, :site_id, :scope_id)
    end
end
