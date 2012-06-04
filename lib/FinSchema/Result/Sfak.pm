use utf8;
package FinSchema::Result::Sfak;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Sfak

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

=head1 TABLE: C<sfak>

=cut

__PACKAGE__->table("sfak");

=head1 ACCESSORS

=head2 number

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 postav

  data_type: 'text'
  is_nullable: 0

=head2 plat

  data_type: 'varchar'
  is_nullable: 0
  size: 76

=head2 gorod

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 adres

  data_type: 'text'
  is_nullable: 0

=head2 rsbank

  data_type: 'varchar'
  is_nullable: 0
  size: 18

=head2 citybank

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 adrbanka

  data_type: 'varchar'
  is_nullable: 0
  size: 76

=head2 kodbank

  data_type: 'varchar'
  is_nullable: 0
  size: 9

=head2 namebank

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 datascheta

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 tovar

  data_type: 'text'
  is_nullable: 0

=head2 cena

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 kolich

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 ed

  data_type: 'text'
  is_nullable: 0

=head2 nds

  data_type: 'integer'
  is_nullable: 0

=head2 kom1

  data_type: 'text'
  is_nullable: 0

=head2 kom2

  data_type: 'text'
  is_nullable: 0

=head2 t1

  data_type: 'text'
  is_nullable: 0

=head2 k1

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 e1

  data_type: 'text'
  is_nullable: 0

=head2 c1

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 t2

  data_type: 'text'
  is_nullable: 0

=head2 k2

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 e2

  data_type: 'text'
  is_nullable: 0

=head2 c2

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 t3

  data_type: 'text'
  is_nullable: 0

=head2 k3

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 e3

  data_type: 'text'
  is_nullable: 0

=head2 c3

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 t4

  data_type: 'text'
  is_nullable: 0

=head2 k4

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 e4

  data_type: 'text'
  is_nullable: 0

=head2 c4

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 t5

  data_type: 'text'
  is_nullable: 0

=head2 k5

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 e5

  data_type: 'text'
  is_nullable: 0

=head2 c5

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 t6

  data_type: 'text'
  is_nullable: 0

=head2 e6

  data_type: 'text'
  is_nullable: 0

=head2 k6

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 c6

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 t7

  data_type: 'text'
  is_nullable: 0

=head2 e7

  data_type: 'text'
  is_nullable: 0

=head2 k7

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 c7

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 t8

  data_type: 'text'
  is_nullable: 0

=head2 e8

  data_type: 'text'
  is_nullable: 0

=head2 k8

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 c8

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 t9

  data_type: 'text'
  is_nullable: 0

=head2 e9

  data_type: 'text'
  is_nullable: 0

=head2 k9

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=head2 c9

  data_type: 'decimal'
  is_nullable: 0
  size: [9,2]

=cut

__PACKAGE__->add_columns(
  "number",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "postav",
  { data_type => "text", is_nullable => 0 },
  "plat",
  { data_type => "varchar", is_nullable => 0, size => 76 },
  "gorod",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "adres",
  { data_type => "text", is_nullable => 0 },
  "rsbank",
  { data_type => "varchar", is_nullable => 0, size => 18 },
  "citybank",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "adrbanka",
  { data_type => "varchar", is_nullable => 0, size => 76 },
  "kodbank",
  { data_type => "varchar", is_nullable => 0, size => 9 },
  "namebank",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "datascheta",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "tovar",
  { data_type => "text", is_nullable => 0 },
  "cena",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "kolich",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "ed",
  { data_type => "text", is_nullable => 0 },
  "nds",
  { data_type => "integer", is_nullable => 0 },
  "kom1",
  { data_type => "text", is_nullable => 0 },
  "kom2",
  { data_type => "text", is_nullable => 0 },
  "t1",
  { data_type => "text", is_nullable => 0 },
  "k1",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "e1",
  { data_type => "text", is_nullable => 0 },
  "c1",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "t2",
  { data_type => "text", is_nullable => 0 },
  "k2",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "e2",
  { data_type => "text", is_nullable => 0 },
  "c2",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "t3",
  { data_type => "text", is_nullable => 0 },
  "k3",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "e3",
  { data_type => "text", is_nullable => 0 },
  "c3",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "t4",
  { data_type => "text", is_nullable => 0 },
  "k4",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "e4",
  { data_type => "text", is_nullable => 0 },
  "c4",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "t5",
  { data_type => "text", is_nullable => 0 },
  "k5",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "e5",
  { data_type => "text", is_nullable => 0 },
  "c5",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "t6",
  { data_type => "text", is_nullable => 0 },
  "e6",
  { data_type => "text", is_nullable => 0 },
  "k6",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "c6",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "t7",
  { data_type => "text", is_nullable => 0 },
  "e7",
  { data_type => "text", is_nullable => 0 },
  "k7",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "c7",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "t8",
  { data_type => "text", is_nullable => 0 },
  "e8",
  { data_type => "text", is_nullable => 0 },
  "k8",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "c8",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "t9",
  { data_type => "text", is_nullable => 0 },
  "e9",
  { data_type => "text", is_nullable => 0 },
  "k9",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
  "c9",
  { data_type => "decimal", is_nullable => 0, size => [9, 2] },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<number>

=over 4

=item * L</number>

=back

=cut

__PACKAGE__->add_unique_constraint("number", ["number"]);


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sbw2ANCsO6cokUFqnYVhPA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
