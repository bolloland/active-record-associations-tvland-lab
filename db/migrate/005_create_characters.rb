class CreateCharacters < ActiveRecord::Migration[5.1]
    def change
        create_table :characters do |t|
            t.string :name
            t.integer :actor_id 
            # this will be the bridge from actor to show
            t.integer :show_id
        end
    end
end
