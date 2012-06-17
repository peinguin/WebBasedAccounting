package WebBasedAccounting::Controller::Fin;
use Moose;
use namespace::autoclean;
use URI::Escape;
use utf8;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

WebBasedAccounting::Controller::Fin - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path('/') :Args(0) {
    my ( $self, $c ) = @_;

    $c->stash->{template} = 'index.tt';
}

sub finmenu: Global  {
    my ( $self, $c ) = @_;
    
    $c->stash->{template} = 'finmenu.tt';
}

sub finspoper: Global {
    my ( $self, $c ) = @_;
    
    my $idsort="number";
    my $sdvigpn= 0;
    my $prpoisk = '';
    
    if  ($c->request->params->{poisk}) {
        $prpoisk = $c->request->params->{poisk};
    }
    
    if  ($c->request->params->{psort}) {
        $idsort=$c->request->params->{psort};
    }
    
    if  ($c->request->params->{navnakl}) {
        $sdvigpn=$c->request->params->{navnakl};
    }
    
    my $razoper="bank";
    if  ($c->request->params->{razoper}) {
        $razoper=$c->request->params->{razoper};
    }
    
    my $base="oper";
    
    #Перейти на останні накладні якщо перше завантаження скрипта 
    if  ($c->request->params->{navnakl}) {
        $sdvigpn=$c->request->params->{navnakl};
        $sdvigpn=$sdvigpn-1;
    }
    
    my $oper = $c->model('FinModel::Oper');

    if  ($razoper eq 'mater') {
        $oper = $oper->search({satelit => 'м'});
    }
    if  ($razoper eq 'bank') {
        $oper = $oper->search({satelit => 'б'});
    }
    if  ($razoper eq 'zarplata') {
        $oper = $oper->search({satelit => 'з'});
    }
    if  ($razoper eq 'kaca') {
        $oper = $oper->search({satelit => 'к'});
    }
    
    if  ($razoper eq 'fondy') {
        $oper = $oper->search({satelit => 'ф'});
    }
    
    if  ($razoper eq 'nalog') {
        $oper = $oper->search({satelit => 'н'});
    }
    if  ($razoper eq 'proch') {
        $oper = $oper->search({satelit => ' '});
    }
    
    if  ($prpoisk) {
        $oper = $oper->search({-or => [ num1 => { like => '%'.$prpoisk.'%'}, name => { like => '%'.$prpoisk.'%' }, oc => { like => '%'.$prpoisk.'%' } ]});
    }

    if ($sdvigpn < 0) {
        $sdvigpn = 0;
    }
    
    # подыл на надходження  выдвантаження
    $oper = $oper->search({},{ order_by => 'name' })       if $idsort eq 'number';
    $oper = $oper->search({},{ order_by => 'oc,kc,name' }) if $idsort eq 'name';
    $oper = $oper->search({},{ offset => $sdvigpn, rows => 18 });
    
    my $porojnia = $oper->count;
    
    if ($porojnia < $sdvigpn) {
        $sdvigpn = $oper->count - 15;
    }
    
    if ($sdvigpn < 0) {
        $sdvigpn= 0;
    }
    
    my $txt = '';
    $txt .= '<tr bgcolor="#99ccff"><th align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=number&razoper='. $razoper.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'" id="num" class=winleft>_____________Назва____________</a></NOBR></th>';
    $txt .= '<td align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=name&razoper='. $razoper.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'" class=winleft>_Основ. проводка</a></NOBR></td>';

    $txt .= '</tr>';
    my $keymove=0;
    my $zebra=0;
    
    my $idoper;
    
    #while ($ryadok < 19) {
    #    $ryadok = $ryadok+1;
    #    $txt .=  '<tr bgcolor="#eeeeee"><td> ..........</td>' . '<td> ............</td></tr>';
    #};
    
    my $sdvigPD=$sdvigpn+20;
    if ($porojnia < $sdvigPD) {
        $sdvigPD=$porojnia-15;
    }

    $c->stash->{txt} = $txt;
    $c->stash->{idsort} = $idsort;
    $c->stash->{sdvigpn} = $sdvigpn;
    $c->stash->{razoper} = $razoper;
    $c->stash->{sdvigpn} = $sdvigpn;
    $c->stash->{prpoisk} = $prpoisk;
    $c->stash->{porojnia} = $porojnia;
    $c->stash->{sdvigPD} = $sdvigPD;
    $c->stash->{all} = [ $oper->all() ];
    $c->stash->{msp} = 0;
    
    $c->stash->{template} = 'finspoper.tt';
}

