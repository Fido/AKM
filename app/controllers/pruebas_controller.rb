class PruebasController < ApplicationController
  
  def index
    @pruebas = Prueba.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pruebas }
    end
  end

  def show
    @prueba = Prueba.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @prueba }
    end
  end

  def new
    @prueba = Prueba.new
    @fases = Fase.find(:all)
    #@aprendices = Aprendiz.find(:all)
   
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @prueba }
    end
  end

  def edit
    @prueba = Prueba.find(params[:id])
    @fases = Fase.find(:all)
    #@aprendices = Aprendiz.find(:all)
 
  end

  def create
    @prueba = Prueba.new(params[:prueba])

    respond_to do |format|
      if @prueba.save
        format.html { redirect_to(@prueba, :notice => 'Prueba was successfully created.') }
        format.xml  { render :xml => @prueba, :status => :created, :location => @prueba }
      else
        @fases = Fase.find(:all)
        #@aprendices = Aprendiz.find(:all)
      
        format.html { render :action => "new" }
        format.xml  { render :xml => @prueba.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @prueba = Prueba.find(params[:id])

    respond_to do |format|
      if @prueba.update_attributes(params[:prueba])
        format.html { redirect_to(@prueba, :notice => 'Prueba was successfully updated.') }
        format.xml  { head :ok }
      else
        @fases = Fase.find(:all)
        #@aprendices = Aprendiz.find(:all)
        
        format.html { render :action => "edit" }
        format.xml  { render :xml => @prueba.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @prueba = Prueba.find(params[:id])
    @prueba.destroy

    respond_to do |format|
      format.html { redirect_to(pruebas_url) }
      format.xml  { head :ok }
    end
  end
end
