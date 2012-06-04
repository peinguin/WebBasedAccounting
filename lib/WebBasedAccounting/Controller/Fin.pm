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
    my $ryadok =1;
    my $msp=0;
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
    $txt .= '<table border=1 cellpadding="0" cellspacing="0">';
    $txt .= '<tr bgcolor="#99ccff"><th align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=number&razoper='. $razoper.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'" id="num" class=winleft>_____________Назва____________</a></NOBR></th>';
    $txt .= '<td align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=name&razoper='. $razoper.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'" class=winleft>_Основ. проводка</a></NOBR></td>';

    $txt .= '</tr>';
    my $keymove=0;
    my $zebra=0;
    
    my $idoper;
    
    while ( my $row = $oper->next() ){
        
        my ($id, $num1,$name,$satel,$com,$oc,$coc,$kc,$ckc) = ($row->id, $row->num1,$row->name,$row->satelit ,$row->com,$row->oc,$row->coc,$row->kc,$row->ckc);

        $ryadok = $ryadok+1;
        
        $keymove=$keymove+1;
        my $idmove="r$keymove";
        my $idmover="s$keymove";
        
        if ($zebra eq 0) {
            $txt .=  '<tr bgcolor="#eeeeee" id='.$idmover.' ><td align=left>' ;
            $zebra = 1
        }else{
            $txt .=  '<tr bgcolor="#dedede" id='.$idmover.' ><td align=left>' ;
            $zebra = 0
        }
    
        my $com1=uri_escape_utf8($com);
    
        $txt .= '<a href="/cgi-bin/finoperadd.cgi?idkrt='.$id.'&razoper='.$razoper.'&psort='.$idsort.'&navnakl='.($sdvigpn+1).'&sprnum='.$msp.'" title='.$com1.' id='.$idmove.'  class="platoper">'.$name.'</a></td>';
        $txt .=  '<th nowrap><NOBR>' .$oc.' '.$coc.'- - '.$kc.' '.$ckc.' '. '</NOBR></td></tr>';
    }
    
    while ($ryadok < 19) {
        $ryadok = $ryadok+1;
        $txt .=  '<tr bgcolor="#eeeeee"><td> ..........</td>' . '<td> ............</td></tr>';
    };
    
    $txt .=  '</table>';
    
    my $sdvigPD=$sdvigpn+20;
    if ($porojnia < $sdvigPD) {
        $sdvigPD=$porojnia-15;
    }
    
    $txt .= '<div  style="float:left; width: 25%; background-color: #99ccff;">';
    $txt .= '<a href="?navnakl='.'1'.'&razoper='. $razoper.'&psort='.$idsort.'&poisk='.$prpoisk.'" id="beg" class=winleft>Home</a></div>';
    $txt .= '<div  style="float:left; width: 24%; background-color: #99ccff;">';
    $txt .= '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($sdvigpn-18).'&razoper='. $razoper.'&psort='.$idsort.'&poisk='.$prpoisk.'" id="pup" class=winleft>pageUp</a></div>';
    $txt .= '<div  style="float:left; width: 29%; background-color: #99ccff;">';
    $txt .= '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($sdvigPD).'&razoper='. $razoper.'&psort='.$idsort.'&poisk='.$prpoisk.'" id="pdw" class=winleft>PageDown</a></div>';
    $txt .= '<div  style="float:left; width: 22%; background-color: #99ccff;">';
    $txt .= '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($porojnia-15).'&razoper='. $razoper.'&psort='.$idsort.'&poisk='.$prpoisk.'" id="pend" class=winleft>End</a></div>';
    $txt .= ' <div  style="clear:both;"></div>';
    
    #новий пошук
    $txt .= '<form id="naklpoisk" action="/cgi-bin/sortnakl.cgi" method="post">';
    $txt .= '<div id="fpoisk" style="float:left; width: 75%;">';
    $txt .= '<input type=hidden size=10 name=psort value='.$idsort.'>';
    $txt .= '<input type=hidden size=10 name=navnakl value='.$sdvigpn.'>';
    $txt .= '<input type=hidden  name=razoper value='.$razoper.'>';
    $txt .= '<input type=submit value="Пошук">';
    $txt .= '<input type=text size=20 id="polep" name="poisk"> -'.$sdvigpn.'-';
    $txt .= '</div>';
    $txt .= ' <div  style="clear:both;"></div>';
    $txt .= '</form>';

    $c->stash->{txt} = $txt;

    $c->stash->{template} = 'finspoper.tt';
}


=head1 AUTHOR

peinguin,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
