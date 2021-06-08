class ApplicationController < ActionController::API
   # protect_from_forgery except: :create
   def encode_token(payload)
    JWT.encode(payload, 'rjfrijfrifjrifjrifmrif')
   end

   def decoded_token
    if auth_header
        token = auth_header.split(' ')[1]
        begin

          JWT.decode(token, 'rjfrijfrifjrifjrifmrif')
        rescue
            nil
        end
    end
   end

   def current_user
    if decoded_token
        user_id = decoded_token[0]['user_id']
        @user = User.find_by(id: user_id)
    end
   end

   def auth_header
    request.headers['Authorization']
   end
end

# JWT Tokens takes user data submitted from client, encrypts data so it can't be
# tampered with. If tampered with, it won't work.