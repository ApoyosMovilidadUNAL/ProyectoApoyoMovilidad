class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  # GET /documents
  # GET /documents.json
  def index
    @student = Student.find_by(email: current_user.email)
    @documents = Document.all.paginate(:page => params[:page], :per_page => 20)
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
    @student = Student.find_by(email: current_user.email)
    #@post = Document.find(params[:id])
    #render json: @post
  end

  # GET /documents/new
  def new
    @document = Document.new    
    @request = Request.find(params[:request])
  end

  # GET /documents/1/edit
  def edit
  end

  # POST /documents
  # POST /documents.json
  def create
    @document = Document.new(document_params)
    @request = @document.request

    respond_to do |format|
      if @document.save
        format.html { redirect_to student_request_path(@request), notice: 'Document was successfully created.' }
        format.json { render :show, status: :created, location: @document }
      else
        format.html { render :new }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to [:student, @document], notice: 'Document was successfully updated.' }
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @request = @document.request
    @document.destroy
    respond_to do |format|
      format.html { redirect_to student_request_path(@request), notice: 'Document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:name, :route, :request_id)
    end
end
