# email:string field
# password_digest: string 

# password:string   virtual 
# password_confirmation:string virtual

class User < ApplicationRecord
    has_many :enrollments
    has_many :courses, through: :enrollments
    has_secure_password 
end
