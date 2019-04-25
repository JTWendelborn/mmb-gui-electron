function [ys_, params, info] = US_PV15_steadystate2(ys_, exo_, params)
% Steady state generated by Dynare preprocessor
    info = 0;
    ys_(1)=0;
    ys_(2)=0;
    ys_(3)=0;
    ys_(4)=0;
    ys_(5)=0;
    ys_(31)=1;
    ys_(9)=params(56)-1;
    ys_(10)=ys_(9);
    ys_(25)=params(58);
    ys_(36)=params(59)-1;
    params(64)=params(55);
    params(65)=1/params(55);
    ys_(40)=params(64)*(1-params(57))^((-1)/params(65));
    ys_(35)=(1+ys_(36))/ys_(40)*(1-params(55))-1;
    ys_(28)=1+ys_(35)-(1-params(37));
    ys_(42)=(params(64)/ys_(40))^params(65);
    ys_(43)=ys_(40)*params(65)/(params(65)-1);
    ys_(44)=(1-ys_(42)*ys_(43))/(1-ys_(42));
    ys_(41)=(1+ys_(9))/((params(64)/ys_(40))^params(65)+params(65)/(params(65)-1)*(1-params(71))*(1-(params(64)/ys_(40))^params(65))*(ys_(40)^(1-params(65))-params(64)^(1-params(65)))/(ys_(40)^(-params(65))-params(64)^(-params(65)))/ys_(40))-1;
    params(72)=ys_(36)/ys_(41);
    params(73)=params(44)/(params(44)-1);
    ys_(15)=ys_(25)/((1-(1-params(37))*params(35))/((1-params(37))*params(35)*(params(73)-1+ys_(31)*(1+ys_(35))*ys_(40)*ys_(42)*params(62)/100*params(36)/(ys_(28)*(params(65)-1))))*params(41)*(1+ys_(36)*params(63))*(1-params(36))+params(41)*params(37)/(1-params(37)));
    ys_(21)=ys_(15)^(1/(params(44)-1));
    ys_(18)=ys_(21)/params(73);
    ys_(16)=params(37)/(1-params(37))*ys_(15);
    ys_(26)=params(41)*ys_(16);
    ys_(27)=ys_(25)-ys_(26);
    ys_(8)=(1-params(36))*(ys_(18)*(params(36)/ys_(28))^params(36))^(1/(1-params(36)));
    ys_(29)=ys_(27)*ys_(8)*params(36)/(1-params(36))/ys_(28);
    ys_(23)=ys_(29)^params(36)*ys_(27)^(1-params(36))/ys_(15);
    ys_(30)=params(37)*ys_(29);
    ys_(24)=ys_(15)*ys_(23)*ys_(21)^params(44);
    ys_(22)=ys_(24)*(1-params(45))-ys_(30);
    ys_(13)=ys_(21)*ys_(23)*(1-1/params(73));
    ys_(7)=(ys_(22)-ys_(22)*params(46))^(-params(60));
    ys_(46)=ys_(8)/params(74);
    ys_(6)=ys_(7)*ys_(46);
    params(40)=ys_(6)*ys_(25)^(-params(39));
    ys_(37)=ys_(29)*ys_(31)*params(55);
    ys_(38)=ys_(31)*ys_(29)+ys_(26)*params(63)*ys_(8)-ys_(37);
    ys_(14)=params(64)^params(65)/(params(65)-1)*ys_(29)*ys_(31)*(1+ys_(35))*ys_(40)^(1-params(65))/ys_(15);
    params(67)=ys_(43)^(1-(1-params(68))/params(68)*params(69)/((1-params(68))/params(68)*params(69)-1));
    ys_(39)=(1+ys_(35))/(1+ys_(36));
    params(66)=ys_(38)-ys_(15)*ys_(14)*(1-params(37))*(1-params(62)/100);
    ys_(12)=(1-params(37))*params(35)/(1-(1-params(37))*params(35))*(ys_(13)+params(62)/100*ys_(14));
    ys_(45)=params(74);
    ys_(48)=params(73);
    ys_(49)=params(72);
    ys_(19)=0;
    ys_(17)=params(73);
    ys_(11)=1;
    ys_(20)=1;
    ys_(32)=1;
    ys_(33)=0;
    ys_(34)=ys_(29);
    ys_(47)=1;
    ys_(50)=0;
    ys_(51)=0;
    ys_(52)=0;
    ys_(53)=0;
    ys_(54)=0;
    ys_(55)=0;
    ys_(56)=0;
    ys_(57)=0;
    ys_(58)=0;
    ys_(59)=0;
    ys_(60)=0;
    ys_(61)=0;
    ys_(120)=0;
    ys_(65)=0;
    ys_(66)=0;
    ys_(67)=0;
    ys_(68)=0;
    ys_(69)=0;
    ys_(70)=0;
    ys_(71)=0;
    ys_(62)=0;
    ys_(63)=0;
    ys_(64)=0;
    ys_(72)=0;
    ys_(73)=0;
    ys_(74)=0;
    ys_(75)=0;
    ys_(76)=0;
    ys_(77)=0;
    ys_(78)=0;
    ys_(79)=0;
    ys_(80)=0;
    ys_(81)=0;
    ys_(102)=1;
    params(92)=params(56)-1;
    ys_(85)=params(92);
    ys_(96)=params(58);
    ys_(107)=params(59)-1;
    ys_(111)=params(64)*(1-params(57))^((-1)/params(65));
    ys_(106)=(1-params(55))*(1+ys_(107))/ys_(111)-1;
    ys_(99)=1+ys_(106)-(1-params(37));
    ys_(113)=(params(64)/ys_(111))^params(65);
    ys_(114)=params(65)/(params(65)-1)*ys_(111);
    ys_(115)=(1-ys_(113)*ys_(114))/(1-ys_(113));
    ys_(112)=(1+params(92))/((params(64)/ys_(111))^params(65)+params(65)/(params(65)-1)*(1-params(71))*(1-(params(64)/ys_(111))^params(65))*(ys_(111)^(1-params(65))-params(64)^(1-params(65)))/(ys_(111)^(-params(65))-params(64)^(-params(65)))/ys_(111))-1;
    ys_(89)=ys_(96)/(params(41)*params(37)/(1-params(37))+(1-params(36))*params(41)*(1-(1-params(37))*params(35))/((1-params(37))*params(35)*(params(73)-1+params(36)*ys_(102)*(1+ys_(106))*ys_(111)*params(62)/100*ys_(113)/((params(65)-1)*ys_(99))))*(1+params(63)*ys_(107)));
    ys_(92)=ys_(89)^(1/(params(44)-1));
    ys_(91)=ys_(92)/params(73);
    ys_(90)=params(37)/(1-params(37))*ys_(89);
    ys_(97)=params(41)*ys_(90);
    ys_(98)=ys_(96)-ys_(97);
    ys_(84)=(1-params(36))*(ys_(91)*(params(36)/ys_(99))^params(36))^(1/(1-params(36)));
    ys_(100)=ys_(98)*params(36)/(1-params(36))*ys_(84)/ys_(99);
    ys_(94)=ys_(100)^params(36)*ys_(98)^(1-params(36))/ys_(89);
    ys_(101)=params(37)*ys_(100);
    ys_(95)=ys_(89)*ys_(94)*ys_(92)^params(44);
    ys_(93)=(1-params(45))*ys_(95)-ys_(101);
    ys_(87)=(1-1/params(73))*ys_(92)*ys_(94);
    ys_(83)=(ys_(93)-params(46)*ys_(93))^(-params(60));
    ys_(117)=ys_(84)/params(74);
    ys_(82)=ys_(83)*ys_(117);
    ys_(108)=ys_(100)*params(55)*ys_(102);
    ys_(109)=ys_(102)*ys_(100)+ys_(97)*params(63)*ys_(84)-ys_(108);
    ys_(88)=params(64)^params(65)/(params(65)-1)*ys_(100)*ys_(102)*(1+ys_(106))*ys_(111)^(1-params(65))/ys_(89);
    ys_(110)=(1+ys_(106))/(1+ys_(107));
    ys_(86)=(1-params(37))*params(35)/(1-(1-params(37))*params(35))*(ys_(87)+params(62)/100*ys_(88));
    ys_(116)=params(74);
    params(95)=params(73);
    ys_(119)=params(72);
    params(91)=0;
    params(90)=params(73);
    params(93)=1;
    params(94)=1;
    ys_(103)=1;
    ys_(104)=0;
    ys_(105)=ys_(100);
    ys_(118)=1;
    % Auxiliary equations
ys_(121)=ys_(3);
ys_(122)=ys_(3);
ys_(123)=ys_(3);
ys_(124)=ys_(4);
ys_(125)=ys_(4);
ys_(126)=ys_(4);
ys_(127)=ys_(5);
ys_(128)=ys_(5);
ys_(129)=ys_(5);
ys_(130)=ys_(3);
ys_(131)=ys_(3);
ys_(132)=ys_(5);
ys_(133)=ys_(5);
ys_(134)=ys_(5);
ys_(135)=ys_(4);
ys_(136)=ys_(4);
ys_(137)=ys_(4);
ys_(138)=ys_(1);
ys_(139)=ys_(1);
ys_(140)=ys_(1);
ys_(141)=ys_(3);
    check_=0;
end
