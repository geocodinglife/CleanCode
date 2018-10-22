class PagesController < ApplicationController
  def home
      our_input_text = " Hello from Rails and the follow is "
      @heart = `python lib/assets/python/heart.py "#{our_input_text}"`
  end
end
