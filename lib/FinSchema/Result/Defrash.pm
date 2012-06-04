use utf8;
package FinSchema::Result::Defrash;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Defrash

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<defrash>

=cut

__PACKAGE__->table("defrash");

=head1 ACCESSORS

=head2 nd

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 rnumop

  data_type: 'varchar'
  is_nullable: 0
  size: 4

=head2 rnameoper

  data_type: 'varchar'
  is_nullable: 0
  size: 27

=head2 pnumop

  data_type: 'varchar'
  is_nullable: 0
  size: 4

=head2 pnameoper

  data_type: 'varchar'
  is_nullable: 0
  size: 37

=cut

__PACKAGE__->add_columns(
  "nd",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "rnumop",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "rnameoper",
  { data_type => "varchar", is_nullable => 0, size => 27 },
  "pnumop",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "pnameoper",
  { data_type => "varchar", is_nullable => 0, size => 37 },
);


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:r/psxQ4ywtwdEz4hRxRlIQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
