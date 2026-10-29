import Lean

/- Fixed helper process directory and absent host credentials, without values. -/
#eval do
  let result ← IO.Process.output {
    cmd := "/usr/local/bin/python3"
    args := #["-I", "-B", "-c",
      "import os,pathlib\nassert pathlib.Path.cwd() == pathlib.Path('/work/source')\nassert os.environ.get('HOME') == '/work/home'\nassert os.environ.get('TMPDIR') == '/work/tmp'\nassert not any(k in os.environ for k in ['OPENAI_API_KEY','GH_TOKEN','GITHUB_TOKEN','AWS_SECRET_ACCESS_KEY','SSH_AUTH_SOCK'])"]
  }
  if result.exitCode != 0 then
    throw (IO.userError "synthetic directory/environment probe failed")
