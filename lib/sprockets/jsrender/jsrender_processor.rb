require 'sprockets'
require 'sprockets/engines'
require 'tilt'
require 'action_view'
require 'action_view/helpers'
require 'action_view/helpers/javascript_helper'

module Sprockets
  module JSRender
    class Processor < Tilt::Template
      include ActionView::Helpers::JavaScriptHelper

      def self.default_mime_type
        'application/javascript'
      end

      def prepare
      end

      def evaluate(scope, locals, &block)
        <<-JSRENDER
(function() {
  $.templates({#{scope.logical_path.gsub(/^jsrender\/(.*)$/i, "\\1").inspect}: "#{escape_javascript data}"});
}).call(this);
        JSRENDER
      end
    end
  end

  register_engine '.jsr', ::Sprockets::JSRender::Processor
end
