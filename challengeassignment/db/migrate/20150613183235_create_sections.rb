class CreateSections < ActiveRecord::Migration

  def up
    create_table :sections do |t|
    	t.integer "page_id"
    	t.column  "name", :string , :null => false , :limit => 100
    	t.integer "position"
    	t.boolean "visible", :default => false
    	t.string  "content_type"
    	t.text  "content"
      	t.timestamps
    end
    
    add_index("sections","page_id")

    def down
    	drop_table :sections
    end
  end
end
