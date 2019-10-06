module ActionText
  module Attachables
    class ContentAttachment
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
  end
end