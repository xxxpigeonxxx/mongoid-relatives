require "mongoid/relatives/version"
require "active_support"
require "active_support/core_ext"
require "mongoid/relatives/relations"
require "mongoid/relatives/relations/relates/many"
require "mongoid/relatives/relations/relates/in"
require "mongoid/relatives/relations/builders/relates/many"
require "mongoid/relatives/relations/builders/relates/in"
require "mongoid/relatives/relations/bindings/relates/in"
require "mongoid/relatives/relations/accessors"
require "mongoid/relatives/relations/macros"
require "mongoid/relatives/relations/metadata"

I18n.load_path << File.join(File.dirname(__FILE__), "config", "locales", "en.yml")

module Mongoid
  module Relatives
    extend ActiveSupport::Concern
    include Relations
    include Relations::Accessors
    include Relations::Macros
  end
end
