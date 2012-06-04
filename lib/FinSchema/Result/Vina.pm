use utf8;
package FinSchema::Result::Vina;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Vina

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

=head1 TABLE: C<vina>

=cut

__PACKAGE__->table("vina");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 vnk

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 vna

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 nna

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 ukr

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 flr

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 pna

  data_type: 'varchar'
  is_nullable: 0
  size: 17

=head2 spz

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=head2 pro

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 27

=head2 num1

  data_type: 'integer'
  is_nullable: 0

=head2 object

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 kau

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 zakname

  data_type: 'varchar'
  is_nullable: 0
  size: 27

=head2 sprnum

  data_type: 'integer'
  is_nullable: 0

=head2 ozndox

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "vnk",
  { data_type => "char", is_nullable => 0, size => 3 },
  "vna",
  { data_type => "char", is_nullable => 0, size => 3 },
  "nna",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "ukr",
  { data_type => "char", is_nullable => 0, size => 1 },
  "flr",
  { data_type => "char", is_nullable => 0, size => 1 },
  "pna",
  { data_type => "varchar", is_nullable => 0, size => 17 },
  "spz",
  { data_type => "varchar", is_nullable => 0, size => 8 },
  "pro",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 27 },
  "num1",
  { data_type => "integer", is_nullable => 0 },
  "object",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "kau",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "zakname",
  { data_type => "varchar", is_nullable => 0, size => 27 },
  "sprnum",
  { data_type => "integer", is_nullable => 0 },
  "ozndox",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:W+N7OY0sPrbSPZbtA8ptyA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
