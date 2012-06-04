use utf8;
package FinSchema::Result::Poruc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Poruc

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

=head1 TABLE: C<poruc>

=cut

__PACKAGE__->table("poruc");

=head1 ACCESSORS

=head2 summa

  data_type: 'decimal'
  is_nullable: 0
  size: [15,2]

=head2 summa1

  data_type: 'decimal'
  is_nullable: 0
  size: [15,2]

=head2 kau

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 naimpoln

  data_type: 'varchar'
  is_nullable: 0
  size: 76

=head2 klient

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 kodk

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 rsklient

  data_type: 'varchar'
  is_nullable: 0
  size: 18

=head2 bankk

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 cityklient

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 data

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 zachto

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 zachto1

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 zachto2

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 zachto3

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 number

  data_type: 'integer'
  is_nullable: 0

=head2 okpo

  data_type: 'varchar'
  is_nullable: 0
  size: 9

=head2 ndata

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 rskor

  data_type: 'varchar'
  is_nullable: 0
  size: 18

=head2 plat

  data_type: 'varchar'
  is_nullable: 0
  size: 76

=head2 datausl

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=cut

__PACKAGE__->add_columns(
  "summa",
  { data_type => "decimal", is_nullable => 0, size => [15, 2] },
  "summa1",
  { data_type => "decimal", is_nullable => 0, size => [15, 2] },
  "kau",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "naimpoln",
  { data_type => "varchar", is_nullable => 0, size => 76 },
  "klient",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "kodk",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "rsklient",
  { data_type => "varchar", is_nullable => 0, size => 18 },
  "bankk",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "cityklient",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "data",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "zachto",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "zachto1",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "zachto2",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "zachto3",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "number",
  { data_type => "integer", is_nullable => 0 },
  "okpo",
  { data_type => "varchar", is_nullable => 0, size => 9 },
  "ndata",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "rskor",
  { data_type => "varchar", is_nullable => 0, size => 18 },
  "plat",
  { data_type => "varchar", is_nullable => 0, size => 76 },
  "datausl",
  { data_type => "varchar", is_nullable => 0, size => 10 },
);


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:k/Wc8nmZarWAB/gKIu+TGQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
