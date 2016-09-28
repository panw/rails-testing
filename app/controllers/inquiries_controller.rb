class InquiriesController < ApplicationController
  def index
    @inquiries = Inquiry.all
  end

  def new
  end

  def create
  end

  def show
    @inquiry = Inquiry.find(params[:id])
  end
end
