package 'httpd' do
action :install
end

file 'var/www/html/index.html' do
content "<h1>Hello World!!</h1>
HOSTNAME: #{node['hostname']}
IPADDRESS: #{node['ipaddress']}
"
end

service 'httpd' do
action [ :enable, :start ]
end
