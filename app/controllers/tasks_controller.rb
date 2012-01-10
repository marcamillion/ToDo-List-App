class TasksController < ApplicationController
  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = @list.tasks

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @tasks }
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = @list.tasks.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
		@list = List.find(params[:list_id])
    @task = @list.tasks.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @task = @list.tasks.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = @list.tasks.new(params[:task])

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, :notice => 'Task was successfully created.' }
        format.json { render :json => @task, :status => :created, :location => @task }
      else
        format.html { render :action => "new" }
        format.json { render :json => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @task = @list.tasks.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to list_tasks_url(@list), :notice => 'Task was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = @list.tasks.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to list_tasks_url(@list), :notice => "Task deleted." }
      format.json { head :ok }
    end
  end
end
