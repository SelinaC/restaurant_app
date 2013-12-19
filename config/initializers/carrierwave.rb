CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID_COOKEDUP'],
    :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY_COOKEDUP'],
    :region                 => 'eu-west-1'
  }
  config.fog_directory  = ENV['WDI_S3_BUCKET_COOKEDUP']
  config.fog_public     = true
end

