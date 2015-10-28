name 'confd-haproxy'
run_list 'confd-haproxy::default'
default_source :community
cookbook 'haproxy', git: 'https://github.com/johnbellone/haproxy-cookbook'
cookbook 'confd-haproxy', path: '.'
