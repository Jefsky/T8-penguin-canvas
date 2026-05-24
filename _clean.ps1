Set-Location 'e:\PenguinPravite\T8-penguin-canvas'
git rm --cached _git_push.ps1 _git_log.txt 2>&1 | Out-File -FilePath '_clean_log.txt' -Encoding utf8
git add -A 2>&1 | Out-File -FilePath '_clean_log.txt' -Append -Encoding utf8
git commit -m "chore: 清理误提交的临时脚本 _git_push.ps1 / _git_log.txt" 2>&1 | Out-File -FilePath '_clean_log.txt' -Append -Encoding utf8
"EXIT_COMMIT=$LASTEXITCODE" | Out-File -FilePath '_clean_log.txt' -Append -Encoding utf8
git push origin main 2>&1 | Out-File -FilePath '_clean_log.txt' -Append -Encoding utf8
"EXIT_PUSH=$LASTEXITCODE" | Out-File -FilePath '_clean_log.txt' -Append -Encoding utf8
git log -2 --oneline 2>&1 | Out-File -FilePath '_clean_log.txt' -Append -Encoding utf8
