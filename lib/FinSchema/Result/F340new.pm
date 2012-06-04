use utf8;
package FinSchema::Result::F340new;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::F340new

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

=head1 TABLE: C<f340new>

=cut

__PACKAGE__->table("f340new");

=head1 ACCESSORS

=head2 oc

  data_type: 'integer'
  is_nullable: 1

=head2 coc

  data_type: 'integer'
  is_nullable: 1

=head2 kau

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 ceh1

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 kc

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 ceh2

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 booc

  data_type: 'integer'
  is_nullable: 0

=head2 data

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 summa

  data_type: 'decimal'
  is_nullable: 0
  size: [17,2]

=head2 priznak

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 satelit

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 num1

  data_type: 'integer'
  is_nullable: 0

=head2 num

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 27

=head2 kol1

  data_type: 'integer'
  is_nullable: 0

=head2 kol2

  data_type: 'integer'
  is_nullable: 0

=head2 kol3

  data_type: 'integer'
  is_nullable: 0

=head2 object

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 sprnum

  data_type: 'integer'
  is_nullable: 0

=head2 sprnum1

  data_type: 'integer'
  is_nullable: 0

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 idzakkc

  data_type: 'integer'
  is_nullable: 1

=head2 zaknamekc

  data_type: 'tinytext'
  is_nullable: 1

=head2 idzak

  data_type: 'integer'
  is_nullable: 1

=head2 zakname

  data_type: 'tinytext'
  is_nullable: 1

=head2 iduser

  data_type: 'integer'
  is_nullable: 1

=head2 doc

  data_type: 'integer'
  is_nullable: 1

=head2 dok

  data_type: 'integer'
  is_nullable: 1

=head2 idsimetr

  data_type: 'integer'
  is_nullable: 1

=head2 perc

  data_type: 'decimal'
  is_nullable: 1
  size: [5,2]

=cut

__PACKAGE__->add_columns(
  "oc",
  { data_type => "integer", is_nullable => 1 },
  "coc",
  { data_type => "integer", is_nullable => 1 },
  "kau",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "ceh1",
  { data_type => "char", is_nullable => 0, size => 3 },
  "kc",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "ceh2",
  { data_type => "char", is_nullable => 0, size => 3 },
  "booc",
  { data_type => "integer", is_nullable => 0 },
  "data",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "summa",
  { data_type => "decimal", is_nullable => 0, size => [17, 2] },
  "priznak",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "satelit",
  { data_type => "char", is_nullable => 0, size => 1 },
  "num1",
  { data_type => "integer", is_nullable => 0 },
  "num",
  { data_type => "char", is_nullable => 0, size => 3 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 27 },
  "kol1",
  { data_type => "integer", is_nullable => 0 },
  "kol2",
  { data_type => "integer", is_nullable => 0 },
  "kol3",
  { data_type => "integer", is_nullable => 0 },
  "object",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "sprnum",
  { data_type => "integer", is_nullable => 0 },
  "sprnum1",
  { data_type => "integer", is_nullable => 0 },
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "idzakkc",
  { data_type => "integer", is_nullable => 1 },
  "zaknamekc",
  { data_type => "tinytext", is_nullable => 1 },
  "idzak",
  { data_type => "integer", is_nullable => 1 },
  "zakname",
  { data_type => "tinytext", is_nullable => 1 },
  "iduser",
  { data_type => "integer", is_nullable => 1 },
  "doc",
  { data_type => "integer", is_nullable => 1 },
  "dok",
  { data_type => "integer", is_nullable => 1 },
  "idsimetr",
  { data_type => "integer", is_nullable => 1 },
  "perc",
  { data_type => "decimal", is_nullable => 1, size => [5, 2] },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FZh6HfgmnFSFD/kp6q10sQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
