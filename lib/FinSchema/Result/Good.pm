use utf8;
package FinSchema::Result::Good;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Good

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

=head1 TABLE: C<good>

=cut

__PACKAGE__->table("good");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 descr

  data_type: 'text'
  is_nullable: 1

=head2 id_oncle

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 cost

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [50,2]

=head2 val

  data_type: 'enum'
  default_value: 'RUB'
  extra: {list => ["RUB","USD"]}
  is_nullable: 0

=head2 nds

  data_type: 'enum'
  default_value: 20
  extra: {list => [20,10,0,"-"]}
  is_nullable: 0

=head2 rem

  data_type: 'text'
  is_nullable: 1

=head2 made

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "descr",
  { data_type => "text", is_nullable => 1 },
  "id_oncle",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "cost",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [50, 2],
  },
  "val",
  {
    data_type => "enum",
    default_value => "RUB",
    extra => { list => ["RUB", "USD"] },
    is_nullable => 0,
  },
  "nds",
  {
    data_type => "enum",
    default_value => 20,
    extra => { list => [20, 10, 0, "-"] },
    is_nullable => 0,
  },
  "rem",
  { data_type => "text", is_nullable => 1 },
  "made",
  { data_type => "varchar", is_nullable => 1, size => 100 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QxuDpNRF6rF+HvDHcG9TAA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
