use utf8;
package FinSchema::Result::Dvig;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Dvig

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

=head1 TABLE: C<dvig>

=cut

__PACKAGE__->table("dvig");

=head1 ACCESSORS

=head2 nkor

  data_type: 'integer'
  is_nullable: 0

=head2 vop

  data_type: 'integer'
  is_nullable: 0

=head2 inv

  data_type: 'integer'
  is_nullable: 0

=head2 sth

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 sub

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 spod

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 la

  data_type: 'integer'
  is_nullable: 0

=head2 mol

  data_type: 'integer'
  is_nullable: 0

=head2 stoi

  data_type: 'decimal'
  is_nullable: 0
  size: [18,2]

=head2 kz_a

  data_type: 'varchar'
  is_nullable: 0
  size: 9

=head2 n_am

  data_type: 'integer'
  is_nullable: 0

=head2 n_pv

  data_type: 'decimal'
  is_nullable: 0
  size: [7,4]

=head2 k_o

  data_type: 'varchar'
  is_nullable: 0
  size: 7

=head2 d_vp

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 d_vv

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 d_f

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 z_n

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 naim

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 izn

  data_type: 'decimal'
  is_nullable: 0
  size: [18,2]

=head2 iznr

  data_type: 'decimal'
  is_nullable: 0
  size: [16,2]

=head2 dizn

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 reg_n

  data_type: 'varchar'
  is_nullable: 0
  size: 9

=head2 sd1

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 sd2

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 sd3

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 sd4

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 prob

  data_type: 'decimal'
  is_nullable: 0
  size: [7,3]

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 datop

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 stoo

  data_type: 'decimal'
  is_nullable: 1
  size: [8,0]

=head2 am_m

  data_type: 'decimal'
  is_nullable: 1
  size: [8,0]

=head2 iznt

  data_type: 'decimal'
  is_nullable: 1
  size: [8,0]

=head2 komehtap4

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 liksum

  data_type: 'integer'
  is_nullable: 1

=head2 idkrt

  data_type: 'integer'
  is_nullable: 1

=head2 dok

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=cut

__PACKAGE__->add_columns(
  "nkor",
  { data_type => "integer", is_nullable => 0 },
  "vop",
  { data_type => "integer", is_nullable => 0 },
  "inv",
  { data_type => "integer", is_nullable => 0 },
  "sth",
  { data_type => "char", is_nullable => 0, size => 2 },
  "sub",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "spod",
  { data_type => "char", is_nullable => 0, size => 3 },
  "la",
  { data_type => "integer", is_nullable => 0 },
  "mol",
  { data_type => "integer", is_nullable => 0 },
  "stoi",
  { data_type => "decimal", is_nullable => 0, size => [18, 2] },
  "kz_a",
  { data_type => "varchar", is_nullable => 0, size => 9 },
  "n_am",
  { data_type => "integer", is_nullable => 0 },
  "n_pv",
  { data_type => "decimal", is_nullable => 0, size => [7, 4] },
  "k_o",
  { data_type => "varchar", is_nullable => 0, size => 7 },
  "d_vp",
  { data_type => "char", is_nullable => 0, size => 2 },
  "d_vv",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "d_f",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "z_n",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "naim",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "izn",
  { data_type => "decimal", is_nullable => 0, size => [18, 2] },
  "iznr",
  { data_type => "decimal", is_nullable => 0, size => [16, 2] },
  "dizn",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "reg_n",
  { data_type => "varchar", is_nullable => 0, size => 9 },
  "sd1",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "sd2",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "sd3",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "sd4",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "prob",
  { data_type => "decimal", is_nullable => 0, size => [7, 3] },
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "datop",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "stoo",
  { data_type => "decimal", is_nullable => 1, size => [8, 0] },
  "am_m",
  { data_type => "decimal", is_nullable => 1, size => [8, 0] },
  "iznt",
  { data_type => "decimal", is_nullable => 1, size => [8, 0] },
  "komehtap4",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "liksum",
  { data_type => "integer", is_nullable => 1 },
  "idkrt",
  { data_type => "integer", is_nullable => 1 },
  "dok",
  { data_type => "varchar", is_nullable => 1, size => 8 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+2+A4R+QmfvVeptAynOcrA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
