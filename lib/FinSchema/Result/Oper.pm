use utf8;
package FinSchema::Result::Oper;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FinSchema::Result::Oper

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

=head1 TABLE: C<oper>

=cut

__PACKAGE__->table("oper");

=head1 ACCESSORS

=head2 oc

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau

  data_type: 'varchar'
  is_nullable: 0
  size: 5

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

=head2 booc

  data_type: 'integer'
  is_nullable: 0

=head2 perc

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 satelit

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 obor

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 num

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 num1

  data_type: 'integer'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 27

=head2 oc1

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc1

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau1

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc1

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc1

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc1

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc1

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com1

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc2

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc2

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau2

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc2

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc2

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc2

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc2

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com2

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc3

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc3

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau3

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc3

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc3

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc3

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc3

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com3

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc4

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc4

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau4

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc4

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc4

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc4

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc4

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com4

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc5

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc5

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau5

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc5

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc5

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc5

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc5

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com5

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc6

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc6

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau6

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc6

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc6

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc6

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc6

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com6

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc7

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc7

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau7

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc7

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc7

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc7

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc7

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com7

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc8

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc8

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau8

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc8

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc8

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc8

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc8

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com8

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc9

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc9

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau9

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc9

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc9

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc9

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc9

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com9

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc10

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc10

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau10

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc10

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc10

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc10

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc10

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com10

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc11

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc11

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau11

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc11

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc11

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc11

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc11

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com11

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc12

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc12

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau12

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc12

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc12

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc12

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc12

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com12

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc13

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc13

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau13

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc13

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc13

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc13

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc13

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com13

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc14

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc14

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau14

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc14

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc14

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc14

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc14

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com14

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc15

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc15

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau15

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc15

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc15

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc15

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc15

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com15

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc16

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc16

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau16

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc16

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc16

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc16

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc16

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com16

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc17

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc17

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau17

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc17

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc17

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc17

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc17

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com17

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc18

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc18

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau18

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc18

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc18

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc18

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc18

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com18

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc19

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc19

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau19

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc19

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc19

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc19

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc19

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com19

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 oc20

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 coc20

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kau20

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 kc20

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 ckc20

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 kaukc20

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 perc20

  data_type: 'decimal'
  is_nullable: 0
  size: [10,6]

=head2 com20

  data_type: 'varchar'
  is_nullable: 0
  size: 19

=head2 snum

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc

  data_type: 'integer'
  is_nullable: 0

=head2 snum1

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc1

  data_type: 'integer'
  is_nullable: 0

=head2 snum2

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc2

  data_type: 'integer'
  is_nullable: 0

=head2 snum3

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc3

  data_type: 'integer'
  is_nullable: 0

=head2 snum4

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc4

  data_type: 'integer'
  is_nullable: 0

=head2 snum5

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc5

  data_type: 'integer'
  is_nullable: 0

=head2 snum6

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc6

  data_type: 'integer'
  is_nullable: 0

=head2 snum7

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc7

  data_type: 'integer'
  is_nullable: 0

=head2 snum8

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc8

  data_type: 'integer'
  is_nullable: 0

=head2 snum9

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc9

  data_type: 'integer'
  is_nullable: 0

=head2 snum10

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc10

  data_type: 'integer'
  is_nullable: 0

=head2 snum11

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc11

  data_type: 'integer'
  is_nullable: 0

=head2 snum12

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc12

  data_type: 'integer'
  is_nullable: 0

=head2 snum13

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc13

  data_type: 'integer'
  is_nullable: 0

=head2 snum14

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc14

  data_type: 'integer'
  is_nullable: 0

=head2 snum15

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc15

  data_type: 'integer'
  is_nullable: 0

=head2 snum16

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc16

  data_type: 'integer'
  is_nullable: 0

=head2 snum17

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc17

  data_type: 'integer'
  is_nullable: 0

=head2 snum18

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc18

  data_type: 'integer'
  is_nullable: 0

=head2 snum19

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc19

  data_type: 'integer'
  is_nullable: 0

=head2 snum20

  data_type: 'integer'
  is_nullable: 0

