 #!/usr/bin/perl
    use strict vars;
    use warnings;
    use LWP::UserAgent;
    use HTTP::Request::Common qw(POST);
    use HTTP::Cookies;
#########################################this is to take the list of stations for a train
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






##################






    # Cookies
    $ua->cookie_jar(
        HTTP::Cookies->new(
            file => 'mycookies.txt',
            autosave => 1
        )
    );

    # Request object
    #my $req = GET 'http://www.perlmeme.org';
my $req = POST 'http://www.indianrail.gov.in/cgi_bin/inet_trnnum_cgi.cgi',  
     [   lccp_trnname => '18189'
        
     ];
$req->header(Referer => 'http://www.indianrail.gov.in/train_Schedule.html');
my $res = $ua->request($req);





    # Make the request
   # my $res = $ua->request($req);

    # Check the response
    if ($res->is_success) {
        print $res->content;
    } else {
        print $res->status_line . "\n";
    }
    
    
  my $filename = "this.html";
open my $fh, ">", $filename or die("Could not open file. $!");

print $fh $res->content;
close $fh;
    

    exit 0;
