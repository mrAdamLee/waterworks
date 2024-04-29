class FormsController < ApplicationController
  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      redirect_to @form, notice: 'Form was successfully created.'
    else
      render :new
    end
  end

  def show
    @form = Form.find(params[:id])
  end

  private

  def form_params
    params.require(:form).permit(:name, :description, :file)
  end
end
