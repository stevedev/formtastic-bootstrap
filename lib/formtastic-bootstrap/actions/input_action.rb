module FormtasticBootstrap
  module Actions
    class InputAction < Formtastic::Actions::InputAction
      include Base
      include Buttonish
    end
  end
end
