#!/usr/bin/perl

#use strict;
use Net::SSH::Perl;

my $host = "192.168.4.121";
my $user = "admin";
my $pass = "13969100";

my $ssh = Net::SSH::Perl->new($host,cipher => "IDEA");

$ssh->login($user, $pass);
   
my($stdout, $stderr, $exit) = $ssh->cmd("/ip firewall filter remove [find comment=AddedByCapping && src-address=192.168.100.2]'");
