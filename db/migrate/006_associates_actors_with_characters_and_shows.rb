class AssociatesActorsWithCharactersAndShows < ActiveRecord::Migration
  def change
    add_column :shows, :actor_id, :integer
  end
end
