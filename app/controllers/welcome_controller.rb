class WelcomeController < ApplicationController
  def index
    counter = Counter.find_or_create_by(name: "default")
    counter.value = (counter.value || 0) + 1
    counter.save!
    render plain: "Counter from web #{counter.value}; #{Rails.version}/#{RUBY_VERSION}"
  end
end
