class InstructoresController < ApplicationController
  # GET /instructores
  # GET /instructores.xml
  def index
    @instructores = Instructor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @instructores }
    end
  end

  # GET /instructores/1
  # GET /instructores/1.xml
  def show
    @instructor = Instructor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @instructor }
    end
  end

  # GET /instructores/new
  # GET /instructores/new.xml
  def new
    @instructor = Instructor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @instructor }
    end
  end

  # GET /instructores/1/edit
  def edit
    @instructor = Instructor.find(params[:id])
  end

  # POST /instructores
  # POST /instructores.xml
  def create
    @instructor = Instructor.new(params[:instructor])

    respond_to do |format|
      if @instructor.save
        format.html { redirect_to(@instructor, :notice => 'Instructor was successfully created.') }
        format.xml  { render :xml => @instructor, :status => :created, :location => @instructor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @instructor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /instructores/1
  # PUT /instructores/1.xml
  def update
    @instructor = Instructor.find(params[:id])

    respond_to do |format|
      if @instructor.update_attributes(params[:instructor])
        format.html { redirect_to(@instructor, :notice => 'Instructor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @instructor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /instructores/1
  # DELETE /instructores/1.xml
  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy

    respond_to do |format|
      format.html { redirect_to(instructores_url) }
      format.xml  { head :ok }
    end
  end
end
