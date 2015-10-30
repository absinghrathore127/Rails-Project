class AccountActivationsController < ApplicationController
  before_action :set_account_activation, only: [:show, :edit, :update, :destroy]

  # GET /account_activations
  # GET /account_activations.json
  def index
    @account_activations = AccountActivation.all
  end

  # GET /account_activations/1
  # GET /account_activations/1.json
  def show
  end

  # GET /account_activations/new
  def new
    @account_activation = AccountActivation.new
  end

  # GET /account_activations/1/edit
  def edit
  end

  # POST /account_activations
  # POST /account_activations.json
  def create
    @account_activation = AccountActivation.new(account_activation_params)

    respond_to do |format|
      if @account_activation.save
        format.html { redirect_to @account_activation, notice: 'Account activation was successfully created.' }
        format.json { render :show, status: :created, location: @account_activation }
      else
        format.html { render :new }
        format.json { render json: @account_activation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_activations/1
  # PATCH/PUT /account_activations/1.json
  def update
    respond_to do |format|
      if @account_activation.update(account_activation_params)
        format.html { redirect_to @account_activation, notice: 'Account activation was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_activation }
      else
        format.html { render :edit }
        format.json { render json: @account_activation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_activations/1
  # DELETE /account_activations/1.json
  def destroy
    @account_activation.destroy
    respond_to do |format|
      format.html { redirect_to account_activations_url, notice: 'Account activation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_activation
      @account_activation = AccountActivation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_activation_params
      params[:account_activation]
    end
end
