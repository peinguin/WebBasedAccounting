use utf8;
package FinSchema::Result::Sk;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Sk

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

=head1 TABLE: C<sk>

=cut

__PACKAGE__->table("sk");

=head1 ACCESSORS

=head2 sk

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 nom

  data_type: 'integer'
  is_nullable: 0

=head2 zfs

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 invisible

  data_type: 'char'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "sk",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "nom",
  { data_type => "integer", is_nullable => 0 },
  "zfs",
  { data_type => "char", is_nullable => 0, size => 3 },
  "invisible",
  { data_type => "char", is_nullable => 0, size => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:pSG4tuY3tqmX+123Ri4kqg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
