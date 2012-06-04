use utf8;
package FinSchema::Result::IniSk;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::IniSk

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

=head1 TABLE: C<ini_sk>

=cut

__PACKAGE__->table("ini_sk");

=head1 ACCESSORS

=head2 naim

  data_type: 'varchar'
  is_nullable: 0
  size: 76

=head2 adres

  data_type: 'varchar'
  is_nullable: 0
  size: 76

=head2 rs

  data_type: 'varchar'
  is_nullable: 0
  size: 41

=head2 adrbanka

  data_type: 'varchar'
  is_nullable: 0
  size: 76

=head2 dbpath

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 dszp

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 pri01

  data_type: 'integer'
  is_nullable: 0

=head2 nds

  data_type: 'decimal'
  is_nullable: 0
  size: [6,3]

=head2 torg

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 skl

  data_type: 'decimal'
  is_nullable: 0
  size: [5,2]

=head2 o_vs

  data_type: 'integer'
  is_nullable: 0

=head2 srt

  data_type: 'integer'
  is_nullable: 0

=head2 pu

  data_type: 'integer'
  is_nullable: 0

=head2 dni

  data_type: 'integer'
  is_nullable: 0

=head2 lines1

  data_type: 'integer'
  is_nullable: 0

=head2 lines2

  data_type: 'integer'
  is_nullable: 0

=head2 t_dil

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 t_dist

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 kmest

  data_type: 'integer'
  is_nullable: 0

=head2 tfon

  data_type: 'varchar'
  is_nullable: 0
  size: 9

=head2 svid

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 pnom

  data_type: 'varchar'
  is_nullable: 0
  size: 12

=head2 director

  data_type: 'varchar'
  is_nullable: 0
  size: 25

=head2 bux

  data_type: 'varchar'
  is_nullable: 0
  size: 25

=head2 pport

  data_type: 'integer'
  is_nullable: 0

=head2 oldocnum

  data_type: 'integer'
  is_nullable: 0

=head2 plavvalue

  data_type: 'integer'
  is_nullable: 0

=head2 ndsinnak

  data_type: 'integer'
  is_nullable: 0

=head2 razrez

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 prntype

  data_type: 'integer'
  is_nullable: 0

=head2 paperfmt

  data_type: 'integer'
  is_nullable: 0

=head2 prfont

  data_type: 'integer'
  is_nullable: 0

=head2 baschk

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 inum

  data_type: 'integer'
  is_nullable: 0

=head2 icena

  data_type: 'integer'
  is_nullable: 0

=head2 isum

  data_type: 'integer'
  is_nullable: 0

=head2 sprnum

  data_type: 'integer'
  is_nullable: 0

=head2 http

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=cut

__PACKAGE__->add_columns(
  "naim",
  { data_type => "varchar", is_nullable => 0, size => 76 },
  "adres",
  { data_type => "varchar", is_nullable => 0, size => 76 },
  "rs",
  { data_type => "varchar", is_nullable => 0, size => 41 },
  "adrbanka",
  { data_type => "varchar", is_nullable => 0, size => 76 },
  "dbpath",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "dszp",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "pri01",
  { data_type => "integer", is_nullable => 0 },
  "nds",
  { data_type => "decimal", is_nullable => 0, size => [6, 3] },
  "torg",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "skl",
  { data_type => "decimal", is_nullable => 0, size => [5, 2] },
  "o_vs",
  { data_type => "integer", is_nullable => 0 },
  "srt",
  { data_type => "integer", is_nullable => 0 },
  "pu",
  { data_type => "integer", is_nullable => 0 },
  "dni",
  { data_type => "integer", is_nullable => 0 },
  "lines1",
  { data_type => "integer", is_nullable => 0 },
  "lines2",
  { data_type => "integer", is_nullable => 0 },
  "t_dil",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "t_dist",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "kmest",
  { data_type => "integer", is_nullable => 0 },
  "tfon",
  { data_type => "varchar", is_nullable => 0, size => 9 },
  "svid",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "pnom",
  { data_type => "varchar", is_nullable => 0, size => 12 },
  "director",
  { data_type => "varchar", is_nullable => 0, size => 25 },
  "bux",
  { data_type => "varchar", is_nullable => 0, size => 25 },
  "pport",
  { data_type => "integer", is_nullable => 0 },
  "oldocnum",
  { data_type => "integer", is_nullable => 0 },
  "plavvalue",
  { data_type => "integer", is_nullable => 0 },
  "ndsinnak",
  { data_type => "integer", is_nullable => 0 },
  "razrez",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "prntype",
  { data_type => "integer", is_nullable => 0 },
  "paperfmt",
  { data_type => "integer", is_nullable => 0 },
  "prfont",
  { data_type => "integer", is_nullable => 0 },
  "baschk",
  { data_type => "char", is_nullable => 0, size => 1 },
  "inum",
  { data_type => "integer", is_nullable => 0 },
  "icena",
  { data_type => "integer", is_nullable => 0 },
  "isum",
  { data_type => "integer", is_nullable => 0 },
  "sprnum",
  { data_type => "integer", is_nullable => 0 },
  "http",
  { data_type => "varchar", is_nullable => 0, size => 100 },
);


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:UAd74WZuaT6SLiLWgG/BXw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
