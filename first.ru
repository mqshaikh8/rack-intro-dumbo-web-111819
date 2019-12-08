require 'rack'
 
# Instances of Proc automatically have a call method that runs the block that
# they're initialized with.
mere_abba = Proc.new do
  [200, { 'Content-Type' => 'text/html' }, ['<em>Hello, sup fam</em>']]
end
 
run mere_abba