sub finmenuop: Global  {
    my ( $self, $c ) = @_;
    
    my $razoper="bank";
    if  ($c->request->params->{razoper}) {
        $razoper=$c->request->params->{razoper};
    }
    
    $c->stash->{razoper} = $razoper;
    
    $c->stash->{template} = 'finmenuop.tt';
}

sub f1op: Global  {
    my ( $self, $c ) = @_;
    
    
    my $idsort="number";
    my $sdvigpn= "0";
    
    my $ryadok =1;
    
    my $naklid;
    my $tekriadok=1;
    my $prym="no";
    my $prpoisk;
    
    if  ($c->request->params->{redag}) {
        $prym=$c->request->params->{redag};
    }
    
    
    if  ($c->request->params->{poisk}) {
        $prpoisk=$c->request->params->{poisk};
    }
    
    if  ($c->request->params->{psort}) {
        $idsort=$c->request->params->{psort};
    }
    
    if  ($c->request->params->{navnakl}) {
        $sdvigpn=$c->request->params->{navnakl};
    }
    
    if  ($c->request->params->{id}) {
        $tekriadok=$c->request->params->{id};
    }

    my $muser="buh1";
    my $mperiod=1;
    my $mid=0;
    my $mfull=1;
    
    my $finstatus = $c->model('FinModel::Finstatus');
    $finstatus = $finstatus->search({uslog => $muser});
    my $res = $finstatus->single();
    
    ($mid,$muser,$mperiod,$mfull) = ($res->id, $res->uslog, $res->period,  $res->fulloper );
    
    my $fo340 = $c->model('FinModel::Fo340');
    if  ($mperiod eq 2) {
        my $fo340 = $c->model('FinModel::Fo340new');
    }
    my ($porojnia);

    #
    #Перейти на останні рядки якщо перше завантаження скрипта 
    if  ($c->request->params->{navnakl}) {
        $sdvigpn=$c->request->params->{navnakl};
        $sdvigpn=$sdvigpn-1;
    }

    #Показати таблицю операцій 
    # id користувача
    my $satel=$mid;
    
    if ($sdvigpn < 0) {
        $sdvigpn= 0;
    }

    if ($mfull eq 2) {
        #$sqlr ='SELECT SQL_CALC_FOUND_ROWS id,name,data,dok,kau,kaukc,summa,priznak,zakname,zaknamekc,satelit FROM '.$base.'';
    }else{
        $fo340 = $fo340->search({satelit => $satel});
    };

    $fo340 = $fo340->search({}, {order_by => '(data) desc,(id) desc,name, summa'}) if $idsort eq 'number';
    $fo340 = $fo340->search({}, {order_by => 'name,data,kau'})                     if $idsort eq 'name';
    $fo340 = $fo340->search({}, {order_by => 'data,name, summa'})                  if $idsort eq 'date';
    $fo340 = $fo340->search({}, {order_by => 'dok'})                               if $idsort eq 'dok' ;
    $fo340 = $fo340->search({}, {order_by => 'kau,name'})                          if $idsort eq 'kau' ;
    $fo340 = $fo340->search({}, {order_by => 'summa,kau'})                         if $idsort eq 'summa' ;
    $fo340 = $fo340->search({}, {order_by => 'priznak,kau'})                       if $idsort eq 'priz' ;
    $fo340 = $fo340->search({}, {order_by => 'kaukc,name'})                        if $idsort eq 'kaukc' ;
    $fo340 = $fo340->search({}, {order_by => '(data) desc,(id) desc,name, summa'}) if $idsort eq 'number';
    $fo340 = $fo340->search({}, { offset => $sdvigpn, rows => 18 });
    
    $porojnia = $fo340->count;
    
    if ($porojnia < $sdvigpn) {
        $sdvigpn=$porojnia-15;
    }

    if ($sdvigpn < 0) {
        $sdvigpn= 0;
    }
    
    my $keymove=0;
    my $zebra=0;
    
    my $idoper;
    
    my $zebra1=0;
    my $mrecnum=0;
=cut
    while ($ryadok < 19) {;
        $ryadok = $ryadok+1;
        print  '<tr bgcolor="#eeeeee"><td>..</td>'.'<td> ............</td>'.'<td> ............</td>'.'<td>............</td>'.'<td> ............</td>'.'<td> ............</td>'.'<td> ............</td>'.'<td>............</td>'.'<td>.</td>'.'<td>..</td></tr>';
    };
=cut  
    
    my $sdvigPD=$sdvigpn+20;
    if ($porojnia < $sdvigPD) {
        $sdvigPD=$porojnia-15;
    }
    
    my $allop=1;
    
    if ($mfull eq 2) {
        $allop=1;
    }else{
        $allop=2;
    }
    
    $c->stash->{all} = [ $fo340->all() ];
    
    $c->stash->{prym} = $prym;
    $c->stash->{msp} = '';
    $c->stash->{sdvigpn} = $sdvigpn;
    $c->stash->{naklid} = $naklid;
    $c->stash->{idsort} = $idsort;
    $c->stash->{tekriadok} = $tekriadok;
    $c->stash->{mperiod} = $mperiod;
    
    $c->stash->{template} = 'f1op.tt';
}

