class MattersController < ApplicationController
  # GET /matters
  # GET /matters.xml
  def index
    @matters = Matter.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @matters }
    end
  end

  # GET /matters/1
  # GET /matters/1.xml
  def show
    @matter = Matter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @matter }
    end
  end

  # GET /matters/new
  # GET /matters/new.xml
  def new
    @matter = Matter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @matter }
    end
  end

  # GET /matters/1/edit
  def edit
    @matter = Matter.find(params[:id])
  end

  # POST /matters
  # POST /matters.xml
  def create
    @matter = Matter.new(params[:matter])

    respond_to do |format|
      if @matter.save
        format.html { redirect_to(@matter, :notice => 'Matter was successfully created.') }
        format.xml  { render :xml => @matter, :status => :created, :location => @matter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @matter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /matters/1
  # PUT /matters/1.xml
  def update
    @matter = Matter.find(params[:id])

    respond_to do |format|
      if @matter.update_attributes(params[:matter])
        format.html { redirect_to(@matter, :notice => 'Matter was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @matter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /matters/1
  # DELETE /matters/1.xml
  def destroy
    @matter = Matter.find(params[:id])
    @matter.destroy

    respond_to do |format|
      format.html { redirect_to(matters_url) }
      format.xml  { head :ok }
    end
  end
end
