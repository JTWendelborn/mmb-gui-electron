function [residual, g1, g2, g3] = US_ACELswt_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations.
%                                          Dynare may prepend or append auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g3        [M_.endo_nbr by (M_.endo_nbr)^3] double   Third derivatives matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 69, 1);

%
% Model equations
%

T155 = (1-params(38))/(1+params(69)-params(38));
T159 = params(69)/(1+params(69)-params(38));
T168 = 1/(1-params(35));
T180 = (params(68)*params(43))^2;
T202 = y(19)*T180*params(37)*params(51)+y(22)*T180*params(37)*params(51)/(1-params(35))-y(19)*params(51)*T180-y(22)*params(51)*T180/(1-params(35));
T209 = T168*params(82)/(params(82)+params(83));
T217 = params(45)*params(71)/(1+params(45)*params(71)-params(45));
T229 = (1-params(35))^2;
T235 = y(19)*(-1)/(1-params(35))-y(22)*1/T229+T168*y(41);
T262 = params(35)/(1-params(35));
T264 = params(82)*T262/(params(82)+params(83));
T278 = T168*y(41)+y(19)*(-params(35))/(1-params(35))-y(22)*params(35)/T229;
T287 = params(71)/(params(71)-1)/(2+params(84));
T297 = (1/(params(68)*params(79)-params(79)*params(36)))^2;
T306 = 1/(params(79)*(1-params(36)/params(68)))^2;
T333 = params(79)*params(36)*T306/params(68);
T348 = y(19)*params(79)*params(68)*T297*params(37)*params(36)+y(22)*params(35)*params(79)*params(68)*T297*params(37)*params(36)/(1-params(35))-y(19)*T333-y(22)*params(35)*T333/(1-params(35));
T399 = params(72)*params(79)^2/params(80);
T405 = (1-(1-params(38))/(params(68)*params(43)))*params(77);
T416 = params(69)*params(77)/(params(68)*params(43))-params(35)*(params(82)+params(83));
T423 = params(35)*(params(82)+params(83))/(1-params(35));
T424 = y(22)*T423;
T433 = params(48)*params(81)/(params(48)*params(81)-params(80));
T438 = params(80)/(params(48)*params(81)-params(80));
T451 = params(35)*(params(82)+params(83))-params(69)*params(77)/(params(68)*params(43));
T459 = 1/params(52);
lhs =y(42);
rhs =4*y(13);
residual(1)= lhs-rhs;
lhs =y(43);
rhs =y(5)+y(5)+y(5)+y(5);
residual(2)= lhs-rhs;
lhs =y(44);
rhs =4*y(5);
residual(3)= lhs-rhs;
lhs =y(45);
rhs =y(12)-y(36);
residual(4)= lhs-rhs;
lhs =y(46);
rhs =y(12);
residual(5)= lhs-rhs;
lhs =y(42);
rhs =params(32)*x(5)+y(46)*params(31)+y(46)*params(30)+y(46)*params(29)+y(46)*params(28)+y(46)*params(27)+y(46)*params(26)+y(46)*params(25)+y(46)*params(24)+y(46)*params(23)+y(45)*params(22)+y(45)*params(21)+y(45)*params(20)+y(45)*params(19)+y(45)*params(18)+y(45)*params(17)+y(45)*params(16)+y(45)*params(15)+y(45)*params(14)+y(44)*params(13)+y(44)*params(12)+y(44)*params(11)+y(44)*params(10)+y(44)*params(6)+y(44)*params(5)+y(42)*params(1)+y(42)*params(2)+y(42)*params(3)+y(42)*params(4)+y(44)*params(7)+y(44)*params(8)+y(44)*params(9);
residual(6)= lhs-rhs;
lhs =y(3)+T155*y(14)+T159*y(15)-y(3)-y(14);
rhs =y(19)+T168*y(22);
residual(7)= lhs-rhs;
lhs =(-params(37))*params(51)*T180*y(8)-y(14)+y(8)*params(51)*T180*(1+params(37))-y(8)*params(51)*T180;
rhs =T202;
residual(8)= lhs-rhs;
lhs =y(2)+y(12)*T209+y(13)*T217-y(15)-T168*y(16)-T168*y(10);
rhs =T235;
residual(9)= lhs-rhs;
lhs =y(8)*(params(68)*params(43)-(1-params(38)))-params(68)*params(43)*y(10)+(1-params(38))*y(10);
rhs =(1-params(38))*y(19)+y(22)*(1-params(38))/(1-params(35));
residual(10)= lhs-rhs;
lhs =y(5)*params(37)-y(5)*(1+params(37)*params(54))+params(53)*y(7);
rhs =y(5)*(-params(54));
residual(11)= lhs-rhs;
lhs =y(13)*T217+y(2)-y(7)+y(12)*T264-y(16)*T262-y(10)*T262;
rhs =T278;
residual(12)= lhs-rhs;
lhs =y(1)-y(11);
rhs =y(13)*T287;
residual(13)= lhs-rhs;
lhs =y(1)*params(79)*params(68)*(-params(37))*params(36)*T297+y(1)*(params(79)*T306+params(79)*params(36)*T297*params(37)*params(36)+(2+params(84))*params(86)*params(72)*params(50))+y(3)*params(86)*(1+params(40)+params(72)*params(50))-y(11)*(2+params(84))*params(86)*params(72)*params(50)-y(1)*T333;
rhs =T348;
residual(14)= lhs-rhs;
lhs =y(13)+y(3)-y(5)-y(3);
rhs =y(19)+y(22)*T262;
residual(15)= lhs-rhs;
lhs =y(2)*params(91)+y(5)*params(94)+y(2)*params(90)+y(5)*params(93)+params(95)*y(9)+y(3)*params(96)+y(2)*params(89)+y(5)*params(92);
rhs =y(22)*params(35)*(-params(98))/(1-params(35))-y(19)*params(98)-y(22)*params(35)*params(97)/(1-params(35))-y(19)*params(97);
residual(16)= lhs-rhs;
residual(17) = y(1)*(params(79)*(1+params(40))+T399)+y(8)*T405-y(9)*(1-params(35))*(params(82)+params(83))-y(11)*T399+y(16)*T416-y(10)*params(35)*(params(82)+params(83))+y(19)*params(35)*(params(82)+params(83))+T424-(params(82)+params(83))*y(41);
lhs =y(9)+y(2)-T433*y(4)+y(11)*T438;
rhs =T433*y(6);
residual(18)= lhs-rhs;
lhs =y(6)+y(4)+(-y(4))-y(5);
rhs =y(19)+y(22)*T262;
residual(19)= lhs-rhs;
lhs =y(10)*params(35)*(params(82)+params(83))+y(9)*(1-params(35))*(params(82)+params(83))-y(12)*params(82)+y(16)*T451;
rhs =y(19)*params(35)*(params(82)+params(83))+T424-(params(82)+params(83))*y(41);
residual(20)= lhs-rhs;
lhs =y(15)*T459;
rhs =y(16);
residual(21)= lhs-rhs;
lhs =y(27)+T155*y(38)+T159*y(39)-y(27)-y(38);
rhs =y(19)+T168*y(22);
residual(22)= lhs-rhs;
lhs =(-params(37))*params(51)*T180*y(32)-y(38)+params(51)*T180*(1+params(37))*y(32)-params(51)*T180*y(32);
rhs =T202;
residual(23)= lhs-rhs;
lhs =y(26)+y(36)*T209+T217*y(37)-y(39)-T168*y(40)-T168*y(34);
rhs =T235;
residual(24)= lhs-rhs;
lhs =(params(68)*params(43)-(1-params(38)))*y(32)-params(68)*params(43)*y(34)+(1-params(38))*y(34);
rhs =(1-params(38))*y(19)+y(22)*(1-params(38))/(1-params(35));
residual(25)= lhs-rhs;
residual(26) = y(31);
lhs =T217*y(37)+y(26)-y(31)+y(36)*T264-T262*y(40)-T262*y(34);
rhs =T278;
residual(27)= lhs-rhs;
lhs =y(25)-y(35);
rhs =T287*y(37);
residual(28)= lhs-rhs;
lhs =params(79)*params(68)*(-params(37))*params(36)*T297*y(25)+(params(79)*T306+params(79)*params(36)*T297*params(37)*params(36)+(2+params(84))*params(86)*params(72)*params(50))*y(25)+params(86)*(1+params(40)+params(72)*params(50))*y(27)-(2+params(84))*params(86)*params(72)*params(50)*y(35)-T333*y(25);
rhs =T348;
residual(29)= lhs-rhs;
lhs =y(37)+y(27)-y(29)-y(27);
rhs =y(19)+y(22)*T262;
residual(30)= lhs-rhs;
lhs =y(26)*params(103)+y(29)*params(106)+y(26)*params(102)+y(29)*params(105)+params(107)*y(33)+y(27)*params(108)+y(26)*params(101)+y(29)*params(104);
rhs =y(22)*params(35)*(-params(110))/(1-params(35))-y(19)*params(110)-y(22)*params(35)*params(109)/(1-params(35))-y(19)*params(109);
residual(31)= lhs-rhs;
residual(32) = T424+y(19)*params(35)*(params(82)+params(83))+(params(79)*(1+params(40))+T399)*y(25)+T405*y(32)-(1-params(35))*(params(82)+params(83))*y(33)-T399*y(35)+T416*y(40)-params(35)*(params(82)+params(83))*y(34)-(params(82)+params(83))*y(41);
lhs =y(33)+y(26)-T433*y(28)+T438*y(35);
rhs =T433*y(30);
residual(33)= lhs-rhs;
residual(34) = y(30);
lhs =y(30)+y(28)+(-y(28))-y(29);
rhs =y(19)+y(22)*T262;
residual(35)= lhs-rhs;
lhs =params(35)*(params(82)+params(83))*y(34)+(1-params(35))*(params(82)+params(83))*y(33)-y(36)*params(82)+T451*y(40);
rhs =y(19)*params(35)*(params(82)+params(83))+T424-(params(82)+params(83))*y(41);
residual(36)= lhs-rhs;
lhs =T459*y(39);
rhs =y(40);
residual(37)= lhs-rhs;
lhs =y(17);
rhs =y(17)*params(56)+params(57)*y(18)+x(1);
residual(38)= lhs-rhs;
lhs =y(18);
rhs =x(1);
residual(39)= lhs-rhs;
lhs =y(19);
rhs =y(19)*params(58)+params(59)*y(20)+x(2);
residual(40)= lhs-rhs;
lhs =y(20);
rhs =x(2);
residual(41)= lhs-rhs;
lhs =y(21);
rhs =y(20)*params(61)+y(21)*params(62)+x(2)*params(60);
residual(42)= lhs-rhs;
lhs =y(22);
rhs =y(22)*params(63)+params(64)*y(23)+x(3);
residual(43)= lhs-rhs;
lhs =y(23);
rhs =x(3);
residual(44)= lhs-rhs;
lhs =y(24);
rhs =y(23)*params(66)+y(24)*params(67)+x(3)*params(65);
residual(45)= lhs-rhs;
lhs =y(41);
rhs =y(41)*params(111)+0.5187*x(4);
residual(46)= lhs-rhs;
lhs =y(47);
rhs =y(44);
residual(47)= lhs-rhs;
lhs =y(48);
rhs =y(44);
residual(48)= lhs-rhs;
lhs =y(49);
rhs =y(44);
residual(49)= lhs-rhs;
lhs =y(50);
rhs =y(45);
residual(50)= lhs-rhs;
lhs =y(51);
rhs =y(45);
residual(51)= lhs-rhs;
lhs =y(52);
rhs =y(45);
residual(52)= lhs-rhs;
lhs =y(53);
rhs =y(46);
residual(53)= lhs-rhs;
lhs =y(54);
rhs =y(46);
residual(54)= lhs-rhs;
lhs =y(55);
rhs =y(46);
residual(55)= lhs-rhs;
lhs =y(56);
rhs =y(5);
residual(56)= lhs-rhs;
lhs =y(57);
rhs =y(5);
residual(57)= lhs-rhs;
lhs =y(58);
rhs =y(46);
residual(58)= lhs-rhs;
lhs =y(59);
rhs =y(46);
residual(59)= lhs-rhs;
lhs =y(60);
rhs =y(46);
residual(60)= lhs-rhs;
lhs =y(61);
rhs =y(45);
residual(61)= lhs-rhs;
lhs =y(62);
rhs =y(45);
residual(62)= lhs-rhs;
lhs =y(63);
rhs =y(45);
residual(63)= lhs-rhs;
lhs =y(64);
rhs =y(42);
residual(64)= lhs-rhs;
lhs =y(65);
rhs =y(42);
residual(65)= lhs-rhs;
lhs =y(66);
rhs =y(42);
residual(66)= lhs-rhs;
lhs =y(67);
rhs =y(44);
residual(67)= lhs-rhs;
lhs =y(68);
rhs =y(44);
residual(68)= lhs-rhs;
lhs =y(69);
rhs =y(44);
residual(69)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(69, 69);

  %
  % Jacobian matrix
  %

