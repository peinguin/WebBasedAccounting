use utf8;
package FinSchema::Result::Directory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Directory

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

=head1 TABLE: C<directory>

=cut

__PACKAGE__->table("directory");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 naimsokr

  data_type: 'text'
  is_nullable: 1

=head2 naimpoln

  data_type: 'text'
  is_nullable: 1

=head2 status

  data_type: 'text'
  is_nullable: 1

=head2 gorod

  data_type: 'text'
  is_nullable: 1

=head2 adres

  data_type: 'text'
  is_nullable: 1

=head2 rsbank

  data_type: 'text'
  is_nullable: 1

=head2 adrbank

  data_type: 'text'
  is_nullable: 1

=head2 director

  data_type: 'text'
  is_nullable: 1

=head2 telefon

  data_type: 'text'
  is_nullable: 1

=head2 citybank

  data_type: 'text'
  is_nullable: 1

=head2 kodbank

  data_type: 'text'
  is_nullable: 1

=head2 namebank

  data_type: 'text'
  is_nullable: 1

=head2 shifra

  data_type: 'text'
  is_nullable: 1

=head2 coc

  data_type: 'text'
  is_nullable: 1

=head2 rskor

  data_type: 'text'
  is_nullable: 1

=head2 pnom

  data_type: 'text'
  is_nullable: 1

=head2 svid

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "naimsokr",
  { data_type => "text", is_nullable => 1 },
  "naimpoln",
  { data_type => "text", is_nullable => 1 },
  "status",
  { data_type => "text", is_nullable => 1 },
  "gorod",
  { data_type => "text", is_nullable => 1 },
  "adres",
  { data_type => "text", is_nullable => 1 },
  "rsbank",
  { data_type => "text", is_nullable => 1 },
  "adrbank",
  { data_type => "text", is_nullable => 1 },
  "director",
  { data_type => "text", is_nullable => 1 },
  "telefon",
  { data_type => "text", is_nullable => 1 },
  "citybank",
  { data_type => "text", is_nullable => 1 },
  "kodbank",
  { data_type => "text", is_nullable => 1 },
  "namebank",
  { data_type => "text", is_nullable => 1 },
  "shifra",
  { data_type => "text", is_nullable => 1 },
  "coc",
  { data_type => "text", is_nullable => 1 },
  "rskor",
  { data_type => "text", is_nullable => 1 },
  "pnom",
  { data_type => "text", is_nullable => 1 },
  "svid",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0s9NbbhU+TH+oWDmRfgVrA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
