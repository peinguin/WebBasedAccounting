use utf8;
package FinSchema::Result::Online;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Online

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

=head1 TABLE: C<online>

=cut

__PACKAGE__->table("online");

=head1 ACCESSORS

=head2 uid

  data_type: 'integer'
  is_nullable: 1

=head2 login

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 16

=head2 uniqkey

  data_type: 'text'
  is_nullable: 1

=head2 rtime

  data_type: 'text'
  is_nullable: 1

=head2 ip

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "uid",
  { data_type => "integer", is_nullable => 1 },
  "login",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 16 },
  "uniqkey",
  { data_type => "text", is_nullable => 1 },
  "rtime",
  { data_type => "text", is_nullable => 1 },
  "ip",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</login>

=back

=cut

__PACKAGE__->set_primary_key("login");


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+wzROh09EY0mqgPeygJ5lA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
