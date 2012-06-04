use utf8;
package FinSchema::Result::Pstatus;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Pstatus

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

=head1 TABLE: C<pstatus>

=cut

__PACKAGE__->table("pstatus");

=head1 ACCESSORS

=head2 zapis

  data_type: 'text'
  is_nullable: 0

=head2 par1

  data_type: 'text'
  is_nullable: 0

=head2 par2

  data_type: 'text'
  is_nullable: 0

=head2 par3

  data_type: 'text'
  is_nullable: 0

=head2 par4

  data_type: 'text'
  is_nullable: 0

=head2 recnum

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 copykardsklad

  data_type: 'varchar'
  default_value: 1
  is_nullable: 0
  size: 3

=cut

__PACKAGE__->add_columns(
  "zapis",
  { data_type => "text", is_nullable => 0 },
  "par1",
  { data_type => "text", is_nullable => 0 },
  "par2",
  { data_type => "text", is_nullable => 0 },
  "par3",
  { data_type => "text", is_nullable => 0 },
  "par4",
  { data_type => "text", is_nullable => 0 },
  "recnum",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "copykardsklad",
  { data_type => "varchar", default_value => 1, is_nullable => 0, size => 3 },
);

=head1 PRIMARY KEY

=over 4

=item * L</recnum>

=back

=cut

__PACKAGE__->set_primary_key("recnum");


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vuhJs/msRDYU77zWmHl2Iw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
