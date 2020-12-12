require 'action_controller/metal/renderers'

module ActionController
  module Renderers
    add :update do |proc, options|
      generator = ActionView::Helpers::PrototypeHelper::JavaScriptGenerator.new(view_context, &proc)
      self.content_type  = Mime[:js]
      self.response_body = generator.to_s
    end
  end
end
