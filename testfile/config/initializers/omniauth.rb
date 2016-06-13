OmniAuth.config.logger = Rails.logger

# Rails.application.config.middleware.use OmniAuth::Builder do |variable|
#   provider :facebook, ENV['1192331367466495'], ENV['223a36bf4f6b421369e45119b6c4ea4b']
# end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['1192331367466495'], ENV['223a36bf4f6b421369e45119b6c4ea4b'],
           :scope => 'email,user_birthday,read_stream', :display => 'popup'
end

# Rails.application.config.middleware.use OmniAuth::Builder do
#   configure do |config|
#     config.path_prefix = '/auth'
#   end
#   ...
# end
