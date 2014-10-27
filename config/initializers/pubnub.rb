publish_key   = ENV['PUBNUB_PUBLISH_KEY']   || YAML::load(File.open("#{Rails.root}/config/pubnub.yml"))[Rails.env]["publish_key"]
subscribe_key = ENV['PUBNUB_SUBSCRIBE_KEY'] || YAML::load(File.open("#{Rails.root}/config/pubnub.yml"))[Rails.env]["subscribe_key"]
secret_key    = ENV['PUBNUB_SECRET_KEY']    || YAML::load(File.open("#{Rails.root}/config/pubnub.yml"))[Rails.env]["secret_key"]
cipher_key    = YAML::load(File.open("#{Rails.root}/config/pubnub.yml"))[Rails.env]["cipher_key"]
ssl_on        = YAML::load(File.open("#{Rails.root}/config/pubnub.yml"))[Rails.env]["ssl_on"]

## -----------------------------------------
## Create Pubnub Client API (INITIALIZATION)
## -----------------------------------------
puts('Creating new PubNub Client API')
PUBNUB = Pubnub.new(
      publish_key,
      subscribe_key,
      secret_key,  ## SECRET_KEY
      cipher_key,      ## CIPHER_KEY (Cipher key is Optional)
      ssl_on    ## SSL_ON?
    )

PUBNUB_VARS = {
  "publish_key" => publish_key,
  "subscribe_key" => subscribe_key,
  "secret_key" => secret_key,
  "cipher_key" => cipher_key,
  "ssl_on" => ssl_on
}