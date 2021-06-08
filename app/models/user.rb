class User < ApplicationRecord
    has_secure_password
    # has_secure_password is used to encrypt and authenticate passwords using BCrypt
end
