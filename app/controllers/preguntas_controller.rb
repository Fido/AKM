class PreguntasController < ApplicationController
 
  def index
    @preguntas = Pregunta.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @preguntas }
    end
  end

  def show
    @pregunta = Pregunta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pregunta }
    end
  end

  def new
    @pregunta = Pregunta.new
    @pruebas = Prueba.find(:all)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pregunta }
    end
  end

  def edit
    @pregunta = Pregunta.find(params[:id])
    @pruebas = Prueba.find(:all)
  end

  def create
    @pregunta = Pregunta.new(params[:pregunta])

    respond_to do |format|
      if @pregunta.save
        format.html { redirect_to(@pregunta, :notice => 'Pregunta was successfully created.') }
        format.xml  { render :xml => @pregunta, :status => :created, :location => @pregunta }
      else
        @pruebas = Prueba.find(:all)
        format.html { render :action => "new" }
        format.xml  { render :xml => @pregunta.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @pregunta = Pregunta.find(params[:id])

    respond_to do |format|
      if @pregunta.update_attributes(params[:pregunta])
        format.html { redirect_to(@pregunta, :notice => 'Pregunta was successfully updated.') }
        format.xml  { head :ok }
      else
        @pruebas = Prueba.find(:all)
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pregunta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /preguntas/1
  # DELETE /preguntas/1.xml
  def destroy
    @pregunta = Pregunta.find(params[:id])
    @pregunta.destroy

    respond_to do |format|
      format.html { redirect_to(preguntas_url) }
      format.xml  { head :ok }
    end
  end
end
