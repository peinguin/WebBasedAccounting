use utf8;
package FinSchema::Result::Prj57;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Prj57

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

=head1 TABLE: C<prj57>

=cut

__PACKAGE__->table("prj57");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 sklad

  data_type: 'integer'
  is_nullable: 0

=head2 zfs

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 naim

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 naim2

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 naimgr

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 nn

  data_type: 'varchar'
  is_nullable: 0
  size: 13

=head2 idkrt

  data_type: 'integer'
  is_nullable: 0

=head2 ei

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 ei1

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 cena

  data_type: 'decimal'
  is_nullable: 0
  size: [19,6]

=head2 scena

  data_type: 'decimal'
  is_nullable: 0
  size: [19,6]

=head2 sch

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 subsch

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 komm

  data_type: 'varchar'
  is_nullable: 0
  size: 12

=head2 s_torg

  data_type: 'decimal'
  is_nullable: 0
  size: [17,6]

=head2 dz

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 nd

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 ndstoim

  data_type: 'decimal'
  is_nullable: 0
  size: [19,6]

=head2 pp

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 idpp

  data_type: 'integer'
  is_nullable: 0

=head2 pr

  data_type: 'decimal'
  is_nullable: 0
  size: [13,3]

=head2 pr1

  data_type: 'decimal'
  is_nullable: 0
  size: [13,3]

=head2 shifr

  data_type: 'varchar'
  is_nullable: 0
  size: 7

=head2 stoim

  data_type: 'decimal'
  is_nullable: 0
  size: [19,6]

=head2 d_n

  data_type: 'integer'
  is_nullable: 0

=head2 vp

  data_type: 'integer'
  is_nullable: 0

=head2 do

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 nds

  data_type: 'decimal'
  is_nullable: 0
  size: [6,3]

=head2 s_nds

  data_type: 'decimal'
  is_nullable: 0
  size: [19,2]

=head2 torg

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 srasj

  data_type: 'decimal'
  is_nullable: 0
  size: [5,2]

=head2 ztrans

  data_type: 'decimal'
  is_nullable: 0
  size: [19,2]

=head2 seller

  data_type: 'varchar'
  is_nullable: 0
  size: 25

=head2 driver

  data_type: 'varchar'
  is_nullable: 0
  size: 25

=head2 otgr

  data_type: 'decimal'
  is_nullable: 0
  size: [11,2]

=head2 ch_kogo

  data_type: 'varchar'
  is_nullable: 0
  size: 25

=head2 n_dov

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 osnov

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 forma

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 mash

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 stavka

  data_type: 'integer'
  is_nullable: 0

=head2 dor_stav

  data_type: 'decimal'
  is_nullable: 0
  size: [6,3]

=head2 dor_sum

  data_type: 'decimal'
  is_nullable: 0
  size: [19,2]

=head2 ug

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 sprnum

  data_type: 'integer'
  is_nullable: 0

=head2 nzp

  data_type: 'integer'
  is_nullable: 0

=head2 newkau

  data_type: 'varchar'
  is_nullable: 0
  size: 7

=head2 komehtap1

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 komehtap2

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 komehtap3

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 komehtap4

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 idnd

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "sklad",
  { data_type => "integer", is_nullable => 0 },
  "zfs",
  { data_type => "char", is_nullable => 0, size => 3 },
  "naim",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "naim2",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "naimgr",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "nn",
  { data_type => "varchar", is_nullable => 0, size => 13 },
  "idkrt",
  { data_type => "integer", is_nullable => 0 },
  "ei",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "ei1",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "cena",
  { data_type => "decimal", is_nullable => 0, size => [19, 6] },
  "scena",
  { data_type => "decimal", is_nullable => 0, size => [19, 6] },
  "sch",
  { data_type => "char", is_nullable => 0, size => 2 },
  "subsch",
  { data_type => "char", is_nullable => 0, size => 2 },
  "komm",
  { data_type => "varchar", is_nullable => 0, size => 12 },
  "s_torg",
  { data_type => "decimal", is_nullable => 0, size => [17, 6] },
  "dz",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "nd",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "ndstoim",
  { data_type => "decimal", is_nullable => 0, size => [19, 6] },
  "pp",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "idpp",
  { data_type => "integer", is_nullable => 0 },
  "pr",
  { data_type => "decimal", is_nullable => 0, size => [13, 3] },
  "pr1",
  { data_type => "decimal", is_nullable => 0, size => [13, 3] },
  "shifr",
  { data_type => "varchar", is_nullable => 0, size => 7 },
  "stoim",
  { data_type => "decimal", is_nullable => 0, size => [19, 6] },
  "d_n",
  { data_type => "integer", is_nullable => 0 },
  "vp",
  { data_type => "integer", is_nullable => 0 },
  "do",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "nds",
  { data_type => "decimal", is_nullable => 0, size => [6, 3] },
  "s_nds",
  { data_type => "decimal", is_nullable => 0, size => [19, 2] },
  "torg",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "srasj",
  { data_type => "decimal", is_nullable => 0, size => [5, 2] },
  "ztrans",
  { data_type => "decimal", is_nullable => 0, size => [19, 2] },
  "seller",
  { data_type => "varchar", is_nullable => 0, size => 25 },
  "driver",
  { data_type => "varchar", is_nullable => 0, size => 25 },
  "otgr",
  { data_type => "decimal", is_nullable => 0, size => [11, 2] },
  "ch_kogo",
  { data_type => "varchar", is_nullable => 0, size => 25 },
  "n_dov",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "osnov",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "forma",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "mash",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "stavka",
  { data_type => "integer", is_nullable => 0 },
  "dor_stav",
  { data_type => "decimal", is_nullable => 0, size => [6, 3] },
  "dor_sum",
  { data_type => "decimal", is_nullable => 0, size => [19, 2] },
  "ug",
  { data_type => "char", is_nullable => 0, size => 1 },
  "sprnum",
  { data_type => "integer", is_nullable => 0 },
  "nzp",
  { data_type => "integer", is_nullable => 0 },
  "newkau",
  { data_type => "varchar", is_nullable => 0, size => 7 },
  "komehtap1",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "komehtap2",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "komehtap3",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "komehtap4",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "idnd",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:baTfU7fFgqQp2x9VQBgJ9Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
