module FormtasticBootstrap
  module Actions
    module Base

      include Formtastic::Actions::Base

      def wrapper(&block)
        template.capture(&block)
        #wrapper_html_options
      end

      # Pull html option from wrapper into here as well since we don't really have a wrapper
      def extra_button_html_options
        super.merge!(wrapper_html_options.merge!(:class => [wrapper_html_options[:class], "btn"].compact.join(' ')))
      end

    end
  end
end
