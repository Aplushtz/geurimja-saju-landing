# 그림자사주 랜딩 v2 — GitHub Pages 배포 스크립트
# 저장소: https://github.com/Aplushtz/geurimja-saju-landing
# 라이브 URL: https://aplushtz.github.io/geurimja-saju-landing/

$ErrorActionPreference = "Stop"
$LandingDir = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "=== 그림자사주 랜딩 v2 GitHub Pages 업데이트 ===" -ForegroundColor Cyan
Write-Host "배포 디렉토리: $LandingDir" -ForegroundColor Gray

Set-Location $LandingDir

# git push (이미 remote 연결됨)
git add -A
git commit -m "update: 랜딩 수정 $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
git push

Write-Host "`n=== 배포 완료 — GitHub Actions 빌드 약 1분 ===" -ForegroundColor Cyan
Write-Host ""
Write-Host "★ 소재별 광고 URL:" -ForegroundColor Yellow
Write-Host "  집착고리: https://aplushtz.github.io/geurimja-saju-landing/v2-obsession.html?utm_source=meta&utm_medium=paid&utm_campaign=shadow_gate1&utm_content=obsession"
Write-Host "  꿈속나:   https://aplushtz.github.io/geurimja-saju-landing/v2-dream-self.html?utm_source=meta&utm_medium=paid&utm_campaign=shadow_gate1&utm_content=dream_self"
Write-Host "  질투글자: https://aplushtz.github.io/geurimja-saju-landing/v2-jealousy.html?utm_source=meta&utm_medium=paid&utm_campaign=shadow_gate1&utm_content=jealousy"
Write-Host ""
Write-Host "★ 실집행 전 체크리스트:" -ForegroundColor Yellow
Write-Host "  [ ] FORMSPREE_ID 교체 (formspree.io 무료 계정 → 폼 생성 → ID 복사)"
Write-Host "  [ ] PIXEL_ID 교체 (Meta 비즈니스 → 이벤트 관리자 → 픽셀 ID)"
Write-Host "  [ ] 위 두 값을 3개 HTML 파일에 각각 붙여넣기 후 이 스크립트 재실행"
