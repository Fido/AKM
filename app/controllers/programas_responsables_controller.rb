class ProgramasResponsablesController < ApplicationController
  # GET /programas_responsables
  # GET /programas_responsables.xml
  def index
    @programas_responsables = ProgramasResponsable.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @programas_responsables }
    end
  end

  # GET /programas_responsables/1
  # GET /programas_responsables/1.xml
  def show
    @programas_responsable = ProgramasResponsable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @programas_responsable }
    end
  end

  # GET /programas_responsables/new
  # GET /programas_responsables/new.xml
  def new
    @programas_responsable = ProgramasResponsable.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @programas_responsable }
    end
  end

  # GET /programas_responsables/1/edit
  def edit
    @programas_responsable = ProgramasResponsable.find(params[:id])
  end

  # POST /programas_responsables
  # POST /programas_responsables.xml
  def create
    @programas_responsable = ProgramasResponsable.new(params[:programas_responsable])

    respond_to do |format|
      if @programas_responsable.save
        format.html { redirect_to(@programas_responsable, :notice => 'Programas responsable was successfully created.') }
        format.xml  { render :xml => @programas_responsable, :status => :created, :location => @programas_responsable }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @programas_responsable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /programas_responsables/1
  # PUT /programas_responsables/1.xml
  def update
    @programas_responsable = ProgramasResponsable.find(params[:id])

    respond_to do |format|
      if @programas_responsable.update_attributes(params[:programas_responsable])
        format.html { redirect_to(@programas_responsable, :notice => 'Programas responsable was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @programas_responsable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /programas_responsables/1
  # DELETE /programas_responsables/1.xml
  def destroy
    @programas_responsable = ProgramasResponsable.find(params[:id])
    @programas_responsable.destroy

    respond_to do |format|
      format.html { redirect_to(programas_responsables_url) }
      format.xml  { head :ok }
    end
  end
end
