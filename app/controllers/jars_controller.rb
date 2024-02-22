class JarsController < ApplicationController
  before_action :set_jar, only: %i[ show update destroy ]

  # GET /jars
  def index
    @jars = Jar.all

    render json: @jars
  end

  # GET /jars/1
  def show
    render json: @jar
  end

  # POST /jars
  def create
    @jar = Jar.new(jar_params)

    if @jar.save
      render json: @jar, status: :created, location: @jar
    else
      render json: @jar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jars/1
  def update
    if @jar.update(jar_params)
      render json: @jar
    else
      render json: @jar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jars/1
  def destroy
    @jar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jar
      @jar = Jar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jar_params
      params.require(:jar).permit(:display_name, :description, :submission_time, :design_type)
    end
end
