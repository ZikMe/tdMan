class TagDefinitionsController < ApplicationController
  before_action :set_tag_definition, only: [:show, :edit, :update, :destroy]

  # GET /tag_definitions
  # GET /tag_definitions.json
  def index
    @tag_definitions = TagDefinition.all
  end

  # GET /tag_definitions/1
  # GET /tag_definitions/1.json
  def show
  end

  # GET /tag_definitions/new
  def new
    @tag_definition = TagDefinition.new
  end

  # GET /tag_definitions/1/edit
  def edit
  end

  # POST /tag_definitions
  # POST /tag_definitions.json
  def create
    @tag_definition = TagDefinition.new(tag_definition_params)

    respond_to do |format|
      if @tag_definition.save
        format.html { redirect_to @tag_definition, notice: 'Tag definition was successfully created.' }
        format.json { render :show, status: :created, location: @tag_definition }
      else
        format.html { render :new }
        format.json { render json: @tag_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_definitions/1
  # PATCH/PUT /tag_definitions/1.json
  def update
    respond_to do |format|
      if @tag_definition.update(tag_definition_params)
        format.html { redirect_to @tag_definition, notice: 'Tag definition was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_definition }
      else
        format.html { render :edit }
        format.json { render json: @tag_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_definitions/1
  # DELETE /tag_definitions/1.json
  def destroy
    @tag_definition.destroy
    respond_to do |format|
      format.html { redirect_to tag_definitions_url, notice: 'Tag definition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_definition
      @tag_definition = TagDefinition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_definition_params
      params.require(:tag_definition).permit(:name, :description, :entity_type, :tag_type, :structure, :subjective, :unique, :tag_type_range_id, :tag_target, :virtual, :virtual_target, :dev_status, :dev_pertinence, :td_version_id)
    end
end
