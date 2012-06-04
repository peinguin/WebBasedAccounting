use utf8;
package FinSchema::Result::IniEc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::IniEc

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

=head1 TABLE: C<ini_ec>

=cut

__PACKAGE__->table("ini_ec");

=head1 ACCESSORS

=head2 path

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 nds

  data_type: 'decimal'
  is_nullable: 0
  size: [6,3]

=head2 naim

  data_type: 'varchar'
  is_nullable: 0
  size: 29

=head2 okrug

  data_type: 'integer'
  is_nullable: 0

=head2 tablsel

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "path",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "nds",
  { data_type => "decimal", is_nullable => 0, size => [6, 3] },
  "naim",
  { data_type => "varchar", is_nullable => 0, size => 29 },
  "okrug",
  { data_type => "integer", is_nullable => 0 },
  "tablsel",
  { data_type => "integer", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PfTI2w/akaiWo5mSmq2Hlg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
