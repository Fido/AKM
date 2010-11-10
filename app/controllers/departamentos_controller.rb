class DepartamentosController < ApplicationController

  def index
    @departamentos = Departamento.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @departamentos }
    end
  end

  def show
    @departamento = Departamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @departamento }
    end
  end

  def new
    @departamento = Departamento.new
    @paises = Pais.find(:all)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @departamento }
    end
  end

  def edit
    @departamento = Departamento.find(params[:id])
    @paises = Pais.find(:all)
  end

  def create
    @departamento = Departamento.new(params[:departamento])

    respond_to do |format|
      if @departamento.save
        format.html { redirect_to(@departamento, :notice => 'Departamento was successfully created.') }
        format.xml  { render :xml => @departamento, :status => :created, :location => @departamento }
      else
        @paises = Pais.find(:all)
        format.html { render :action => "new" }
        format.xml  { render :xml => @departamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @departamento = Departamento.find(params[:id])

    respond_to do |format|
      if @departamento.update_attributes(params[:departamento])
        format.html { redirect_to(@departamento, :notice => 'Departamento was successfully updated.') }
        format.xml  { head :ok }
      else
        @paises = Pais.find(:all)
        format.html { render :action => "edit" }
        format.xml  { render :xml => @departamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @departamento = Departamento.find(params[:id])
    @departamento.destroy

    respond_to do |format|
      format.html { redirect_to(departamentos_url) }
      format.xml  { head :ok }
    end
  end
end
