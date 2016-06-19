rule AAR
{
	meta:
		author = " Kevin Breen <kevin@techanarchy.net>"
		date = "2014/04"
		ref = "http://malwareconfig.com/stats/AAR"
		maltype = "Remote Access Trojan"
		filetype = "exe"

	strings:
		$a = "Hashtable"
		$b = "get_IsDisposed"
		$c = "TripleDES"
		$d = "testmemory.FRMMain.resources"
		$e = "$this.Icon" wide
		$f = "{11111-22222-20001-00001}" wide
		$g = "@@@@@"

	condition:
		all of them
}