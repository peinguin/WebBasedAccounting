use utf8;
package FinSchema::Result::Finstatus;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Finstatus

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

=head1 TABLE: C<finstatus>

=cut

__PACKAGE__->table("finstatus");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 psw

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 period

  data_type: 'integer'
  is_nullable: 1

=head2 uslog

  data_type: 'tinytext'
  is_nullable: 1

=head2 fulloper

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "psw",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "period",
  { data_type => "integer", is_nullable => 1 },
  "uslog",
  { data_type => "tinytext", is_nullable => 1 },
  "fulloper",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MMKX/gNyG67+481ouRckHQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
