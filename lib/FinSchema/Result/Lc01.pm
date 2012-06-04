use utf8;
package FinSchema::Result::Lc01;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Lc01

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

=head1 TABLE: C<lc01>

=cut

__PACKAGE__->table("lc01");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 tbn

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 fam

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 ima

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 ots

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 uch

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 bri

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kat

  data_type: 'integer'
  is_nullable: 0

=head2 okl

  data_type: 'decimal'
  is_nullable: 0
  size: [14,4]

=head2 prf

  data_type: 'integer'
  is_nullable: 0

=head2 dpz

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 raz

  data_type: 'integer'
  is_nullable: 0

=head2 pav

  data_type: 'integer'
  is_nullable: 0

=head2 ngr

  data_type: 'integer'
  is_nullable: 0

=head2 kod

  data_type: 'integer'
  is_nullable: 0

=head2 koc

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 fav

  data_type: 'integer'
  is_nullable: 0

=head2 fop

  data_type: 'integer'
  is_nullable: 0

=head2 nap

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 spz

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=head2 dolg

  data_type: 'decimal'
  is_nullable: 0
  size: [12,2]

=head2 kna

  data_type: 'integer'
  is_nullable: 0

=head2 pra

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 duz

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 pfz

  data_type: 'integer'
  is_nullable: 0

=head2 dolg1

  data_type: 'decimal'
  is_nullable: 0
  size: [12,2]

=head2 veh

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 noh

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 vdn

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 ktg

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 pdn

  data_type: 'integer'
  is_nullable: 0

=head2 pov

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 kmi

  data_type: 'integer'
  is_nullable: 0

=head2 pna

  data_type: 'integer'
  is_nullable: 0

=head2 nls

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 nsb

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 na1

  data_type: 'decimal'
  is_nullable: 0
  size: [12,2]

=head2 na2

  data_type: 'decimal'
  is_nullable: 0
  size: [12,2]

=head2 na3

  data_type: 'decimal'
  is_nullable: 0
  size: [12,2]

=head2 ng1

  data_type: 'integer'
  is_nullable: 0

=head2 ng2

  data_type: 'integer'
  is_nullable: 0

=head2 ng3

  data_type: 'integer'
  is_nullable: 0

=head2 vo1

  data_type: 'integer'
  is_nullable: 0

=head2 vo2

  data_type: 'integer'
  is_nullable: 0

=head2 vo3

  data_type: 'integer'
  is_nullable: 0

=head2 adr1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 adr2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 adr3

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 adr4

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 kodmud

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 nammud

  data_type: 'varchar'
  is_nullable: 0
  size: 76

=head2 koddpa

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kodreg

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 dolgpred

  data_type: 'decimal'
  is_nullable: 0
  size: [12,2]

=head2 prpen

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 penpna

  data_type: 'varchar'
  is_nullable: 0
  size: 17

=head2 kau1

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kau2

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 sprnum1

  data_type: 'integer'
  is_nullable: 0

=head2 sprnum2

  data_type: 'integer'
  is_nullable: 0

=head2 zakname1

  data_type: 'varchar'
  is_nullable: 0
  size: 27

=head2 zakname2

  data_type: 'varchar'
  is_nullable: 0
  size: 27

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 27

=head2 num1

  data_type: 'integer'
  is_nullable: 0

=head2 social

  data_type: 'decimal'
  is_nullable: 0
  size: [7,2]

=head2 object

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "tbn",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "fam",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "ima",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "ots",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "uch",
  { data_type => "char", is_nullable => 0, size => 3 },
  "bri",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kat",
  { data_type => "integer", is_nullable => 0 },
  "okl",
  { data_type => "decimal", is_nullable => 0, size => [14, 4] },
  "prf",
  { data_type => "integer", is_nullable => 0 },
  "dpz",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "raz",
  { data_type => "integer", is_nullable => 0 },
  "pav",
  { data_type => "integer", is_nullable => 0 },
  "ngr",
  { data_type => "integer", is_nullable => 0 },
  "kod",
  { data_type => "integer", is_nullable => 0 },
  "koc",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "fav",
  { data_type => "integer", is_nullable => 0 },
  "fop",
  { data_type => "integer", is_nullable => 0 },
  "nap",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "spz",
  { data_type => "varchar", is_nullable => 0, size => 8 },
  "dolg",
  { data_type => "decimal", is_nullable => 0, size => [12, 2] },
  "kna",
  { data_type => "integer", is_nullable => 0 },
  "pra",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "duz",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "pfz",
  { data_type => "integer", is_nullable => 0 },
  "dolg1",
  { data_type => "decimal", is_nullable => 0, size => [12, 2] },
  "veh",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "noh",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "vdn",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "ktg",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "pdn",
  { data_type => "integer", is_nullable => 0 },
  "pov",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "kmi",
  { data_type => "integer", is_nullable => 0 },
  "pna",
  { data_type => "integer", is_nullable => 0 },
  "nls",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "nsb",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "na1",
  { data_type => "decimal", is_nullable => 0, size => [12, 2] },
  "na2",
  { data_type => "decimal", is_nullable => 0, size => [12, 2] },
  "na3",
  { data_type => "decimal", is_nullable => 0, size => [12, 2] },
  "ng1",
  { data_type => "integer", is_nullable => 0 },
  "ng2",
  { data_type => "integer", is_nullable => 0 },
  "ng3",
  { data_type => "integer", is_nullable => 0 },
  "vo1",
  { data_type => "integer", is_nullable => 0 },
  "vo2",
  { data_type => "integer", is_nullable => 0 },
  "vo3",
  { data_type => "integer", is_nullable => 0 },
  "adr1",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "adr2",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "adr3",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "adr4",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "kodmud",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "nammud",
  { data_type => "varchar", is_nullable => 0, size => 76 },
  "koddpa",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kodreg",
  { data_type => "char", is_nullable => 0, size => 2 },
  "dolgpred",
  { data_type => "decimal", is_nullable => 0, size => [12, 2] },
  "prpen",
  { data_type => "char", is_nullable => 0, size => 1 },
  "penpna",
  { data_type => "varchar", is_nullable => 0, size => 17 },
  "kau1",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kau2",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "sprnum1",
  { data_type => "integer", is_nullable => 0 },
  "sprnum2",
  { data_type => "integer", is_nullable => 0 },
  "zakname1",
  { data_type => "varchar", is_nullable => 0, size => 27 },
  "zakname2",
  { data_type => "varchar", is_nullable => 0, size => 27 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 27 },
  "num1",
  { data_type => "integer", is_nullable => 0 },
  "social",
  { data_type => "decimal", is_nullable => 0, size => [7, 2] },
  "object",
  { data_type => "varchar", is_nullable => 0, size => 19 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qJNXwEaM2b/DlabDc5lyWg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
