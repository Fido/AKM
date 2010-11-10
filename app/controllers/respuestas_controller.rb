class RespuestasController < ApplicationController
 
  def index
    @respuestas = Respuesta.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @respuestas }
    end
  end

  def show
    @respuesta = Respuesta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @respuesta }
    end
  end

  def new
    @respuesta = Respuesta.new
    @preguntas = Pregunta.find(:all)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @respuesta }
    end
  end

  def edit
    @respuesta = Respuesta.find(params[:id])
    @preguntas = Pregunta.find(:all)
  end

  def create
    @respuesta = Respuesta.new(params[:respuesta])

    respond_to do |format|
      if @respuesta.save
        format.html { redirect_to(@respuesta, :notice => 'Respuesta was successfully created.') }
        format.xml  { render :xml => @respuesta, :status => :created, :location => @respuesta }
      else
        @preguntas = Pregunta.find(:all)
        format.html { render :action => "new" }
        format.xml  { render :xml => @respuesta.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @respuesta = Respuesta.find(params[:id])

    respond_to do |format|
      if @respuesta.update_attributes(params[:respuesta])
        format.html { redirect_to(@respuesta, :notice => 'Respuesta was successfully updated.') }
        format.xml  { head :ok }
      else
        @preguntas = Pregunta.find(:all)
        format.html { render :action => "edit" }
        format.xml  { render :xml => @respuesta.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @respuesta = Respuesta.find(params[:id])
    @respuesta.destroy

    respond_to do |format|
      format.html { redirect_to(respuestas_url) }
      format.xml  { head :ok }
    end
  end
end
