ActiveAdmin.register User do
  
  scope   :all,           :default => true
  
  filter  :user_id
  filter  :first_name
  filter  :last_name
  filter  :email_address
  filter  :role,        :as => :select, :collection => [ "Super Admin", "Super User", "Admin", "Member"]
  filter  :department,  :as => :select, :collection => User.all.map {|x| x.department}
  
  #Custom Form
  form do |f|
    f.inputs "Users" do
      f.input :user_id,       :label => "User ID"
      f.input :first_name,    :label => "First Name"
      f.input :last_name,     :label => "Last Name"
      f.input :email_address, :label => "Email Address"
      f.input :role,          :as => :select, :collection => [ "Super Admin", "Super User", "Admin", "Member"]
      f.input :department
    end
    f.buttons
  end
end
