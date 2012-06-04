use utf8;
package FinSchema::Result::Dinit;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Dinit

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

=head1 TABLE: C<dinit>

=cut

__PACKAGE__->table("dinit");

=head1 ACCESSORS

=head2 sound

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 path

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 lines

  data_type: 'integer'
  is_nullable: 0

=head2 naimsokr

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 naimpoln

  data_type: 'varchar'
  is_nullable: 0
  size: 76

=head2 naosnove

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 gorod

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 font

  data_type: 'integer'
  is_nullable: 0

=head2 adres

  data_type: 'varchar'
  is_nullable: 0
  size: 76

=head2 rsbank

  data_type: 'varchar'
  is_nullable: 0
  size: 18

=head2 adrbanka

  data_type: 'varchar'
  is_nullable: 0
  size: 76

=head2 director

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 telef

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 dzp

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 soc

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 amo

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 nak

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 pri

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 krb

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 namebank

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 citybank

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 kodbank

  data_type: 'varchar'
  is_nullable: 0
  size: 9

=head2 okpo

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 booc

  data_type: 'integer'
  is_nullable: 0

=head2 satelit

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 rskor

  data_type: 'varchar'
  is_nullable: 0
  size: 22

=head2 tp

  data_type: 'integer'
  is_nullable: 0

=head2 prnds

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 uslbank

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 activ

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 pasiv

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 money

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 pens

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 sum1

  data_type: 'decimal'
  is_nullable: 0
  size: [15,2]

=head2 usl1

  data_type: 'decimal'
  is_nullable: 0
  size: [15,2]

=head2 sum2

  data_type: 'decimal'
  is_nullable: 0
  size: [15,2]

=head2 usl2

  data_type: 'decimal'
  is_nullable: 0
  size: [15,2]

=head2 sum3

  data_type: 'decimal'
  is_nullable: 0
  size: [15,2]

=head2 usl3

  data_type: 'decimal'
  is_nullable: 0
  size: [15,2]

=head2 sum4

  data_type: 'decimal'
  is_nullable: 0
  size: [15,2]

=head2 usl4

  data_type: 'decimal'
  is_nullable: 0
  size: [15,2]

=head2 lines12

  data_type: 'integer'
  is_nullable: 0

=head2 pport

  data_type: 'integer'
  is_nullable: 0

=head2 svid

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 pnom

  data_type: 'varchar'
  is_nullable: 0
  size: 12

=head2 akcent

  data_type: 'integer'
  is_nullable: 0

=head2 armnalnak

  data_type: 'integer'
  is_nullable: 0

=head2 nalask

  data_type: 'integer'
  is_nullable: 0

=head2 paperfmt

  data_type: 'integer'
  is_nullable: 0

=head2 fiobuh

  data_type: 'varchar'
  is_nullable: 0
  size: 25

=head2 pustiska

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "sound",
  { data_type => "char", is_nullable => 0, size => 1 },
  "path",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "lines",
  { data_type => "integer", is_nullable => 0 },
  "naimsokr",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "naimpoln",
  { data_type => "varchar", is_nullable => 0, size => 76 },
  "naosnove",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "gorod",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "font",
  { data_type => "integer", is_nullable => 0 },
  "adres",
  { data_type => "varchar", is_nullable => 0, size => 76 },
  "rsbank",
  { data_type => "varchar", is_nullable => 0, size => 18 },
  "adrbanka",
  { data_type => "varchar", is_nullable => 0, size => 76 },
  "director",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "telef",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "dzp",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "soc",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "amo",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "nak",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "pri",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "krb",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "namebank",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "citybank",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "kodbank",
  { data_type => "varchar", is_nullable => 0, size => 9 },
  "okpo",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "booc",
  { data_type => "integer", is_nullable => 0 },
  "satelit",
  { data_type => "char", is_nullable => 0, size => 1 },
  "rskor",
  { data_type => "varchar", is_nullable => 0, size => 22 },
  "tp",
  { data_type => "integer", is_nullable => 0 },
  "prnds",
  { data_type => "char", is_nullable => 0, size => 1 },
  "uslbank",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "activ",
  { data_type => "char", is_nullable => 0, size => 3 },
  "pasiv",
  { data_type => "char", is_nullable => 0, size => 3 },
  "money",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "pens",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "sum1",
  { data_type => "decimal", is_nullable => 0, size => [15, 2] },
  "usl1",
  { data_type => "decimal", is_nullable => 0, size => [15, 2] },
  "sum2",
  { data_type => "decimal", is_nullable => 0, size => [15, 2] },
  "usl2",
  { data_type => "decimal", is_nullable => 0, size => [15, 2] },
  "sum3",
  { data_type => "decimal", is_nullable => 0, size => [15, 2] },
  "usl3",
  { data_type => "decimal", is_nullable => 0, size => [15, 2] },
  "sum4",
  { data_type => "decimal", is_nullable => 0, size => [15, 2] },
  "usl4",
  { data_type => "decimal", is_nullable => 0, size => [15, 2] },
  "lines12",
  { data_type => "integer", is_nullable => 0 },
  "pport",
  { data_type => "integer", is_nullable => 0 },
  "svid",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "pnom",
  { data_type => "varchar", is_nullable => 0, size => 12 },
  "akcent",
  { data_type => "integer", is_nullable => 0 },
  "armnalnak",
  { data_type => "integer", is_nullable => 0 },
  "nalask",
  { data_type => "integer", is_nullable => 0 },
  "paperfmt",
  { data_type => "integer", is_nullable => 0 },
  "fiobuh",
  { data_type => "varchar", is_nullable => 0, size => 25 },
  "pustiska",
  { data_type => "integer", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:A0SrAW56fjNEEoIx9eCrfA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
