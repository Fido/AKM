class ResultadosController < ApplicationController

  def index
    #@resultados = Resultado.all
    @equipos = Equipo.all
    @preguntas = Pregunta.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @resultados }
    end
  end

  def show
    @resultado = Resultado.find(params[:id])
    @pregunta = Pregunta.find(@resultado.pregunta_id)
    @equipo = Equipo.find(@resultado.equipo_id)
    @respuestas = @pregunta.respuestas.find(:all)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @resultado }
    end
  end

  def new
    @resultado = Resultado.new
    @equipos = Equipo.all
    @preguntas = Pregunta.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @resultado }
    end
  end

  def edit
    @resultado = Resultado.find(params[:id])
  end

  def create
    @resultado = Resultado.new(params[:resultado])
    @resultado.pregunta_id = params[:pregunta][:pregunta_id]
    @pregunta = Pregunta.find(params[:pregunta][:pregunta_id])
    @pregunta.update_attributes(:estado => 1)
    respond_to do |format|
      if @resultado.save
        flash[:notice] = 'Ok Jugada.'
        format.html { redirect_to(@resultado) }
        format.xml  { render :xml => @resultado, :status => :created, :location => @resultado }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @resultado.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @resultado = Resultado.find(params[:id])

    respond_to do |format|
      if @resultado.update_attributes(params[:resultado])
        flash[:notice] = 'Resultado actualizado.'
        format.html { redirect_to(@resultado) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @resultado.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @resultado = Resultado.find(params[:id])
    @resultado.destroy

    respond_to do |format|
      format.html { redirect_to(resultados_url) }
      format.xml  { head :ok }
    end
  end

  def jugar
     begin
        @resultado = Resultado.new
        @pregunta = Pregunta.find(params[:pregunta_id])
        @equipo = Equipo.find(params[:equipo][:equipo_id])
        @respuestas = Respuesta.find(:all, :conditions => [ "pregunta_id = ?",
        @pregunta.id])
      rescue
         flash[:notice] = 'Error: debe Seleccionar Equipo....'
         @equipos = Equipo.all
         @preguntas = Pregunta.all
         render :action => :jugar
     end
 end

def inicializar
end

 def blanquear
    Pregunta.update_all("estado=0")
    Resultado.delete_all
    redirect_to resultados_path
end


end
