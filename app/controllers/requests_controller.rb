class RequestsController < ApplicationController
  before_action :set_user_info
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
    @student = Student.find_by(stu_email: current_user.email)
    #@post = Request.find(params[:id])
    #render json: @post
  end

  # GET /requests/new
  def new
    @student = Student.find_by(stu_email: current_user.email)
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    @student = Student.find_by(stu_email: current_user.email)
    @request = Request.new(request_params)

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    def set_user_info
      @student = Student.find_by(stu_email: current_user.email)
      if @student.stu_rol == 1
        @requests = Request.all.paginate(:page => params[:page], :per_page => 20)  
      else
        @requests = Request.all.where(student_id: @student.id).paginate(:page => params[:page], :per_page => 20)
      end
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      if params[:request]
        params.require(:request).permit(:req_estado, :req_descripcion, :student_id, :professor_id)
      else
        params.permit(:req_estado, :req_descripcion, :student_id, :professor_id)
      end
    end
end
