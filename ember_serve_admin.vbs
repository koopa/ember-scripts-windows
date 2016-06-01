Set objShell = CreateObject("Shell.Application") 
path = WScript.Arguments.Item(0)
args = "/k cd /d " & path & " && ember s"
objShell.NameSpace(path)
objShell.ShellExecute "cmd", args, "", "runas" 
