class FinalesController < ApplicationController
  # GET /finales
  # GET /finales.xml
  def index
    @finales = Final.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @finales }
    end
  end

  # GET /finales/1
  # GET /finales/1.xml
  def show
    @final = Final.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @final }
    end
  end

  # GET /finales/new
  # GET /finales/new.xml
  def new
    @final = Final.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @final }
    end
  end

  # GET /finales/1/edit
  def edit
    @final = Final.find(params[:id])
  end

  # POST /finales
  # POST /finales.xml
  def create
    @final = Final.new(params[:final])

    respond_to do |format|
      if @final.save
        format.html { redirect_to(@final, :notice => 'Final was successfully created.') }
        format.xml  { render :xml => @final, :status => :created, :location => @final }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @final.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /finales/1
  # PUT /finales/1.xml
  def update
    @final = Final.find(params[:id])

    respond_to do |format|
      if @final.update_attributes(params[:final])
        format.html { redirect_to(@final, :notice => 'Final was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @final.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /finales/1
  # DELETE /finales/1.xml
  def destroy
    @final = Final.find(params[:id])
    @final.destroy

    respond_to do |format|
      format.html { redirect_to(finales_url) }
      format.xml  { head :ok }
    end
  end
end
