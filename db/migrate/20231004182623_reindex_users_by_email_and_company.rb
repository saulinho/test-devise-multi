class ReindexUsersByEmailAndCompany < ActiveRecord::Migration[7.0]
  # db/migrate/XXX_reindex_users_by_email_and_subdomain.rb
  def up
    remove_index :users, [:email, :subdomain]
    add_index :users, [:email, :company_id], :unique => true
  end

  def down
    remove_index :users, [:email, :company_id]
    add_index :users, [:email, :subdomain], :unique => true
  end
end
