class ParentsController < ApplicationController
  def show
    @parent = Parent.find(params[:id])
    @children = @parent.children
  end
end
