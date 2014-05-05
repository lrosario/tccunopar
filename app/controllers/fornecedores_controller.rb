
class FornecedoresController < ApplicationController
  # GET /fornecedores
  # GET /fornecedores.json
  def index
    @fornecedores = Fornecedore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fornecedores }
    end
  end

  # GET /fornecedores/1
  # GET /fornecedores/1.json
  def show
    @fornecedore = Fornecedore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fornecedore }
    end
  end

  # GET /fornecedores/new
  # GET /fornecedores/new.json
  def new
    @fornecedore = Fornecedore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fornecedore }
    end
  end

  # GET /fornecedores/1/edit
  def edit
    @fornecedore = Fornecedore.find(params[:id])
  end

  # POST /fornecedores
  # POST /fornecedores.json
  def create
    @fornecedore = Fornecedore.new(params[:fornecedore])

    respond_to do |format|
      if @fornecedore.save
        format.html { redirect_to @fornecedore, notice: 'Fornecedore was successfully created.' }
        format.json { render json: @fornecedore, status: :created, location: @fornecedore }
      else
        format.html { render action: "new" }
        format.json { render json: @fornecedore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fornecedores/1
  # PUT /fornecedores/1.json
  def update
    @fornecedore = Fornecedore.find(params[:id])

    respond_to do |format|
      if @fornecedore.update_attributes(params[:fornecedore])
        format.html { redirect_to @fornecedore, notice: 'Fornecedore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fornecedore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fornecedores/1
  # DELETE /fornecedores/1.json
  def destroy
    @fornecedore = Fornecedore.find(params[:id])
    @fornecedore.destroy

    respond_to do |format|
      format.html { redirect_to fornecedores_url }
      format.json { head :no_content }
    end
  end
end
