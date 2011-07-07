define smartd::openbsd::device(){
  openbsd::rc_local{
    "smartctl_for_${name}":
      binary => '/sbin/atactl',
      start_cmd => "/sbin/atactl ${name} smartenable"
  }
  cron{
    "check_smartctl_for_${name}":
      minute => 30,
      hour => 5,
      user => root,
      command => "/sbin/atactl ${name} smartstatus >> /dev/null 2>&1"
  }
}