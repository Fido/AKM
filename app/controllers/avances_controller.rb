class AvancesController < ApplicationController
  # GET /avances
  # GET /avances.xml
  def index
    @avances = Avance.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @avances }
    end
  end

  # GET /avances/1
  # GET /avances/1.xml
  def show
    @avance = Avance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @avance }
    end
  end

  # GET /avances/new
  # GET /avances/new.xml
  def new
    @avance = Avance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @avance }
    end
  end

  # GET /avances/1/edit
  def edit
    @avance = Avance.find(params[:id])
  end

  # POST /avances
  # POST /avances.xml
  def create
    @avance = Avance.new(params[:avance])

    respond_to do |format|
      if @avance.save
        format.html { redirect_to(@avance, :notice => 'Avance was successfully created.') }
        format.xml  { render :xml => @avance, :status => :created, :location => @avance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @avance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /avances/1
  # PUT /avances/1.xml
  def update
    @avance = Avance.find(params[:id])

    respond_to do |format|
      if @avance.update_attributes(params[:avance])
        format.html { redirect_to(@avance, :notice => 'Avance was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @avance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /avances/1
  # DELETE /avances/1.xml
  def destroy
    @avance = Avance.find(params[:id])
    @avance.destroy

    respond_to do |format|
      format.html { redirect_to(avances_url) }
      format.xml  { head :ok }
    end
  end
end
