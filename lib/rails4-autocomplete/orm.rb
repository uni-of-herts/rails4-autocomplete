module Rails3JQueryAutocomplete
  module Orm
    autoload :ActiveRecord , 'rails4-autocomplete/orm/active_record'
		autoload :Mongoid      , 'rails4-autocomplete/orm/mongoid'
		autoload :MongoMapper  , 'rails4-autocomplete/orm/mongo_mapper'
  end
end

