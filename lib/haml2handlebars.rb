require 'haml2handlebars/version'
require 'haml2handlebars/engine'

module Haml2Handlebars
  def self.convert template, options = {}
    Engine.new(template, {:format => :html5}.merge(options)).to_handlebars
  end
end
