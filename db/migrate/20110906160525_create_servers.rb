class CreateServers < ActiveRecord::Migration
  def self.up
    create_table :servers do |t|
      t.string  :name
      t.string  :description
      t.string  :location
      t.string  :host_name
      t.string  :ip_address
      t.string  :username
      t.string  :password
      t.timestamps
    end
    
    #Create some entry
    Server.create!(:name => "Windows One", :description => "This is a Windows One server.", :location => "Elsewhere", :host_name => "Windows One Default", :ip_address => "192.168.0.1", :username => "some_username", :password => "some_password")
    Server.create!(:name => "Windows Two", :description => "This is a Windows Two server.", :location => "Elsewhere", :host_name => "Windows Two Default", :ip_address => "192.168.0.2", :username => "some_username", :password => "some_password")
    Server.create!(:name => "Windows Three", :description => "This is a Windows Three server.", :location => "Elsewhere", :host_name => "Windows Three Default", :ip_address => "192.168.0.3", :username => "some_username", :password => "some_password")
    Server.create!(:name => "Linux One", :description => "This is a Linux One server.", :location => "Elsewhere", :host_name => "Linux One Default", :ip_address => "192.168.0.4", :username => "some_username", :password => "some_password")
    Server.create!(:name => "Linux Two", :description => "This is a Linux Two server.", :location => "Elsewhere", :host_name => "Linux Two Default", :ip_address => "192.168.0.5", :username => "some_username", :password => "some_password")
    Server.create!(:name => "Linux Three", :description => "This is a Linux Three server.", :location => "Elsewhere", :host_name => "Linux Three Default", :ip_address => "192.168.0.6", :username => "some_username", :password => "some_password")
    Server.create!(:name => "Mail Server One", :description => "This is a Mail Server One server.", :location => "Elsewhere", :host_name => "Mail Server One Default", :ip_address => "192.168.0.7", :username => "some_username", :password => "some_password")
    Server.create!(:name => "Mail Server Two", :description => "This is a Mail Server Two server.", :location => "Elsewhere", :host_name => "Mail Server Two Default", :ip_address => "192.168.0.8", :username => "some_username", :password => "some_password")
    Server.create!(:name => "Mail Server Three", :description => "This is a Mail Server Three server.", :location => "Elsewhere", :host_name => "Mail Server Three Default", :ip_address => "192.168.0.9", :username => "some_username", :password => "some_password")
    Server.create!(:name => "Mail Server Four", :description => "This is a Mail Server Four server.", :location => "Elsewhere", :host_name => "Mail Server Four Default", :ip_address => "192.168.0.10", :username => "some_username", :password => "some_password")
  end
  
  def self.down
    drop_table  :servers
  end
end
