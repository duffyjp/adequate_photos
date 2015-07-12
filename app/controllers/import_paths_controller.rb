class ImportPathsController < ApplicationController
  before_action :set_import_path, only: [:show, :edit, :update, :destroy]

  # GET /import_paths
  def index
    @import_paths = ImportPath.all
  end

  # GET /import_paths/1
  def show
  end

  # GET /import_paths/new
  def new
    @import_path = ImportPath.new
  end

  # GET /import_paths/1/edit
  def edit
  end

  # POST /import_paths
  def create
    @import_path = ImportPath.new(import_path_params)

    if @import_path.save
      redirect_to @import_path, notice: 'Import path was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /import_paths/1
  def update
    if @import_path.update(import_path_params)
      redirect_to @import_path, notice: 'Import path was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /import_paths/1
  def destroy
    @import_path.destroy
    redirect_to import_paths_url, notice: 'Import path was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import_path
      @import_path = ImportPath.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def import_path_params
      params.require(:import_path).permit(:path_name, :file_count, :total_size)
    end
end
