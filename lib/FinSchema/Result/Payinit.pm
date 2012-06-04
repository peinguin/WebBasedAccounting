use utf8;
package FinSchema::Result::Payinit;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Payinit

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

=head1 TABLE: C<payinit>

=cut

__PACKAGE__->table("payinit");

=head1 ACCESSORS

=head2 sound

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 fcolor

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

=head2 adres

  data_type: 'varchar'
  is_nullable: 0
  size: 76

=head2 rsbank

  data_type: 'varchar'
  is_nullable: 0
  size: 9

=head2 rskor

  data_type: 'varchar'
  is_nullable: 0
  size: 9

=head2 adrbanka

  data_type: 'varchar'
  is_nullable: 0
  size: 76

=head2 dol

  data_type: 'varchar'
  is_nullable: 0
  size: 12

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

=head2 namebank

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 citybank

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 kodbank

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 okpo

  data_type: 'varchar'
  is_nullable: 0
  size: 9

=head2 ceh

  data_type: 'integer'
  is_nullable: 0

=head2 data

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 pnz

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 ot_dn

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 ot_kr

  data_type: 'integer'
  is_nullable: 0

=head2 pnbp

  data_type: 'integer'
  is_nullable: 0

=head2 tp

  data_type: 'integer'
  is_nullable: 0

=head2 okr

  data_type: 'integer'
  is_nullable: 0

=head2 pport

  data_type: 'integer'
  is_nullable: 0

=head2 nds

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 mhelp1

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 mhelp2

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 mhelp3

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 vdivide1

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 vdivide2

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 vdivide3

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 arenda

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 arenda1

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 arenda2

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 komisia

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 proch1

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 proch2

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 proch3

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 proch4

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 proch5

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 proch6

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 proch7

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 proch8

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 kvartal

  data_type: 'integer'
  is_nullable: 0

=head2 nalogi

  data_type: 'integer'
  is_nullable: 0

=head2 dead

  data_type: 'integer'
  is_nullable: 0

=head2 doppn

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 doppn1

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 doppn2

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 skvoznak

  data_type: 'integer'
  is_nullable: 0

=head2 nazva

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 bookkeep

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 keepnum

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 chefnum

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 cheffone

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 keepfone

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 kodmudakov

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 nammudakov

  data_type: 'varchar'
  is_nullable: 0
  size: 56

=head2 paperfmt

  data_type: 'integer'
  is_nullable: 0

=head2 font

  data_type: 'integer'
  is_nullable: 0

=head2 lines12

  data_type: 'integer'
  is_nullable: 0

=head2 buxnom

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 mavan

  data_type: 'integer'
  is_nullable: 0

=head2 penpna

  data_type: 'varchar'
  is_nullable: 0
  size: 17

=cut

__PACKAGE__->add_columns(
  "sound",
  { data_type => "char", is_nullable => 0, size => 1 },
  "fcolor",
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
  "adres",
  { data_type => "varchar", is_nullable => 0, size => 76 },
  "rsbank",
  { data_type => "varchar", is_nullable => 0, size => 9 },
  "rskor",
  { data_type => "varchar", is_nullable => 0, size => 9 },
  "adrbanka",
  { data_type => "varchar", is_nullable => 0, size => 76 },
  "dol",
  { data_type => "varchar", is_nullable => 0, size => 12 },
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
  "namebank",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "citybank",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "kodbank",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "okpo",
  { data_type => "varchar", is_nullable => 0, size => 9 },
  "ceh",
  { data_type => "integer", is_nullable => 0 },
  "data",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "pnz",
  { data_type => "char", is_nullable => 0, size => 1 },
  "ot_dn",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "ot_kr",
  { data_type => "integer", is_nullable => 0 },
  "pnbp",
  { data_type => "integer", is_nullable => 0 },
  "tp",
  { data_type => "integer", is_nullable => 0 },
  "okr",
  { data_type => "integer", is_nullable => 0 },
  "pport",
  { data_type => "integer", is_nullable => 0 },
  "nds",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "mhelp1",
  { data_type => "char", is_nullable => 0, size => 3 },
  "mhelp2",
  { data_type => "char", is_nullable => 0, size => 3 },
  "mhelp3",
  { data_type => "char", is_nullable => 0, size => 3 },
  "vdivide1",
  { data_type => "char", is_nullable => 0, size => 3 },
  "vdivide2",
  { data_type => "char", is_nullable => 0, size => 3 },
  "vdivide3",
  { data_type => "char", is_nullable => 0, size => 3 },
  "arenda",
  { data_type => "char", is_nullable => 0, size => 3 },
  "arenda1",
  { data_type => "char", is_nullable => 0, size => 3 },
  "arenda2",
  { data_type => "char", is_nullable => 0, size => 3 },
  "komisia",
  { data_type => "char", is_nullable => 0, size => 3 },
  "proch1",
  { data_type => "char", is_nullable => 0, size => 3 },
  "proch2",
  { data_type => "char", is_nullable => 0, size => 3 },
  "proch3",
  { data_type => "char", is_nullable => 0, size => 3 },
  "proch4",
  { data_type => "char", is_nullable => 0, size => 3 },
  "proch5",
  { data_type => "char", is_nullable => 0, size => 3 },
  "proch6",
  { data_type => "char", is_nullable => 0, size => 3 },
  "proch7",
  { data_type => "char", is_nullable => 0, size => 3 },
  "proch8",
  { data_type => "char", is_nullable => 0, size => 3 },
  "kvartal",
  { data_type => "integer", is_nullable => 0 },
  "nalogi",
  { data_type => "integer", is_nullable => 0 },
  "dead",
  { data_type => "integer", is_nullable => 0 },
  "doppn",
  { data_type => "char", is_nullable => 0, size => 3 },
  "doppn1",
  { data_type => "char", is_nullable => 0, size => 3 },
  "doppn2",
  { data_type => "char", is_nullable => 0, size => 3 },
  "skvoznak",
  { data_type => "integer", is_nullable => 0 },
  "nazva",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "bookkeep",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "keepnum",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "chefnum",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "cheffone",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "keepfone",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "kodmudakov",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "nammudakov",
  { data_type => "varchar", is_nullable => 0, size => 56 },
  "paperfmt",
  { data_type => "integer", is_nullable => 0 },
  "font",
  { data_type => "integer", is_nullable => 0 },
  "lines12",
  { data_type => "integer", is_nullable => 0 },
  "buxnom",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "mavan",
  { data_type => "integer", is_nullable => 0 },
  "penpna",
  { data_type => "varchar", is_nullable => 0, size => 17 },
);


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:O1vd8lsB8GyqESyW4nqVIw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
