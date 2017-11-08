require 'serverspec'
require 'pathname'

if (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM).nil?
    set :backend, :exec
    set :path, '/bin:/usr/local/bin:$PATH'
else
    set :backend, :cmd
    set :os, family: 'windows'
end