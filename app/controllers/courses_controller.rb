# Pensino core
# Copyright (C) 2011 by pensino.com.br
#
# This program isn't free software
# ------------------------------------------------------------------------------
#
class CoursesController < ApplicationController


  # GET /courses
  # GET /courses.xml                                               HTML and AJAX
  # ----------------------------------------------------------------------------
  def index

    @courses = Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @courses }
    end
  end


  # GET /courses/1
  # GET /courses/1.xml                                             HTML and AJAX
  # ----------------------------------------------------------------------------
  def show

    @course = Course.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @course }
    end
  end


  # GET /courses/new
  # GET /courses/new.xml                                           HTML and AJAX
  # ----------------------------------------------------------------------------
  def new

    @course = Course.new
    3.times { @course.grids.build }

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @course }
    end
  end


  # GET /courses/1/edit                                                     HTML
  # ----------------------------------------------------------------------------
  def edit
    @course = Course.find(params[:id])
  end


  # POST /courses
  # POST /courses.xml                                              HTML and AJAX
  # ----------------------------------------------------------------------------
  def create

    @course = Course.new(params[:course])

    respond_to do |format|
      if @course.save
        format.html { redirect_to(@course, :notice => 'Course was successfully created.') }
        format.xml  { render :xml => @course, :status => :created, :location => @course }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @course.errors, :status => :unprocessable_entity }
      end
    end
  end


  # PUT /courses/1
  # PUT /courses/1.xml                                             HTML and AJAX
  # ----------------------------------------------------------------------------
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to(@course, :notice => 'Course was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @course.errors, :status => :unprocessable_entity }
      end
    end
  end


  # DELETE /courses/1
  # DELETE /courses/1.xml                                          HTML and AJAX
  # ----------------------------------------------------------------------------
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to(courses_url) }
      format.xml  { head :ok }
    end
  end


  # PUT /course/1/generate_lessons?grid=1                          HTML and AJAX
  # ----------------------------------------------------------------------------
  def generate_lessons

    grid = Grid.find(params[:grid])
    grid.time_table.generate_lessons

    grid.generate_lesson = 1
    grid.save

    @course = Course.find(params[:id])
    redirect_to(@course, :notice => 'Generate Lesson.')
  end
end