=head2 snumkc20

  data_type: 'integer'
  is_nullable: 0

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "oc",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "booc",
  { data_type => "integer", is_nullable => 0 },
  "perc",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "satelit",
  { data_type => "char", is_nullable => 0, size => 1 },
  "obor",
  { data_type => "char", is_nullable => 0, size => 1 },
  "num",
  { data_type => "char", is_nullable => 0, size => 3 },
  "num1",
  { data_type => "integer", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 27 },
  "oc1",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc1",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau1",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc1",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc1",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc1",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc1",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com1",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc2",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc2",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau2",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc2",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc2",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc2",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc2",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com2",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc3",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc3",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau3",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc3",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc3",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc3",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc3",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com3",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc4",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc4",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau4",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc4",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc4",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc4",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc4",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com4",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc5",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc5",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau5",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc5",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc5",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc5",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc5",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com5",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc6",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc6",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau6",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc6",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc6",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc6",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc6",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com6",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc7",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc7",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau7",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc7",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc7",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc7",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc7",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com7",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc8",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc8",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau8",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc8",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc8",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc8",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc8",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com8",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc9",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc9",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau9",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc9",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc9",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc9",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc9",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com9",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc10",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc10",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau10",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc10",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc10",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc10",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc10",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com10",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc11",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc11",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau11",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc11",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc11",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc11",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc11",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com11",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc12",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc12",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau12",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc12",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc12",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc12",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc12",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com12",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc13",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc13",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau13",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc13",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc13",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc13",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc13",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com13",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc14",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc14",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau14",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc14",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc14",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc14",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc14",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com14",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc15",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc15",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau15",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc15",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc15",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc15",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc15",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com15",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc16",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc16",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau16",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc16",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc16",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc16",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc16",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com16",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc17",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc17",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau17",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc17",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc17",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc17",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc17",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com17",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc18",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc18",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau18",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc18",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc18",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc18",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc18",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com18",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc19",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc19",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau19",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc19",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc19",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc19",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc19",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com19",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "oc20",
  { data_type => "char", is_nullable => 0, size => 2 },
  "coc20",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kau20",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "kc20",
  { data_type => "char", is_nullable => 0, size => 2 },
  "ckc20",
  { data_type => "char", is_nullable => 0, size => 2 },
  "kaukc20",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "perc20",
  { data_type => "decimal", is_nullable => 0, size => [10, 6] },
  "com20",
  { data_type => "varchar", is_nullable => 0, size => 19 },
  "snum",
  { data_type => "integer", is_nullable => 0 },
  "snumkc",
  { data_type => "integer", is_nullable => 0 },
  "snum1",
  { data_type => "integer", is_nullable => 0 },
  "snumkc1",
  { data_type => "integer", is_nullable => 0 },
  "snum2",
  { data_type => "integer", is_nullable => 0 },
  "snumkc2",
  { data_type => "integer", is_nullable => 0 },
  "snum3",
  { data_type => "integer", is_nullable => 0 },
  "snumkc3",
  { data_type => "integer", is_nullable => 0 },
  "snum4",
  { data_type => "integer", is_nullable => 0 },
  "snumkc4",
  { data_type => "integer", is_nullable => 0 },
  "snum5",
  { data_type => "integer", is_nullable => 0 },
  "snumkc5",
  { data_type => "integer", is_nullable => 0 },
  "snum6",
  { data_type => "integer", is_nullable => 0 },
  "snumkc6",
  { data_type => "integer", is_nullable => 0 },
  "snum7",
  { data_type => "integer", is_nullable => 0 },
  "snumkc7",
  { data_type => "integer", is_nullable => 0 },
  "snum8",
  { data_type => "integer", is_nullable => 0 },
  "snumkc8",
  { data_type => "integer", is_nullable => 0 },
  "snum9",
  { data_type => "integer", is_nullable => 0 },
  "snumkc9",
  { data_type => "integer", is_nullable => 0 },
  "snum10",
  { data_type => "integer", is_nullable => 0 },
  "snumkc10",
  { data_type => "integer", is_nullable => 0 },
  "snum11",
  { data_type => "integer", is_nullable => 0 },
  "snumkc11",
  { data_type => "integer", is_nullable => 0 },
  "snum12",
  { data_type => "integer", is_nullable => 0 },
  "snumkc12",
  { data_type => "integer", is_nullable => 0 },
  "snum13",
  { data_type => "integer", is_nullable => 0 },
  "snumkc13",
  { data_type => "integer", is_nullable => 0 },
  "snum14",
  { data_type => "integer", is_nullable => 0 },
  "snumkc14",
  { data_type => "integer", is_nullable => 0 },
  "snum15",
  { data_type => "integer", is_nullable => 0 },
  "snumkc15",
  { data_type => "integer", is_nullable => 0 },
  "snum16",
  { data_type => "integer", is_nullable => 0 },
  "snumkc16",
  { data_type => "integer", is_nullable => 0 },
  "snum17",
  { data_type => "integer", is_nullable => 0 },
  "snumkc17",
  { data_type => "integer", is_nullable => 0 },
  "snum18",
  { data_type => "integer", is_nullable => 0 },
  "snumkc18",
  { data_type => "integer", is_nullable => 0 },
  "snum19",
  { data_type => "integer", is_nullable => 0 },
  "snumkc19",
  { data_type => "integer", is_nullable => 0 },
  "snum20",
  { data_type => "integer", is_nullable => 0 },
  "snumkc20",
  { data_type => "integer", is_nullable => 0 },
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07023 @ 2012-05-31 08:05:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hu1kaiurWnWpoDjVpKcXVQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
