#!/bin/bash
#
# Tells Rails where you actual home page is located and resources.
#
# ----------------------------------------------------------------- #
# System    : Centos 7.7                                            #
#   Name    : peekaboo                                              #
# Location  : /home/don/workspace/books/app/controller/             #
# File Name : media_types_controller.rb                             #
# Rev. Date : 05/08/2020                                            #
# Rev. No.  : 0.0.1                                                 #
# ----------------------------------------------------------------- #
#

class MediaTypesController < ApplicationController
  before_action :set_media_type, only: [:show, :edit, :update, :destroy]

  # GET /media_types
  # GET /media_types.json
  def index
    @media_types = MediaType.all
  end

  # GET /media_types/1
  # GET /media_types/1.json
  def show
  end

  # GET /media_types/new
  def new
    @media_type = MediaType.new
  end

  # GET /media_types/1/edit
  def edit
  end

  # POST /media_types
  # POST /media_types.json
  def create
    @media_type = MediaType.new(media_type_params)

    respond_to do |format|
      if @media_type.save
        format.html { redirect_to @media_type, notice: 'Media type was successfully created.' }
        format.json { render :show, status: :created, location: @media_type }
      else
        format.html { render :new }
        format.json { render json: @media_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_types/1
  # PATCH/PUT /media_types/1.json
  def update
    respond_to do |format|
      if @media_type.update(media_type_params)
        format.html { redirect_to @media_type, notice: 'Media type was successfully updated.' }
        format.json { render :show, status: :ok, location: @media_type }
      else
        format.html { render :edit }
        format.json { render json: @media_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_types/1
  # DELETE /media_types/1.json
  def destroy
    @media_type.destroy
    respond_to do |format|
      format.html { redirect_to media_types_url, notice: 'Media type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_type
      @media_type = MediaType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def media_type_params
      params.fetch(:media_type, {})
    end
end

#
# ----------------------------------------------------------------- #
# Date Rev.  : Rev. # :     Description                             #
# ----------------------------------------------------------------- #
# 05/08/2020 : 0.0.1  : Original.                                   #
# ----------------------------------------------------------------- #
#            :        :                                             #
# ----------------------------------------------------------------- #