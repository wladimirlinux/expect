#! /usr/bin/perl -w
use Expect;
$user="admin";
$pass="13969100";
$order="ssh -l $user 192.168.4.121";
$myconn = Expect -> spawn($order) or die "Can not spawn\n";
$myconn->expect(15,"password\:");
$myconn->send("$pass\r");
$myconn->send("\r");
$myconn->expect(15,">");
$myconn->send("print file\r");
$myconn->close();
