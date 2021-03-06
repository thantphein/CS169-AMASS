class ProjectsController < ApplicationController
  impressionist actions: [:show]
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
    
    filter = params[:filter]
    by = params[:by]
    
    if filter == 'all' or filter == 'New Posts'
      @projects = filter_projects(filter)
    elsif filter == 'Type' or filter == 'Region' or filter == 'Budget' or filter == 'Popular'
      @projects = filter_projects_by(filter, by)
    end
   
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end
  
  def filter_projects(filter)
    if filter == 'all'
      return Project.all
    else
      return Project.select{|x| x.created_at + 604800 >= Time.now}
    end
  end

  def filter_projects_by(filter, by)
    case filter
    when 'Type'
      return Project.select{|x| x.category.to_s.downcase == by.downcase}
    when 'Region'
      return Project.select{|x| x.location.to_s.downcase == by.downcase}
    when 'Budget'
      return Project.select{|x| x.budget.to_i.to_s.length == by.length}
    when 'Popular'
      return Project.select{|x| x.impressionist_count >= 1}
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
    @project.impressionist_count(:filter=>:session_hash)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end
=begin
  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(params[:project])

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end
=end
end
