 #!/usr/bin/perl
    use strict vars;
    use warnings;
    use LWP::UserAgent;
    use HTTP::Request::Common qw(POST);
    use HTTP::Cookies;
#########################################this is to get schedule
    my $ua = LWP::UserAgent->new;

    # Define user agent type
    $ua->agent('Mozilla/8.0');
	#$ua->referer('http://www.indianrail.gov.in/train_Schedule.html');
############New Input

#  Host 	www.indianrail.gov.in 	
# User-Agent 	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0 	
# Accept 	text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8 	
#	Accept-Language 	en-US,en;q=0.5 	
#`Accept-Encoding 	gzip, deflate 	
#	Referer 	http://www.indianrail.gov.in/train_Schedule.html


my $num_args = $#ARGV + 1;
if ($num_args != 2) {
    print "\nUsage: name.pl first_name last_name\n";
    exit;
}

my $first_name=$ARGV[0];
my $last_name=$ARGV[1];

print "Hello, $first_name $last_name\n";



################## http://www.indianrail.gov.in/cgi_bin/inet_accavl_cgi.cgi

my $date=28;
my $month=7;
my $year=2016;
my $origin_stn='TATA';
my $destination_stn='ALLP';
my $class='SL';
my $quota='CK';
	#http://www.indianrail.gov.in/cgi_bin/inet_accavl_cgi_10251.cgi
    # Request object
    #my $req = GET 'http://www.perlmeme.org';
my $req = POST 'http://www.indianrail.gov.in/cgi_bin/inet_accavl_cgi_10251.cgi',
     [   lccp_trnno => '18189',
	lccp_day => $date,
	lccp_month => $month,
	lccp_srccode => $origin_stn,
	lccp_dstncode => $destination_stn,
	lccp_class1 => $class,
	lccp_quota => $quota,
	lccp_classopt => 'ZZ',
	lccp_class2 => 'ZZ',
	lccp_class3 => 'ZZ',
	lccp_class4 => 'ZZ',
	lccp_class5 => 'ZZ',
	lccp_class6 => 'ZZ',
	lccp_class7 => 'ZZ',
        
     ];
$req->header(Referer => 'http://www.indianrail.gov.in/seat_Avail.html');

while (1){
my $res = $ua->request($req);





    # Make the request
   # my $res = $ua->request($req);

    # Check the response
    if ($res->is_success) {
        #print $res->content;
    } else {
        print $res->status_line . "\n";
    }
    
#=pod

  my $filename = "this.html";
open my $fh, ">", $filename or die("Could not open file. $!");

print $fh $res->content;
close $fh;
    #print "################################# \n";
    my $temp;
    open (FILE, '<', 'this.html') or die "Could not open this.txt: $!";
  
		  while (<FILE>) {
        #print $_ if (/table_border_both">/ .. /TD/);
    }
    
    close (FILE) or die "Could not close this.html: $!";
#=cut   


=pod

  my $filename = "this.html";
open my $fh, ">", $filename or die("Could not open file. $!");

#print $fh $res->content;
close $fh;
    print "################################# \n";
    my $temp;
    open (FILE, '<', 'this.html') or die "Could not open this.txt: $!";
  
          while (<FILE>) {
        print $_ if (/table_border_both">/ .. /TD/);
    }
    
    close (FILE) or die "Could not close this.html: $!";
=cut 



my $f_cont =$res->content;

my $date_spacer='';
if ($date<10){
    my $date_spacer=' ';

    }else {
        my $date_spacer='';

    }


 my $month_spacer='';
if ($month<10){
    my $month_spacer=' ';


    }else {
        my $month_spacer='';

    }
    

 my $final_date="$month".'-'."$year";
 my @values = split($final_date, $f_cont);
 my @t_values=split('<', $values[2]);
 my @t1_values=split('>', $t_values[2]);
 my @final=split('AVAILABLE', $t1_values[1]);
 



 #print $final[1];


my $arrSize = @final;
#print $arrSize; # Third way to print array size
if ($arrSize>=2) {
	print "$final[1] \n";
}else {

	print "$t1_values[1]\n";
}

exit 0;
}
    exit 0;
