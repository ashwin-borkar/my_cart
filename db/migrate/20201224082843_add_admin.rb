class AddAdmin < ActiveRecord::Migration[6.0]
  def change
  	User.create! do |u|
        u.email     = 'test_admin@test.com'
        u.password  = 'password'
        u.admin_role = true
    end
  end
end
