source 'https://supermarket.chef.io'
cookbook 'haproxy', git: 'https://github.com/johnbellone/haproxy-cookbook'
metadata

group :test, :integration do
  cookbook 'test-confd-haproxy', path: 'test/fixtures/cookbooks/test'
  cookbook 'zookeeper-cluster'
end
