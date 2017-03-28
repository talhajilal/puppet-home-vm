import 'hosts.pp'
import 'man.pp'
import 'http.pp'
import 'ntp.pp'
node 'web-01' {
include helloworld
include etc_hosts
include man
include httpd
include ntpd
}

class helloworld {

    file { '/etc/motd':
    owner  => 'root',
    group  => 'root',
    mode    => '0644',
    content => "You are Entering In HELL Becarefull , I love Hackers if they can hack my system but make sure you have no foot prints left!\n",
    }

 }

node 'web-02' {
include helloworld
include man
include etc_hosts
include httpd
include ntpd
}
