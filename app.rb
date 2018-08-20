require 'sinatra'
require 'aws-sdk'
require 'csv'
require 'json'
require_relative 'isbn.rb'
enable :sessions
load 'local_ENV.rb' if File.exist?('local_ENV.rb')

s3 = Aws::S3::Client.new(profile: 'jdgwinn911', region: 'us-east-2')

get '/' do
  isbn_10_or_13 = session[:isbn] || []
  checkk = session[:check] || []
  erb :isbn1, locals:{ isbn_10_or_13: isbn_10_or_13, checkk: checkk}
end

post '/isbn1' do
  num = params[:texty]
  display = num.split("\r\n")
  #   display = funky_fresh(num)
  #  if display == true
  #   display = "valid"
  #  elsif display == false
  #   display = "invalid"
  #  end

  valid =[]
  isbn_name = []
  display.each do |v|
    if funky_fresh(v)
      valid << "Valid"
    else
      valid << "Invalid"
    end
    if v != nil
      isbn_name << "#{v}"
    else
      isbn_name << ""
    end
  end

  validity = CSV.generate do |csv|
    valid.each_with_index do |v,i|
      csv << [isbn_name[i], v]
    end
  end



  session[:isbn] = isbn_name
  session[:check] = valid


 
  s3.put_object(bucket:'yucky-bucket', body: validity, key:"something.csv")
  redirect '/'
end




