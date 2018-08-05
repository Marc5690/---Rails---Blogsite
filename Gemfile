source 'http://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '5.0.1'
gem 'pg', '0.19.0'
#gem 'sqlite3'
gem 'i18n', '0.8.1'
gem 'ransack', '1.8.2'

gem 'sass-rails', '5.0.6'
gem 'uglifier', '3.0.4'
gem 'coffee-rails', '4.2.1'

gem 'jquery-rails', '4.2.2'
gem 'turbolinks', '5.0.1'
gem 'jbuilder', '2.6.1'
gem 'devise', '4.2.0'
gem 'activeadmin', '1.0.0'#git: 'https://github.com/activeadmin/activeadmin'
gem 'inherited_resources', '1.7.0'#git: 'https://github.com/activeadmin/inherited_resources'
gem 'active_skin', '0.0.12'
gem 'paperclip', '5.1.0'
gem 'ckeditor', '4.2.4'
gem 'active_admin_csv_import'
#gem 'bcrypt', '~> 3.1.11', platforms: [:ruby]#, :x64_mingw, :mingw]

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '9.0.6'#platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  #gem 'web-console', '>= 3.3.0'
  #gem 'capistrano',         require: false
  #gem 'capistrano-rvm',     require: false
  #gem 'capistrano-rails',   require: false
  #gem 'capistrano-bundler', require: false
  #gem 'capistrano3-puma',   require: false

end

group :production do
  gem 'puma', '3.7.1'
end


#platforms :ruby do # linux
#  gem 'unicorn'
#end

#platforms :mswin do # Windows
#  gem 'puma', '~> 3.0'
#end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
