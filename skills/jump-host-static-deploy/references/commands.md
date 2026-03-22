# Jump-Host Static Deploy Templates

## PowerShell template

```powershell
$archive = "C:\path\to\site-dist.tgz"
$key = "C:\path\to\id_ed25519"
$jump = "jumpuser@example-jump-host"
$target = "deploy@example-app-host"
$remoteArchive = "/home/deploy/site-dist.tgz"
$remoteRoot = "/var/www/site"
$hostHeader = "example.com"

npm run build
tar -czf $archive -C "C:\path\to\project" dist
scp -J $jump -i $key $archive "${target}:${remoteArchive}"
ssh -J $jump -i $key $target "sudo rm -rf ${remoteRoot}/* && sudo tar -xzf ${remoteArchive} -C ${remoteRoot} --strip-components=1 && curl -I http://127.0.0.1/ -H 'Host: ${hostHeader}'"
```

## Bash template

```bash
archive="/tmp/site-dist.tgz"
key="$HOME/.ssh/id_ed25519"
jump="jumpuser@example-jump-host"
target="deploy@example-app-host"
remote_archive="/home/deploy/site-dist.tgz"
remote_root="/var/www/site"
host_header="example.com"

npm run build
tar -czf "$archive" -C /path/to/project dist
scp -J "$jump" -i "$key" "$archive" "${target}:${remote_archive}"
ssh -J "$jump" -i "$key" "$target" \
  "sudo rm -rf ${remote_root}/* && sudo tar -xzf ${remote_archive} -C ${remote_root} --strip-components=1 && curl -I http://127.0.0.1/ -H 'Host: ${host_header}'"
```

## Validation checklist

1. Local build succeeds.
2. Upload succeeds through the jump host.
3. Archive extracts cleanly on the target host.
4. Server-local `curl` returns the expected status.
5. Public URL or IP returns the expected status.
