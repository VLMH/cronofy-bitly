require "#{File.dirname(__FILE__)}/../../app/services/add_redirection"

desc 'Shorten URL by generate slug'

task :shorten_url do
  ARGV.each { |a| task a.to_sym do ; end }
  url = ARGV[1]
  slug = AddRedirection.new.call(url: url)

  puts slug || 'Cannot generate slug. Please ensure input URL is valid.'
end
