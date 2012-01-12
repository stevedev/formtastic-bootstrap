module FormtasticBootstrap
  module Inputs
    module Base
      module Hints
        
        include Formtastic::Inputs::Base::Hints

        def hint_html(inline_or_block = :inline)
          if hint?
            template.content_tag(
              :p, 
              Formtastic::Util.html_safe(hint_text), 
              :class => 'help-block'
            )
          end
        end

      end
    end
  end
end