sub finoperadd: Global{
    my ( $self, $c ) = @_;

    my $idop;
    if  ($c->request->params->{id}) {
        $idop=$c->request->params->{id};
    }

    # номер рядка що видаляється з накладної
    my $idplat;
    if  ($c->request->params->{idkrt}) {
        # Id картки  краму 
        $idplat=$c->request->params->{idkrt};
    }

    my $muser="buh1";
    my $mperiod=1;
    my $mid=0;

    my $finstatus = $c->model('FinModel::Finstatus');
    $finstatus = $finstatus->search({uslog => $muser});
    my $res = $finstatus->single();

    ($mid,$muser,$mperiod)=($res->id, $res->uslog, $res->period);

    my $fo340 = $c->model('FinModel::Fo340');
    my $f340 = $c->model('FinModel::F340');
    if  ($mperiod eq 2) {
        my $fo340 = $c->model('FinModel::Fo340new');
        my $f340 = $c->model('FinModel::F340new');

    }
    my $satel=$mid;

    my ($day,$month,$year) = (localtime)[3..5];
    $year = 1900 + $year;
    $month++;
    my $date = sprintf("%.4d.%.2d.%.2d",($year,$month,$day));
    my $tekdata=$date;

    my ($mdok,$mkauop,$mkaukcop,$msummaop,$comoper,$midoper,$mnum,$mkol1op,$mkol2op,$mkol3op,$zamovn,$zakname,$idzak,$zaknamekc,$idzakkc)=(0,"","",0,"",0,"",0,0,0,0,"",0,"",0);

    my $baseop="oper";

    my $oper = $c->model('FinModel::Oper');
    $oper = $oper->search({id => $idplat});
    $res = $oper->single();
    # вважаю що перейду на пошук накладної по  автоматичному id тому тут прибрав дату
    #$sqlr = 'SELECT name,num1,oc,coc,kc,ckc,com,perc,oc1,coc1,kc1,ckc1,com1,perc1,oc2,coc2,kc2,ckc2,com2,perc2,oc3,coc3,kc3,ckc3,com3,perc3,oc4,coc4,kc4,ckc4,com4,perc4 FROM '.$baseop.' WHERE id='.$.'';

    my ($mname,$mnum1,$voc,$vcoc,$vkc,$vckc,$vcom,$vper,$voc1,$vcoc1,$vkc1,$vckc1,$vcom1,$vper1,$voc2,$vcoc2,$vkc2,$vckc2,$vcom2,$vper2,$voc3,$vcoc3,$vkc3,$vckc3,$vcom3,$vper3,$voc4,$vcoc4,$vkc4,$vckc4,$vcom4,$vper4,$voc5,$vcoc5,$vkc5,$vckc5,$vcom5,$vper5)=($res->name,$res->num1,$res->oc,$res->coc,$res->kc,$res->ckc,$res->com,$res->perc,$res->oc1,$res->coc1,$res->kc1,$res->ckc1,$res->com1,$res->perc1,$res->oc2,$res->coc2,$res->kc2,$res->ckc2,$res->com2,$res->perc2,$res->oc3,$res->coc3,$res->kc3,$res->ckc3,$res->com3,$res->perc3,$res->oc4,$res->coc4,$res->kc4,$res->ckc4,$res->com4,$res->perc4);

    my $zplat=$mname;

    #Тут потім будем вставляти Id користувача
    my $idlastop;
    if ($idop == 0) {

        my $fo340 = $fo340->create({
            name    => $zplat,
            data    => $tekdata,
            num     => $mnum1,
            satelit => $satel,
            idoper  => $idplat
        });

        $idlastop = $fo340->id;

    }else{

        my $new = $f340->search({id => $idop})->single();

        $new->name = $zplat;
        $new->num  = $mnum1;
        $new->idoper = $idplat;
        $new->name = $zplat;

        $new->save;

        ($tekdata,$mdok,$mkauop,$mkaukcop,$msummaop,$vcom,$midoper,$mnum,$mkol1op,$mkol2op,$mkol3op,$zamovn,$zakname,$idzak,$zaknamekc,$idzakkc)=($new->data,$new->dok,$new->kau,$new->kaukc,$new->summa,$new->priznak,$new->idoper,$new->num,$new->kol1,$new->kol2,$new->kol3,$new->sprnum,$new->zakname,$new->idzak,$new->zaknamekc,$new->idzakkc);
        
        $idlastop =$idop;

        $f340->search({num1 => $idop})->single()->delete;
    };

    my $zname=$zakname;
    my $znamekc=$zaknamekc;

    my $ocoper="";
    my $cocoper="";
    my $kcoper="";
    my $ckccoper="";
    my $percoper=0;
    my $ckcoper;

    if  ($voc ne "") {
        $ocoper=$voc;
        $cocoper=$vcoc;
        $kcoper=$vkc;
        $ckcoper=$vckc;
        $comoper=$vcom;
        $percoper=$vper;
        &provadd($f340, $idlastop, $zplat, $percoper, $tekdata, $satel, $ocoper, $cocoper, $kcoper, $ckcoper, $comoper, $mkauop, $mkaukcop, $zname, $znamekc, $msummaop, $mdok);
    };

    if  ($voc1 ne "") {
        $ocoper=$voc1;
        $cocoper=$vcoc1;
        $kcoper=$vkc1;
        $ckcoper=$vckc1;
        $comoper=$vcom1;
        $percoper=$vper1;
        &provadd($f340, $idlastop, $zplat, $percoper, $tekdata, $satel, $ocoper, $cocoper, $kcoper, $ckcoper, $comoper, $mkauop, $mkaukcop, $zname, $znamekc, $msummaop, $mdok);
    };
    if  ($voc2 ne "") {
        $ocoper=$voc2;
        $cocoper=$vcoc2;
        $kcoper=$vkc2;
        $ckcoper=$vckc2;
        $comoper=$vcom2;
        $percoper=$vper2;
        &provadd($f340, $idlastop, $zplat, $percoper, $tekdata, $satel, $ocoper, $cocoper, $kcoper, $ckcoper, $comoper, $mkauop, $mkaukcop, $zname, $znamekc, $msummaop, $mdok);
    };

    if  ($voc3 ne "") {
        $ocoper=$voc3;
        $cocoper=$vcoc3;
        $kcoper=$vkc3;
        $ckcoper=$vckc3;
        $comoper=$vcom3;
        $percoper=$vper3;
        &provadd($f340, $idlastop, $zplat, $percoper, $tekdata, $satel, $ocoper, $cocoper, $kcoper, $ckcoper, $comoper, $mkauop, $mkaukcop, $zname, $znamekc, $msummaop, $mdok);
    };

    if  ($voc4 ne "") {
        $ocoper=$voc4;
        $cocoper=$vcoc4;
        $kcoper=$vkc4;
        $ckcoper=$vckc4;
        $comoper=$vcom4;
        $percoper=$vper4;
        &provadd($f340, $idlastop, $zplat, $percoper, $tekdata, $satel, $ocoper, $cocoper, $kcoper, $ckcoper, $comoper, $mkauop, $mkaukcop, $zname, $znamekc, $msummaop, $mdok);
    };

    if  ($voc5 ne "") {
        $ocoper=$voc5;
        $cocoper=$vcoc5;
        $kcoper=$vkc5;
        $ckcoper=$vckc5;
        $comoper=$vcom5;
        $percoper=$vper5;
        &provadd($f340, $idlastop, $zplat, $percoper, $tekdata, $satel, $ocoper, $cocoper, $kcoper, $ckcoper, $comoper, $mkauop, $mkaukcop, $zname, $znamekc, $msummaop, $mdok);
    };

    $c->stash->{template} = 'finoperadd.tt';
}

