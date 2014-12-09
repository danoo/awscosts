require 'awscosts/s3_storage'
require 'awscosts/s3_requests'
require 'awscosts/s3_data_transfer'

class AWSCosts::S3

  attr_reader :region

  def initialize region
    @region = region
  end

  def storage
    r = region.name
    r = 'us-std' if r == 'us-east-1'
    AWSCosts::S3Storage.fetch(r)
  end

  def data_transfer
    r = region.name
    r = 'us-std' if r == 'us-east-1'
    AWSCosts::S3DataTransfer.fetch(r)
  end

  def requests
    r = region.name
    r = 'us-std' if r == 'us-east-1'
    AWSCosts::S3Requests.fetch(r)
  end
end



