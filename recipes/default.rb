#
# Cookbook: confd-haproxy
# License: Apache 2.0
#
# Copyright 2015, Bloomberg Finance L.P.
#
include_recipe 'confd::default', 'haproxy::default'

confd_template node['haproxy']['config']['path'] do
  template_source node['confd-haproxy']['template_source']
  prefix node['confd-haproxy']['prefix']
  keys []

  check_command ['/usr/sbin/haproxy -c -q -V', ['-f', name]].flatten.join(' ')
  reload_command ['/sbin/service reload', node['haproxy']['service_name']].join(' ')
end
