class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def change
   create_table :products do |t|
     t.string :name
     t.string :url
     t.text :description

     t.timestamps null: false
   end
 end
end
