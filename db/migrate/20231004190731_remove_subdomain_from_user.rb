class RemoveSubdomainFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :subdomain, :string
  end
end
