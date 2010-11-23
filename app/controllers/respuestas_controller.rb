class RespuestasController < ApplicationController
  before_filter :find_pregunta_and_respuesta 

  def index
    @respuestas = @pregunta.respuestas.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @respuestas }
    end
  end

  def show
    #@respuesta = Respuesta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @respuesta }
    end
  end

  def new
    @respuesta = Respuesta.new
    #@preguntas = Pregunta.find(:all)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @respuesta }
    end
  end

  def edit
    #@respuesta = Respuesta.find(params[:id])
    #@preguntas = Pregunta.find(:all)
  end

  def create
    @respuesta = Respuesta.new(params[:respuesta])
    @respuesta.pregunta_id = @pregunta_id

    respond_to do |format|
      if @respuesta.save
        flash[:notice] = 'la Respuesta se ha creado correctamente.'
        format.html { redirect_to pregunta_respuestas_path(@pregunta) }
        format.xml  { render :xml => @respuesta, :status => :created, :location => @respuesta }
      else
        #@preguntas = Pregunta.find(:all)
        format.html { render :action => "new" }
        format.xml  { render :xml => @respuesta.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    #@respuesta = Respuesta.find(params[:id])

    respond_to do |format|
      if @respuesta.update_attributes(params[:respuesta])
        flash[:notice] = 'Respuesta actualizada.'
        format.html { redirect_to pregunta_respuestas_path(@pregunta) }
        format.xml  { head :ok }
      else
        #@preguntas = Pregunta.find(:all)
        format.html { render :action => "edit" }
        format.xml  { render :xml => @respuesta.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    #@respuesta = Respuesta.find(params[:id])
    @respuesta.destroy

    respond_to do |format|
      format.html { redirect_to pregunta_respuestas_path(@pregunta) }
      format.xml  { head :ok }
    end
  end

   protected
    def find_pregunta_and_respuesta
      @pregunta = Pregunta.find(params[:pregunta_id])
      @respuesta = Respuesta.find(params[:id]) if params[:id]
    end
end
