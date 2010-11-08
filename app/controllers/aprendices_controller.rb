#include ChainSelectsHelper

class AprendicesController < ApplicationController

  def index
    @aprendices = Aprendiz.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aprendices }
    end
  end

 
  def show
    @aprendiz = Aprendiz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aprendiz }
    end
  end

  def new
    @aprendiz = Aprendiz.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aprendiz }
    end
  end

  def edit
    @aprendiz = Aprendiz.find(params[:id])
  end

  def create
    @aprendiz = Aprendiz.new(params[:aprendiz])
    #aprendiz.municipio_id = params[:chain_select][:municipio]


    respond_to do |format|
      if @aprendiz.save
        format.html { redirect_to(@aprendiz, :notice => 'Aprendiz was successfully created.') }
        format.xml  { render :xml => @aprendiz, :status => :created, :location => @aprendiz }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @aprendiz.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @aprendiz = Aprendiz.find(params[:id])

    respond_to do |format|
      if @aprendiz.update_attributes(params[:aprendiz])
        format.html { redirect_to(@aprendiz, :notice => 'Aprendiz was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aprendiz.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @aprendiz = Aprendiz.find(params[:id])
    @aprendiz.destroy

    respond_to do |format|
      format.html { redirect_to(aprendices_url) }
      format.xml  { head :ok }
    end
  end
end
