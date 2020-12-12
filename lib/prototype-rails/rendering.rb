require 'action_view/helpers/rendering_helper'

ActionView::Helpers::RenderingHelper.prepend(Module.new {
  def render(options = {}, locals = {}, &block)
    if options == :update
      update_page(&block)
    else
      super(options, locals, &block)
    end
  end
})
