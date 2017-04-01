package 'nginx' do
	action :install
end
	
service 'nginx' do
	action [:enable, :start]
end

cookbook_file "/var/www/html/index.nginx-debian.html"
	source 'index.html'
	mode '0644'
end