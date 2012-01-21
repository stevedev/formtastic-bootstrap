module FormtasticBootstrap
  module Actions
    module Buttonish

      include Formtastic::Actions::Buttonish

      # Mark submit buttons as primary
      def extra_button_html_options
        opts = super
        opts[:class] = [opts[:class], 'primary'].join(' ') if method == :submit
        opts
      end

    end
  end
end
