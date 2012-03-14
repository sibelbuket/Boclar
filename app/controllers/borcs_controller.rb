class BorcsController < ApplicationController
  # GET /borcs
  # GET /borcs.json

  before_filter :set_global_vars
  def set_global_vars
    if !current_user
      redirect_to root_url 
      return
    end

    @username = current_user.name
    @uyeid = current_user.uid
  end

  def index
    @borcs = Borc.where(:UyeId => current_user.uid).all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @borcs }
    end
  end

  # GET /borcs/1
  # GET /borcs/1.json
  def show
    @borc = Borc.where(:UyeId => current_user.uid).find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @borc }
    end
  end

  # GET /borcs/new
  # GET /borcs/new.json
  def new
    @borc = Borc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @borc }
    end
  end

  # GET /borcs/1/edit
  def edit
    @borc = Borc.find(params[:id])
  end

  # POST /borcs
  # POST /borcs.json
  def create
    @borc = Borc.new(params[:borc])

    respond_to do |format|
      if @borc.save
        format.html { redirect_to @borc, notice: 'Borc was successfully created.' }
        format.json { render json: @borc, status: :created, location: @borc }
      else
        format.html { render action: "new" }
        format.json { render json: @borc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /borcs/1
  # PUT /borcs/1.json
  def update
    @borc = Borc.find(params[:id])

    respond_to do |format|
      if @borc.update_attributes(params[:borc])
        format.html { redirect_to @borc, notice: 'Borc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @borc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /borcs/1
  # DELETE /borcs/1.json
  def destroy
    @borc = Borc.find(params[:id])
    @borc.destroy

    respond_to do |format|
      format.html { redirect_to borcs_url }
      format.json { head :no_content }
    end
  end
end
