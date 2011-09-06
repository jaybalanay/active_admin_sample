class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string  :user_id
      t.string  :first_name
      t.string  :last_name
      t.string  :role
      t.string  :department
      t.string  :email_address
      t.timestamps
    end
    
    #Create some users
    User.create!(:user_id => "1234567890", :first_name => "User", :last_name => "One", :role => "Super Admin", :department => "DPWH", :email_address => "dpwh@gov.au")
    User.create!(:user_id => "1234567890", :first_name => "User", :last_name => "Two", :role => "Super Admin", :department => "DOST", :email_address => "dost@gov.au")
    User.create!(:user_id => "1234567890", :first_name => "User", :last_name => "Three", :role => "Super User", :department => "DOE", :email_address => "doe@gov.au")
    User.create!(:user_id => "1234567890", :first_name => "User", :last_name => "Four", :role => "Super User", :department => "DepEd", :email_address => "deped@gov.au")
    User.create!(:user_id => "1234567890", :first_name => "User", :last_name => "Five", :role => "Super User", :department => "SSS", :email_address => "sss@gov.au")
    User.create!(:user_id => "1234567890", :first_name => "User", :last_name => "Six", :role => "Admin", :department => "Ched", :email_address => "ched@gov.au")
    User.create!(:user_id => "1234567890", :first_name => "User", :last_name => "Seven", :role => "Admin", :department => "DBM", :email_address => "dbm@gov.au")
    User.create!(:user_id => "1234567890", :first_name => "User", :last_name => "Eight", :role => "Admin", :department => "GSIS", :email_address => "gsis@gov.au")
    User.create!(:user_id => "1234567890", :first_name => "User", :last_name => "Nine", :role => "Member", :department => "BIR", :email_address => "bir@gov.au")
    User.create!(:user_id => "1234567890", :first_name => "User", :last_name => "Ten", :role => "Member", :department => "DOD", :email_address => "dod@gov.au")
    User.create!(:user_id => "1234567890", :first_name => "User", :last_name => "Eleven", :role => "Member", :department => "PNP", :email_address => "pnp@gov.au")
    User.create!(:user_id => "1234567890", :first_name => "User", :last_name => "Twelve", :role => "Member", :department => "Kurakot", :email_address => "kurakot@gov.au")
    User.create!(:user_id => "1234567890", :first_name => "User", :last_name => "Thirteen", :role => "Member", :department => "Buwaya", :email_address => "buwaya@gov.au")
    User.create!(:user_id => "1234567890", :first_name => "User", :last_name => "Fourteen", :role => "Member", :department => "Sample", :email_address => "sample@gov.au")
    User.create!(:user_id => "1234567890", :first_name => "User", :last_name => "Fifteen", :role => "Member", :department => "Testing", :email_address => "testing@gov.au")
  end
  
  def self.down
    drop_table  :users
  end
end
