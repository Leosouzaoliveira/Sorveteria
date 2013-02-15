class SorvetesController < ApplicationController
  # GET /sorvetes
  # GET /sorvetes.json
  def index
    @sorvetes = Sorvete.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sorvetes }
    end
  end

  # GET /sorvetes/1
  # GET /sorvetes/1.json
  def show
    @sorvete = Sorvete.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sorvete }
    end
  end

  # GET /sorvetes/new
  # GET /sorvetes/new.json
  def new
    @sorvete = Sorvete.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sorvete }
    end
  end

  # GET /sorvetes/1/edit
  def edit
    @sorvete = Sorvete.find(params[:id])
  end

  # POST /sorvetes
  # POST /sorvetes.json
  def create
    @sorvete = Sorvete.new(params[:sorvete])

    respond_to do |format|
      if @sorvete.save
        format.html { redirect_to @sorvete, notice: 'Sorvete was successfully created.' }
        format.json { render json: @sorvete, status: :created, location: @sorvete }
      else
        format.html { render action: "new" }
        format.json { render json: @sorvete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sorvetes/1
  # PUT /sorvetes/1.json
  def update
    @sorvete = Sorvete.find(params[:id])

    respond_to do |format|
      if @sorvete.update_attributes(params[:sorvete])
        format.html { redirect_to @sorvete, notice: 'Sorvete was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sorvete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sorvetes/1
  # DELETE /sorvetes/1.json
  def destroy
    @sorvete = Sorvete.find(params[:id])
    @sorvete.destroy

    respond_to do |format|
      format.html { redirect_to sorvetes_url }
      format.json { head :no_content }
    end
  end
end
