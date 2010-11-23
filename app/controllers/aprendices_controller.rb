class AprendicesController < ApplicationController
 
  def index
    @equipo = Equipo.find(params[:equipo_id])
    @aprendices = @equipo.aprendices

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aprendices }
    end
  end

 
  def show
    @equipo = Equipo.find(params[:equipo_id])
    @aprendiz = @equipo.aprendices.find(params[:id])
    #@aprendiz = Aprendiz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aprendiz }
    end
  end

  def new
    @equipo = Equipo.find(params[:equipo_id])
    @aprendiz = @equipo.aprendices.build #(params[:aprendiz])

    #@aprendiz = Aprendiz.new
    @municipios = Municipio.find(:all)
    @programas = Programa.find(:all)
    #@equipos = Equipo.find(:all)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aprendiz }
    end
  end

  def edit
    @equipo = Equipo.find(params[:equipo_id])
    @aprendiz = @equipo.aprendices.find(params[:id])
    #@aprendiz = Aprendiz.find(params[:id])
    #@municipios = Municipio.find(:all)
    #@programas = Programa.find(:all)
    #@equipos = Equipo.find(:all)
  end

  def create
    @equipo = Equipo.find(params[:equipo_id])
    @aprendiz = @equipo.aprendices.build(params[:aprendiz])
    #@aprendiz = Aprendiz.new(params[:aprendiz])
    #@aprendiz.equipo_id = @equipo.id

    respond_to do |format|
      if @aprendiz.save
        flash[:notice] = 'El Aprendiz se ha creado correctamente.'
        format.html { redirect_to equipo_aprendiz_url(@equipo, @aprendiz) }
        format.xml  { render :xml => @aprendiz, :status => :created, :location => @aprendiz }
      else
        @municipios = Municipio.find(:all)
        @programas = Programa.find(:all)
        #@equipos = Equipo.find(:all)
        format.html { render :action => "new" }
        format.xml  { render :xml => @aprendiz.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @equipo = Equipo.find(params[:equipo_id])
    @aprendiz = @equipo.aprendices.build(params[:id])
    #@aprendiz = Aprendiz.find(params[:id])

    respond_to do |format|
      if @aprendiz.update_attributes(params[:aprendiz])
        flash[:notice] = 'El participante se ha actualizado'
        format.html { redirect_to equipo_aprendices_path(@equipo) }
        format.xml  { head :ok }
      else
        @municipios = Municipio.find(:all)
        @programas = Programa.find(:all)
        #@equipos = Equipo.find(:all)
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aprendiz.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @equipo = Equipo.find(params[:equipo_id])
    @aprendiz = Aprendiz.find(params[:id])
    #@aprendiz = Aprendiz.find(params[:id])
    @aprendiz.destroy

    respond_to do |format|
      format.html { redirect_to equipo_aprendices_path @equipo }
      format.xml  { head :ok }
    end
  end

 end
