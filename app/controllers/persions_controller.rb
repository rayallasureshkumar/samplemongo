class PersionsController < ApplicationController
  # GET /persions
  # GET /persions.json
  def index
    @persions = Persion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @persions }
    end
  end

  # GET /persions/1
  # GET /persions/1.json
  def show
    @persion = Persion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @persion }
    end
  end

  # GET /persions/new
  # GET /persions/new.json
  def new
    @persion = Persion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @persion }
    end
  end

  # GET /persions/1/edit
  def edit
    @persion = Persion.find(params[:id])
  end

  # POST /persions
  # POST /persions.json
  def create
    @persion = Persion.new(params[:persion])

    respond_to do |format|
      if @persion.save
        format.html { redirect_to @persion, notice: 'Persion was successfully created.' }
        format.json { render json: @persion, status: :created, location: @persion }
      else
        format.html { render action: "new" }
        format.json { render json: @persion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /persions/1
  # PUT /persions/1.json
  def update
    @persion = Persion.find(params[:id])

    respond_to do |format|
      if @persion.update_attributes(params[:persion])
        format.html { redirect_to @persion, notice: 'Persion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @persion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /persions/1
  # DELETE /persions/1.json
  def destroy
    @persion = Persion.find(params[:id])
    @persion.destroy

    respond_to do |format|
      format.html { redirect_to persions_url }
      format.json { head :no_content }
    end
  end
end
