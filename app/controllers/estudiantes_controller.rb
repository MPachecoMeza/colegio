class EstudiantesController < ApplicationController
  def index
    @ests = Estudiante.all
  end

  def new
    @est = Estudiante.new
  end

  def create
  @est = Estudiante.new(estudiante_params)
    if @est.save
      redirect_to estudiante_path(@est)
    else
      render :new
    end
  end

  def show
    @est = Estudiante.find(params[:id])
  end

  def edit
    @est = Estudiante.find(params[:id])
  end

  def update
    @est = Estudiante.find(params[:id])
    if @est.update(estudiante_params)
      redirect_to estudiante_path(@est)
    else
      render :edit
    end
  end

  def destroy
    @est = Estudiante.find(params[:id])
    @est.destroy
    redirect_to estudiantes_path
  end

  private

  def estudiante_params
    params.require(:estudiante).permit(:nombre, :apellido, :documento, :fecha_nac, :curso_id)
  end
end
