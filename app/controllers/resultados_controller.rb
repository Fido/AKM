class ResultadosController < ApplicationController
  # GET /resultados
  # GET /resultados.xml
  def index
    @resultados = Resultado.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @resultados }
    end
  end

  # GET /resultados/1
  # GET /resultados/1.xml
  def show
    @resultado = Resultado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @resultado }
    end
  end

  # GET /resultados/new
  # GET /resultados/new.xml
  def new
    @resultado = Resultado.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @resultado }
    end
  end

  # GET /resultados/1/edit
  def edit
    @resultado = Resultado.find(params[:id])
  end

  # POST /resultados
  # POST /resultados.xml
  def create
    @resultado = Resultado.new(params[:resultado])

    respond_to do |format|
      if @resultado.save
        format.html { redirect_to(@resultado, :notice => 'Resultado was successfully created.') }
        format.xml  { render :xml => @resultado, :status => :created, :location => @resultado }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @resultado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /resultados/1
  # PUT /resultados/1.xml
  def update
    @resultado = Resultado.find(params[:id])

    respond_to do |format|
      if @resultado.update_attributes(params[:resultado])
        format.html { redirect_to(@resultado, :notice => 'Resultado was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @resultado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /resultados/1
  # DELETE /resultados/1.xml
  def destroy
    @resultado = Resultado.find(params[:id])
    @resultado.destroy

    respond_to do |format|
      format.html { redirect_to(resultados_url) }
      format.xml  { head :ok }
    end
  end
end
