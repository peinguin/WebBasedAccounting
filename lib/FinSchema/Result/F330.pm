use utf8;
package FinSchema::Result::F330;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::F330

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

=head1 TABLE: C<f330>

=cut

__PACKAGE__->table("f330");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 oc

  data_type: 'integer'
  is_nullable: 1

=head2 coc

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 kau

  data_type: 'varchar'
  is_nullable: 1
  size: 5

=head2 saldo

  data_type: 'decimal'
  is_nullable: 1
  size: [12,2]

=head2 booc

  data_type: 'integer'
  is_nullable: 1

=head2 priznak

  data_type: 'tinytext'
  is_nullable: 1

=head2 sprnum

  data_type: 'integer'
  is_nullable: 1

=head2 idzak

  data_type: 'integer'
  is_nullable: 1

=head2 zakname

  data_type: 'tinytext'
  is_nullable: 1

=head2 kaukc

  data_type: 'varchar'
  is_nullable: 1
  size: 5

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "oc",
  { data_type => "integer", is_nullable => 1 },
  "coc",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "kau",
  { data_type => "varchar", is_nullable => 1, size => 5 },
  "saldo",
  { data_type => "decimal", is_nullable => 1, size => [12, 2] },
  "booc",
  { data_type => "integer", is_nullable => 1 },
  "priznak",
  { data_type => "tinytext", is_nullable => 1 },
  "sprnum",
  { data_type => "integer", is_nullable => 1 },
  "idzak",
  { data_type => "integer", is_nullable => 1 },
  "zakname",
  { data_type => "tinytext", is_nullable => 1 },
  "kaukc",
  { data_type => "varchar", is_nullable => 1, size => 5 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Iy7MwD8kG+Mk4Iy14HGb7g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
