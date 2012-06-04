package WebBasedAccounting::View::TT;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt',
    render_die => 1,
    ENCODING     => 'utf-8',
);

=head1 NAME

WebBasedAccounting::View::TT - TT View for WebBasedAccounting

=head1 DESCRIPTION

TT View for WebBasedAccounting.

=head1 SEE ALSO

L<WebBasedAccounting>

=head1 AUTHOR

peinguin,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
