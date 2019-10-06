Just a little gem to enable static ActionText attachments. 

# Installing

add `gem 'actiontext-static', git: 'https://github.com/sosodev/actiontext-static.git'` to you're Gemfile
patch your Rails config with `ActionText::Static.patch(config)`

# Usage

add an attachment to the Trix editor and specify the contentType as `"vnd.rubyonrails.<partial_name>.html"

where `<partial_name>` is the name of the partial you want rendered when the content is rendered

place the partial in `action_text/attachables/content_attachments/<partial_name>`
