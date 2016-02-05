class DownloadExcelsController < ApplicationController
  before_action :set_download_excel, only: [:show, :edit, :update, :destroy]

  # GET /download_excels
  # GET /download_excels.json
  def index
    @download_excels = DownloadExcel.all
	
    respond_to do |format|
	
    format.xls # send_file(file_name, filename:  "dataexcels.xls")  }
    format.html
    end
	byebug
  end

  # GET /download_excels/1
  # GET /download_excels/1.json
  def show
  end

  # GET /download_excels/new
  def new
    @download_excel = DownloadExcel.new
  end

  # GET /download_excels/1/edit
  def edit
  end

  # POST /download_excels
  # POST /download_excels.json
  def create
    @download_excel = DownloadExcel.new(download_excel_params)

    respond_to do |format|
      if @download_excel.save
        format.html { redirect_to @download_excel, notice: 'Download excel was successfully created.' }
        format.json { render :show, status: :created, location: @download_excel }
      else
        format.html { render :new }
        format.json { render json: @download_excel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /download_excels/1
  # PATCH/PUT /download_excels/1.json
  def update
    respond_to do |format|
      if @download_excel.update(download_excel_params)
        format.html { redirect_to @download_excel, notice: 'Download excel was successfully updated.' }
        format.json { render :show, status: :ok, location: @download_excel }
      else
        format.html { render :edit }
        format.json { render json: @download_excel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /download_excels/1
  # DELETE /download_excels/1.json
  def destroy
    @download_excel.destroy
    respond_to do |format|
      format.html { redirect_to download_excels_url, notice: 'Download excel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_download_excel
      @download_excel = DownloadExcel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def download_excel_params
      params.require(:download_excel).permit(:name, :fristname, :lastname, :age)
    end
end
