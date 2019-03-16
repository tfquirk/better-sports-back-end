class UsersSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :phone, :street,
              :street_2, :city, :state, :country, :zip, :email
end
