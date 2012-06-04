use strict;
use warnings;
use Test::More;


use Catalyst::Test 'WebBasedAccounting';
use WebBasedAccounting::Controller::Fin;

ok( request('/fin')->is_success, 'Request should succeed' );
done_testing();
