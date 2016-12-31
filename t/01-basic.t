use v6;
use Test;
use lib ('../lib','lib');
use Math::Constants;

my @constants-names = <G phi plancks-h plancks-reduced-h>;
my @constants;
@constants-names ==> map  { EVAL $_  }  ==> @constants;

@constants.map( { is .WHAT, (Num), "Type OK"} ); 

is c.WHAT, (Int), "c is OK";

is-approx ℎ/(2*π), ℏ, "Planck's constants";
is-approx φ, (1 + sqrt(5))/2, "Golden ratio";
is-approx α, 0.0073, "Fine structure";			  

done-testing;
