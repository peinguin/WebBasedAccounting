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

    $c->stash->{template} = 'finoperadd.tt';
}

=head1 AUTHOR

peinguin,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
