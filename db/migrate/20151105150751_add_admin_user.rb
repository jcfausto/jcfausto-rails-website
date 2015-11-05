class AddAdminUser < ActiveRecord::Migration
  def self.up
    Admin.create!( :email => 'hello@jcfausto.com', :password => '12345678' )
  end

  def self.down
    admin = Admin.find_by_email( 'hello@jcfausto.com' )
    if admin
      admin.destroy
    end
  end
end
