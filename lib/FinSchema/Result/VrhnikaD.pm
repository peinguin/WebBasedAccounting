use utf8;
package FinSchema::Result::VrhnikaD;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::VrhnikaD

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

=head1 TABLE: C<vrhnika_d>

=cut

__PACKAGE__->table("vrhnika_d");

=head1 ACCESSORS

=head2 mashina

  data_type: 'integer'
  is_nullable: 0

=head2 data

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 summa

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 nachalo

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kinec

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 vid

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 cena

  data_type: 'decimal'
  is_nullable: 0
  size: [7,2]

=head2 termin

  data_type: 'integer'
  is_nullable: 0

=head2 oplata

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 dopuslugi

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 kol

  data_type: 'integer'
  is_nullable: 0

=head2 cenausl

  data_type: 'decimal'
  is_nullable: 0
  size: [5,2]

=head2 sumusl

  data_type: 'decimal'
  is_nullable: 0
  size: [5,2]

=head2 itogo

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 oplacheno

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 dolg

  data_type: 'decimal'
  is_nullable: 0
  size: [7,2]

=head2 zakryto

  data_type: 'integer'
  is_nullable: 0

=head2 pblack

  data_type: 'decimal'
  is_nullable: 0
  size: [4,1]

=head2 cenabl

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 skaner

  data_type: 'decimal'
  is_nullable: 0
  size: [4,1]

=head2 cenask

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 pcolor

  data_type: 'decimal'
  is_nullable: 0
  size: [4,1]

=head2 cenacol

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 disket

  data_type: 'decimal'
  is_nullable: 0
  size: [4,1]

=head2 cenad

  data_type: 'decimal'
  is_nullable: 0
  size: [6,2]

=head2 poleusl1

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 poleusl2

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 poleusl3

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 poleusl4

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 login1

  data_type: 'varchar'
  is_nullable: 0
  size: 13

=head2 login2

  data_type: 'varchar'
  is_nullable: 0
  size: 13

=head2 login3

  data_type: 'varchar'
  is_nullable: 0
  size: 13

=head2 login4

  data_type: 'varchar'
  is_nullable: 0
  size: 13

=cut

__PACKAGE__->add_columns(
  "mashina",
  { data_type => "integer", is_nullable => 0 },
  "data",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "summa",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "nachalo",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kinec",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "vid",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "cena",
  { data_type => "decimal", is_nullable => 0, size => [7, 2] },
  "termin",
  { data_type => "integer", is_nullable => 0 },
  "oplata",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "dopuslugi",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "kol",
  { data_type => "integer", is_nullable => 0 },
  "cenausl",
  { data_type => "decimal", is_nullable => 0, size => [5, 2] },
  "sumusl",
  { data_type => "decimal", is_nullable => 0, size => [5, 2] },
  "itogo",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "oplacheno",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "dolg",
  { data_type => "decimal", is_nullable => 0, size => [7, 2] },
  "zakryto",
  { data_type => "integer", is_nullable => 0 },
  "pblack",
  { data_type => "decimal", is_nullable => 0, size => [4, 1] },
  "cenabl",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "skaner",
  { data_type => "decimal", is_nullable => 0, size => [4, 1] },
  "cenask",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "pcolor",
  { data_type => "decimal", is_nullable => 0, size => [4, 1] },
  "cenacol",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "disket",
  { data_type => "decimal", is_nullable => 0, size => [4, 1] },
  "cenad",
  { data_type => "decimal", is_nullable => 0, size => [6, 2] },
  "poleusl1",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "poleusl2",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "poleusl3",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "poleusl4",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "login1",
  { data_type => "varchar", is_nullable => 0, size => 13 },
  "login2",
  { data_type => "varchar", is_nullable => 0, size => 13 },
  "login3",
  { data_type => "varchar", is_nullable => 0, size => 13 },
  "login4",
  { data_type => "varchar", is_nullable => 0, size => 13 },
);


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LUy5QHgavDoJlRfnXk0HOQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
