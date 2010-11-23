class EquiposController < ApplicationController
  before_filter :find_equipo,
    :only => [:show, :edit, :update, :destroy]

  def index
    @equipos = Equipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @equipos }
    end
  end

  def show
    #@equipo = Equipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @equipo }
    end
  end

  def new
    @equipo = Equipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @equipo }
    end
  end

  def edit
    #@equipo = Equipo.find(params[:id])
  end

  def create
    @equipo = Equipo.new(params[:equipo])

    respond_to do |format|
      if @equipo.save
        flash[:notice] = 'El equipo se ha creado correctamente.'
        format.html { redirect_to(@equipo) }
        format.xml  { render :xml => @equipo, :status => :created, :location => @equipo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @equipo.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    #@equipo = Equipo.find(params[:id])

    respond_to do |format|
      if @equipo.update_attributes(params[:equipo])
        flash[:notice] = 'El equipo se ha actualizado'
        format.html { redirect_to(@equipo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @equipo.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    #@equipo = Equipo.find(params[:id])
    @equipo.destroy

    respond_to do |format|
      format.html { redirect_to(equipos_url) }
      format.xml  { head :ok }
    end
  end

  private
  def find_equipo
    @equipo = Equipo.find(params[:id])
  end

end
