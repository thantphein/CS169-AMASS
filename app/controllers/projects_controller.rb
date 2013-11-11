class ProjectsController < ApplicationController
  impressionist actions: [:show]
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
    
    filter = params[:filter]
    by = params[:by]
  
    @projects = filter_projects(filter,by)
   
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end
  
  def filter_projects(filter, by)
    case filter
    when 'all'
      @projects = Project.all
    when 'Type'
      @projects = Project.select{|x| x.category.to_s.downcase == by.downcase}
    when 'Region'
      @projects = Project.select{|x| x.location.to_s.downcase == by.downcase}
    when 'Budget'
      @projects = Project.select{|x| x.budget.to_i.to_s.length == by.length}
    when 'Popular'
      @projects = Project.select{|x| x.impressionist_count >= 1}
    when 'New Posts'
      days = 24 * 60 * 60 * 7
      @projects = Project.select{|x| x.created_at + days >= Time.now}
    end
   
    return @projects
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
