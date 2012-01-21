module FormtasticBootstrap
  module Actions
    class ButtonAction < Formtastic::Actions::ButtonAction
      include Base
      include Buttonish
    end
  end
end
