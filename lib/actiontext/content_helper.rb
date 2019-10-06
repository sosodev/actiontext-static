module ActionText
  module ContentHelper
    def render_action_text_content(content)
      render_action_text_attachments(content).html_safe
    end
  end
end
