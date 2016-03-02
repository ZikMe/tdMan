class TdVersionsController < ApplicationController
  before_action :set_td_version, only: [:show, :edit, :update, :destroy]

  # GET /td_versions
  # GET /td_versions.json
  def index
    @td_versions = TdVersion.all
  end

  # GET /td_versions/1
  # GET /td_versions/1.json
  def show
  end

  # GET /td_versions/new
  def new
    @td_version = TdVersion.new
  end

  # GET /td_versions/1/edit
  def edit
  end

  # POST /td_versions
  # POST /td_versions.json
  def create
    @td_version = TdVersion.new(td_version_params)

    respond_to do |format|
      if @td_version.save
        format.html { redirect_to @td_version, notice: 'Td version was successfully created.' }
        format.json { render :show, status: :created, location: @td_version }
      else
        format.html { render :new }
        format.json { render json: @td_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /td_versions/1
  # PATCH/PUT /td_versions/1.json
  def update
    respond_to do |format|
      if @td_version.update(td_version_params)
        format.html { redirect_to @td_version, notice: 'Td version was successfully updated.' }
        format.json { render :show, status: :ok, location: @td_version }
      else
        format.html { render :edit }
        format.json { render json: @td_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /td_versions/1
  # DELETE /td_versions/1.json
  def destroy
    @td_version.destroy
    respond_to do |format|
      format.html { redirect_to td_versions_url, notice: 'Td version was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_td_version
      @td_version = TdVersion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def td_version_params
      params.require(:td_version).permit(:name, :comment)
    end
end
