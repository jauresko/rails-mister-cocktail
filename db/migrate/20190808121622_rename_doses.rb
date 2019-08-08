class RenameDoses < ActiveRecord::Migration[5.2]
  def change
    rename_column :doses, :desciption, :description
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
