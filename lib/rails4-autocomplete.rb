require 'rails4-autocomplete/form_helper'
require 'rails4-autocomplete/autocomplete'

module Rails4Autocomplete
  autoload :Orm              , 'rails4-autocomplete/orm'
  autoload :FormtasticPlugin , 'rails4-autocomplete/formtastic_plugin'

  unless ::Rails.version < "3.1"
    require 'rails4-autocomplete/rails/engine'
  end
end

if Rails::VERSION::MAJOR >= 6
  ActiveSupport.on_load(:action_controller_base) do
    ActionController::Base.send(
      :include,
      Rails4Autocomplete::Autocomplete
    )
  end
else
  ActionController::Base.send(:include, Rails4Autocomplete::Autocomplete)
end

require 'rails4-autocomplete/formtastic'

begin
  require 'simple_form'
  require 'rails4-autocomplete/simple_form_plugin'
rescue LoadError
end
