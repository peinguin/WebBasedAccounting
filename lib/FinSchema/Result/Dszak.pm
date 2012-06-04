use utf8;
package FinSchema::Result::Dszak;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Dszak

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

=head1 TABLE: C<dszak>

=cut

__PACKAGE__->table("dszak");

=head1 ACCESSORS

=head2 naimsokr

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 naimpoln

  data_type: 'varchar'
  is_nullable: 0
  size: 76

=head2 status

  data_type: 'integer'
  is_nullable: 0

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

=head2 citybank

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 kodbank

  data_type: 'varchar'
  is_nullable: 0
  size: 9

=head2 namebank

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 shifra

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 coc

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 rskor

  data_type: 'varchar'
  is_nullable: 0
  size: 18

=head2 pnom

  data_type: 'varchar'
  is_nullable: 0
  size: 12

=head2 svid

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=cut

__PACKAGE__->add_columns(
  "naimsokr",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "naimpoln",
  { data_type => "varchar", is_nullable => 0, size => 76 },
  "status",
  { data_type => "integer", is_nullable => 0 },
  "gorod",
  { data_type => "varchar", is_nullable => 0, size => 20 },
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
  "citybank",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "kodbank",
  { data_type => "varchar", is_nullable => 0, size => 9 },
  "namebank",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "shifra",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "coc",
  { data_type => "char", is_nullable => 0, size => 2 },
  "rskor",
  { data_type => "varchar", is_nullable => 0, size => 18 },
  "pnom",
  { data_type => "varchar", is_nullable => 0, size => 12 },
  "svid",
  { data_type => "varchar", is_nullable => 0, size => 10 },
);


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eJaKoaiLFqSKquKspjoeOg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
