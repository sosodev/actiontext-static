# frozen_string_literal: true

require 'action_text/attachables/content_attachment'

module ActionText
  module Static
    def self.patch(config)
      config.to_prepare do
        ActionText::Attachables::ContentAttachment.class_eval do
          clear_validators!

          def attachable_plain_text_representation(caption)
            case name
            when "horizontal-rule"
              " -- "
            else
              name
            end
          end

          def to_partial_path
            "action_text/attachables/content_attachments/#{name.underscore}"
          end
        end

        ActionText::ContentHelper.class_eval do
          def render_action_text_content(content)
            render_action_text_attachments(content).html_safe
          end
        end
      end
    end
  end
end