# $idlastop  id операцыъ що розшифровуэться
sub provadd{

    my ($f340, $idlastop, $zplat, $percoper, $tekdata, $satel, $ocoper, $cocoper, $kcoper, $ckcoper, $comoper, $mkauop, $mkaukcop, $zname, $znamekc, $msummaop, $mdok) = @_;

    #Cформуємо сіметричну проводку
    my $tsummaop=$msummaop;
    if ($percoper>0) {
        $tsummaop=($msummaop*$percoper)/100;
    };

    my $new = $f340->create({
        num1      => $idlastop,
        name      => $zplat,
        perc      => $percoper,
        data      => $tekdata,
        satelit   => $satel,
        booc      => 3,
        kc        => $ocoper,
        ckc       => $cocoper,
        oc        => $kcoper,
        coc       => $ckcoper,
        priznak   => $comoper,
        kaukc     => $mkauop,
        kau       => $mkaukcop,
        zaknamekc => $zname,
        zakname   => $znamekc,
        summa     => $tsummaop,
        dok       => $mdok,
    });


    # для операцій це мабуть не потрібно використовується для знищення для показу можно вствити що завгодно 
    my $idlast = $new->id;

    #Cформуємо основну проводку
    $new = $f340->create({
        num1      => $idlastop,
        name      => $zplat,
        perc      => $percoper,
        data      => $tekdata,
        satelit   => $satel,
        booc      => 2,
        idsimetr  => $idlast,
        oc        => $ocoper,
        coc       => $cocoper,
        kc        => $kcoper,
        ckc       => $ckcoper,
        priznak   => $comoper,
        kau       => $mkauop,
        kaukc     => $mkaukcop,
        zakname   => $zname,
        zaknamekc => $znamekc,
        summa     => $tsummaop,
        dok       => $mdok,
    });

    
};

=head1 AUTHOR

peinguin,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
