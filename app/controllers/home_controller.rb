class HomeController < ApplicationController
  def index
    render component: 'Root'
  end
end