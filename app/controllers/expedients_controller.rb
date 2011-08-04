class ExpedientsController < ApplicationController
  # GET /expedients
  # GET /expedients.xml
  def index
    @expedients = Expedient.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @expedients }
    end
  end

  # GET /expedients/1
  # GET /expedients/1.xml
  def show
    @expedient = Expedient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @expedient }
    end
  end

  # GET /expedients/new
  # GET /expedients/new.xml
  def new
    @expedient = Expedient.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @expedient }
    end
  end

  # GET /expedients/1/edit
  def edit
    @expedient = Expedient.find(params[:id])
  end

  # POST /expedients
  # POST /expedients.xml
  def create
    @expedient = Expedient.new(params[:expedient])

    respond_to do |format|
      if @expedient.save
        format.html { redirect_to(@expedient, :notice => 'Expediente criado com sucesso.') }
        format.xml  { render :xml => @expedient, :status => :created, :location => @expedient }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @expedient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /expedients/1
  # PUT /expedients/1.xml
  def update
    @expedient = Expedient.find(params[:id])

    respond_to do |format|
      if @expedient.update_attributes(params[:expedient])
        format.html { redirect_to(@expedient, :notice => 'Expediente alterado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @expedient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /expedients/1
  # DELETE /expedients/1.xml
  def destroy
    @expedient = Expedient.find(params[:id])
    @expedient.destroy

    respond_to do |format|
      format.html { redirect_to(expedients_url) }
      format.xml  { head :ok }
    end
  end
end

