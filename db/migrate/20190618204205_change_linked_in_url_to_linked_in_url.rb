class ChangeLinkedInUrlToLinkedInUrl < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :linkedIn_url, :linked_in_url 
  end
end
