BEGIN {
    $ENV{TEST_NGINX_APICAST_BINARY} ||= 'rover exec apicast';
    $ENV{APICAST_POLICY_LOAD_PATH} = './policies';
}

use strict;
use warnings FATAL => 'all';
use Test::APIcast::Blackbox 'no_plan';

run_tests();

__DATA__

=== TEST 1: example
The module does not crash without configuration.
--- configuration
{
  "services": [
    {
      "proxy": {
        "policy_chain": [
          { "name": "example", "version": "0.1" },
          { "name": "apicast.policy.echo", "configuration": { } }
        ]
      }
    }
  ]
}
--- request
GET /t
--- response_body
GET /t HTTP/1.1
--- error_code: 200
--- no_error_log
[error]
