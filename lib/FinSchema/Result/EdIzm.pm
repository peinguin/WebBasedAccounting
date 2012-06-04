use utf8;
package FinSchema::Result::EdIzm;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::EdIzm

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

=head1 TABLE: C<ed_izm>

=cut

__PACKAGE__->table("ed_izm");

=head1 ACCESSORS

=head2 ei

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=cut

__PACKAGE__->add_columns("ei", { data_type => "varchar", is_nullable => 0, size => 6 });


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4Bbwdqem5/A178Qs/28DJg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
