ActiveAdmin.register Server do

  #Custom Form
  form do |f|
    f.inputs "Server" do
      f.input :name
      f.input :description
      f.input :location
      f.input :host_name,   :label => "Hostname"
      f.input :ip_address,  :label => "IP Address"
      f.input :username
      f.input :password
    end
    f.buttons
  end
end
