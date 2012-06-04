use utf8;
package FinSchema::Result::Krt08;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Krt08

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

=head1 TABLE: C<krt08>

=cut

__PACKAGE__->table("krt08");

=head1 ACCESSORS

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

=head2 kol

  data_type: 'decimal'
  is_nullable: 0
  size: [13,3]

=head2 ost

  data_type: 'decimal'
  is_nullable: 0
  size: [13,3]

=head2 kol1

  data_type: 'decimal'
  is_nullable: 0
  size: [13,3]

=head2 ost1

  data_type: 'decimal'
  is_nullable: 0
  size: [13,3]

=head2 skol

  data_type: 'decimal'
  is_nullable: 0
  size: [13,3]

=head2 pr1

  data_type: 'decimal'
  is_nullable: 0
  size: [13,3]

=head2 descr

  data_type: 'varchar'
  is_nullable: 0
  size: 72

=head2 vid

  data_type: 'varchar'
  is_nullable: 0
  size: 34

=head2 ves

  data_type: 'decimal'
  is_nullable: 0
  size: [11,3]

=head2 ed_ves

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 netto

  data_type: 'decimal'
  is_nullable: 0
  size: [11,3]

=head2 ed_net

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 brutto

  data_type: 'decimal'
  is_nullable: 0
  size: [11,3]

=head2 ed_brut

  data_type: 'char'
  is_nullable: 0
  size: 3

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

=cut

__PACKAGE__->add_columns(
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
  "kol",
  { data_type => "decimal", is_nullable => 0, size => [13, 3] },
  "ost",
  { data_type => "decimal", is_nullable => 0, size => [13, 3] },
  "kol1",
  { data_type => "decimal", is_nullable => 0, size => [13, 3] },
  "ost1",
  { data_type => "decimal", is_nullable => 0, size => [13, 3] },
  "skol",
  { data_type => "decimal", is_nullable => 0, size => [13, 3] },
  "pr1",
  { data_type => "decimal", is_nullable => 0, size => [13, 3] },
  "descr",
  { data_type => "varchar", is_nullable => 0, size => 72 },
  "vid",
  { data_type => "varchar", is_nullable => 0, size => 34 },
  "ves",
  { data_type => "decimal", is_nullable => 0, size => [11, 3] },
  "ed_ves",
  { data_type => "char", is_nullable => 0, size => 3 },
  "netto",
  { data_type => "decimal", is_nullable => 0, size => [11, 3] },
  "ed_net",
  { data_type => "char", is_nullable => 0, size => 3 },
  "brutto",
  { data_type => "decimal", is_nullable => 0, size => [11, 3] },
  "ed_brut",
  { data_type => "char", is_nullable => 0, size => 3 },
  "komehtap1",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "komehtap2",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "komehtap3",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "komehtap4",
  { data_type => "varchar", is_nullable => 0, size => 50 },
);


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WTxK+O9QY+vXwfh5YTrkkw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
