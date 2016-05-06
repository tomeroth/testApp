class Reviewer < ActiveRecord::Base
	has_secure_password # password_digest in db, protected
	has_many :books
end
