package WebBasedAccounting::Model::FinModel;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'FinSchema',
    
    connect_info => {
        dsn => 'dbi:mysql:fin:localhost',
        user => 'fin',
        password => 'fin',
        mysql_enable_utf8 => 1,
        
        Callbacks => {
            connected => sub { shift->do( q{SET NAMES utf8} ); return; },
        },
    }
);

=head1 NAME

WebBasedAccounting::Model::FinModel - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<WebBasedAccounting>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<FinSchema>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.49

=head1 AUTHOR

peinguin

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