T873 = (-(T180*params(37)*params(51)/(1-params(35))-params(51)*T180/(1-params(35))));
T878 = (-(params(35)*params(79)*params(68)*T297*params(37)*params(36)/(1-params(35))-params(35)*T333/(1-params(35))));
  g1(1,13)=(-4);
  g1(1,42)=1;
  g1(2,5)=(-4);
  g1(2,43)=1;
  g1(3,5)=(-4);
  g1(3,44)=1;
  g1(4,12)=(-1);
  g1(4,36)=1;
  g1(4,45)=1;
  g1(5,12)=(-1);
  g1(5,46)=1;
  g1(6,42)=1-(params(4)+params(3)+params(1)+params(2));
  g1(6,44)=(-(params(13)+params(12)+params(11)+params(10)+params(9)+params(8)+params(7)+params(6)+params(5)));
  g1(6,45)=(-(params(22)+params(21)+params(20)+params(19)+params(18)+params(17)+params(16)+params(15)+params(14)));
  g1(6,46)=(-(params(31)+params(30)+params(29)+params(28)+params(27)+params(26)+params(25)+params(24)+params(23)));
  g1(7,14)=T155-1;
  g1(7,15)=T159;
  g1(7,19)=(-1);
  g1(7,22)=(-T168);
  g1(8,8)=(-params(37))*params(51)*T180+params(51)*T180*(1+params(37))-params(51)*T180;
  g1(8,14)=(-1);
  g1(8,19)=(-(T180*params(37)*params(51)-params(51)*T180));
  g1(8,22)=T873;
  g1(9,2)=1;
  g1(9,10)=(-T168);
  g1(9,12)=T209;
  g1(9,13)=T217;
  g1(9,15)=(-1);
  g1(9,16)=(-T168);
  g1(9,19)=(-((-1)/(1-params(35))));
  g1(9,22)=1/T229;
  g1(9,41)=(-T168);
  g1(10,8)=params(68)*params(43)-(1-params(38));
  g1(10,10)=1-params(38)+(-(params(68)*params(43)));
  g1(10,19)=(-(1-params(38)));
  g1(10,22)=(-((1-params(38))/(1-params(35))));
  g1(11,5)=params(37)-(1+params(37)*params(54))-(-params(54));
  g1(11,7)=params(53);
  g1(12,2)=1;
  g1(12,7)=(-1);
  g1(12,10)=(-T262);
  g1(12,12)=T264;
  g1(12,13)=T217;
  g1(12,16)=(-T262);
  g1(12,19)=(-((-params(35))/(1-params(35))));
  g1(12,22)=params(35)/T229;
  g1(12,41)=(-T168);
  g1(13,1)=1;
  g1(13,11)=(-1);
  g1(13,13)=(-T287);
  g1(14,1)=params(79)*params(68)*(-params(37))*params(36)*T297+params(79)*T306+params(79)*params(36)*T297*params(37)*params(36)+(2+params(84))*params(86)*params(72)*params(50)-T333;
  g1(14,3)=params(86)*(1+params(40)+params(72)*params(50));
  g1(14,11)=(-((2+params(84))*params(86)*params(72)*params(50)));
  g1(14,19)=(-(params(79)*params(68)*T297*params(37)*params(36)-T333));
  g1(14,22)=T878;
  g1(15,5)=(-1);
  g1(15,13)=1;
  g1(15,19)=(-1);
  g1(15,22)=(-T262);
  g1(16,2)=params(89)+params(91)+params(90);
  g1(16,3)=params(96);
  g1(16,5)=params(92)+params(94)+params(93);
  g1(16,9)=params(95);
  g1(16,19)=(-((-params(98))-params(97)));
  g1(16,22)=(-(params(35)*(-params(98))/(1-params(35))-params(35)*params(97)/(1-params(35))));
  g1(17,1)=params(79)*(1+params(40))+T399;
  g1(17,8)=T405;
  g1(17,9)=(-((1-params(35))*(params(82)+params(83))));
  g1(17,10)=(-(params(35)*(params(82)+params(83))));
  g1(17,11)=(-T399);
  g1(17,16)=T416;
  g1(17,19)=params(35)*(params(82)+params(83));
  g1(17,22)=T423;
  g1(17,41)=(-(params(82)+params(83)));
  g1(18,2)=1;
  g1(18,4)=(-T433);
  g1(18,6)=(-T433);
  g1(18,9)=1;
  g1(18,11)=T438;
  g1(19,5)=(-1);
  g1(19,6)=1;
  g1(19,19)=(-1);
  g1(19,22)=(-T262);
  g1(20,9)=(1-params(35))*(params(82)+params(83));
  g1(20,10)=params(35)*(params(82)+params(83));
  g1(20,12)=(-params(82));
  g1(20,16)=T451;
  g1(20,19)=(-(params(35)*(params(82)+params(83))));
  g1(20,22)=(-T423);
  g1(20,41)=params(82)+params(83);
  g1(21,15)=T459;
  g1(21,16)=(-1);
  g1(22,19)=(-1);
  g1(22,22)=(-T168);
  g1(22,38)=T155-1;
  g1(22,39)=T159;
  g1(23,19)=(-(T180*params(37)*params(51)-params(51)*T180));
  g1(23,22)=T873;
  g1(23,32)=(-params(37))*params(51)*T180+params(51)*T180*(1+params(37))-params(51)*T180;
  g1(23,38)=(-1);
  g1(24,19)=(-((-1)/(1-params(35))));
  g1(24,22)=1/T229;
  g1(24,26)=1;
  g1(24,34)=(-T168);
  g1(24,36)=T209;
  g1(24,37)=T217;
  g1(24,39)=(-1);
  g1(24,40)=(-T168);
  g1(24,41)=(-T168);
  g1(25,19)=(-(1-params(38)));
  g1(25,22)=(-((1-params(38))/(1-params(35))));
  g1(25,32)=params(68)*params(43)-(1-params(38));
  g1(25,34)=1-params(38)+(-(params(68)*params(43)));
  g1(26,31)=1;
  g1(27,19)=(-((-params(35))/(1-params(35))));
  g1(27,22)=params(35)/T229;
  g1(27,26)=1;
  g1(27,31)=(-1);
  g1(27,34)=(-T262);
  g1(27,36)=T264;
  g1(27,37)=T217;
  g1(27,40)=(-T262);
  g1(27,41)=(-T168);
  g1(28,25)=1;
  g1(28,35)=(-1);
  g1(28,37)=(-T287);
  g1(29,19)=(-(params(79)*params(68)*T297*params(37)*params(36)-T333));
  g1(29,22)=T878;
  g1(29,25)=params(79)*params(68)*(-params(37))*params(36)*T297+params(79)*T306+params(79)*params(36)*T297*params(37)*params(36)+(2+params(84))*params(86)*params(72)*params(50)-T333;
  g1(29,27)=params(86)*(1+params(40)+params(72)*params(50));
  g1(29,35)=(-((2+params(84))*params(86)*params(72)*params(50)));
  g1(30,19)=(-1);
  g1(30,22)=(-T262);
  g1(30,29)=(-1);
  g1(30,37)=1;
  g1(31,19)=(-((-params(110))-params(109)));
  g1(31,22)=(-(params(35)*(-params(110))/(1-params(35))-params(35)*params(109)/(1-params(35))));
  g1(31,26)=params(101)+params(103)+params(102);
  g1(31,27)=params(108);
  g1(31,29)=params(104)+params(106)+params(105);
  g1(31,33)=params(107);
  g1(32,19)=params(35)*(params(82)+params(83));
  g1(32,22)=T423;
  g1(32,25)=params(79)*(1+params(40))+T399;
  g1(32,32)=T405;
  g1(32,33)=(-((1-params(35))*(params(82)+params(83))));
  g1(32,34)=(-(params(35)*(params(82)+params(83))));
  g1(32,35)=(-T399);
  g1(32,40)=T416;
  g1(32,41)=(-(params(82)+params(83)));
  g1(33,26)=1;
  g1(33,28)=(-T433);
  g1(33,30)=(-T433);
  g1(33,33)=1;
  g1(33,35)=T438;
  g1(34,30)=1;
  g1(35,19)=(-1);
  g1(35,22)=(-T262);
  g1(35,29)=(-1);
  g1(35,30)=1;
  g1(36,19)=(-(params(35)*(params(82)+params(83))));
  g1(36,22)=(-T423);
  g1(36,33)=(1-params(35))*(params(82)+params(83));
  g1(36,34)=params(35)*(params(82)+params(83));
  g1(36,36)=(-params(82));
  g1(36,40)=T451;
  g1(36,41)=params(82)+params(83);
  g1(37,39)=T459;
  g1(37,40)=(-1);
  g1(38,17)=1-params(56);
  g1(38,18)=(-params(57));
  g1(39,18)=1;
  g1(40,19)=1-params(58);
  g1(40,20)=(-params(59));
  g1(41,20)=1;
  g1(42,20)=(-params(61));
  g1(42,21)=1-params(62);
  g1(43,22)=1-params(63);
  g1(43,23)=(-params(64));
  g1(44,23)=1;
  g1(45,23)=(-params(66));
  g1(45,24)=1-params(67);
  g1(46,41)=1-params(111);
  g1(47,44)=(-1);
  g1(47,47)=1;
  g1(48,44)=(-1);
  g1(48,48)=1;
  g1(49,44)=(-1);
  g1(49,49)=1;
  g1(50,45)=(-1);
  g1(50,50)=1;
  g1(51,45)=(-1);
  g1(51,51)=1;
  g1(52,45)=(-1);
  g1(52,52)=1;
  g1(53,46)=(-1);
  g1(53,53)=1;
  g1(54,46)=(-1);
  g1(54,54)=1;
  g1(55,46)=(-1);
  g1(55,55)=1;
  g1(56,5)=(-1);
  g1(56,56)=1;
  g1(57,5)=(-1);
  g1(57,57)=1;
  g1(58,46)=(-1);
  g1(58,58)=1;
  g1(59,46)=(-1);
  g1(59,59)=1;
  g1(60,46)=(-1);
  g1(60,60)=1;
  g1(61,45)=(-1);
  g1(61,61)=1;
  g1(62,45)=(-1);
  g1(62,62)=1;
  g1(63,45)=(-1);
  g1(63,63)=1;
  g1(64,42)=(-1);
  g1(64,64)=1;
  g1(65,42)=(-1);
  g1(65,65)=1;
  g1(66,42)=(-1);
  g1(66,66)=1;
  g1(67,44)=(-1);
  g1(67,67)=1;
  g1(68,44)=(-1);
  g1(68,68)=1;
  g1(69,44)=(-1);
  g1(69,69)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],69,4761);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],69,328509);
end
end
end
end
