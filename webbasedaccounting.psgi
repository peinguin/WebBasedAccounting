use strict;
use warnings;

use WebBasedAccounting;

my $app = WebBasedAccounting->apply_default_middlewares(WebBasedAccounting->psgi_app);
$app;

