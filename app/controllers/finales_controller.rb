class FinalesController < ApplicationController
  layout false


  def index
    @equipos = Equipo.all
    Final.delete_all
    @finales = Final.find_by_sql "select r.equipo_id, sum(p.puntaje) totales
    from resultados r, preguntas p, respuestas t
    where t.id = r.respuesta_id
    and t.pregunta_id = p.id
    and t.letra = p.buena
    group by r.equipo_id"
    @finales.each do |f|
      Final.create(:totales => f.totales, :equipo_id => f.equipo_id)
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @finales }
    end
  end

  def show
    @final = Final.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @final }
    end
  end

  def new
    @final = Final.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @final }
    end
  end

  def edit
    @final = Final.find(params[:id])
  end

  def create
    @final = Final.new(params[:final])

    respond_to do |format|
      if @final.save
        flash[:notice] = 'Final creada correctamente.'
        format.html { redirect_to(@final) }
        format.xml  { render :xml => @final, :status => :created, :location => @final }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @final.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @final = Final.find(params[:id])

    respond_to do |format|
      if @final.update_attributes(params[:final])
        flash[:notice] = 'Final Actualizada.'
        format.html { redirect_to(@final, :notice => 'Final was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @final.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @final = Final.find(params[:id])
    @final.destroy

    respond_to do |format|
      format.html { redirect_to(finales_url) }
      format.xml  { head :ok }
    end
  end
end
