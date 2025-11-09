# 🛡️ Kydras Governance Dashboard

[![Compliance Dashboard](https://img.shields.io/badge/Kydras-Dashboard-blue?style=for-the-badge&logo=github)](https://kydras8.github.io/kydras-governance/)
[![Deploy Dashboard](https://github.com/Kydras8/kydras-governance/actions/workflows/deploy-dashboard.yml/badge.svg)](https://github.com/Kydras8/kydras-governance/actions/workflows/deploy-dashboard.yml)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

---

## 📊 Live Compliance Status
- **Kydras Systems**: ✅ Operational  
- **Appenda Integration**: 🔄 In Progress  
- **Governance Pipeline**: 🟢 Healthy  

---

## 🚀 Features
- **Auto‑Publish Dashboards** → Every commit updates [GitHub Pages](https://kydras8.github.io/kydras-governance/) instantly.  
- **Audit‑Grade History** → Timestamped snapshots stored in `/docs/history`.  
- **Branded Badges** → Executive dashboards linked directly from repo READMEs.  
- **CI/CD Hooks** → Governance checks wired into GitHub Actions.  

---

## 🧩 Architecture
```mermaid
graph TD
    A[export.ps1] --> B[docs/index.html]
    B --> C[GitHub Pages]
    C --> D[Executive Dashboard]
    A --> E[docs/history/*.html]
