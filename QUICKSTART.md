# Quick Start — Portfolio Update Cheat Sheet

> Open this when you come back after months and need to update your portfolio.

## TL;DR

```
@planner "I got a new certification: CKA"
```

That's it. The planner handles everything — updates KB, site, and CV.

---

## What to Say to `@planner`

| You want to... | Say |
|---|---|
| Add a cert | `@planner "New cert: CKA from CNCF, Jan 2025"` |
| Update job | `@planner "I changed jobs to SRE at Company X"` |
| Add a skill | `@planner "I now have advanced Terraform experience"` |
| Add a project | `@planner "New project: K8s Operator, github.com/..."` |
| Update bio | `@planner "Update my summary to mention SRE focus"` |
| Bulk update | `@planner "New job at X, got CKA cert, add Helm skill"` |

The planner will:
1. **Ask about stale time-bound values** (years of experience, copyright year, "currently preparing for X", etc.)
2. Ask what should go on the **site** vs **CV** vs **KB only**
3. Suggest visibility changes for old entries if relevant
4. Update everything automatically

## File Locations (if you need manual access)

| What | Where |
|---|---|
| Data (source of truth) | `_knowledge_base/data/*.yml` |
| Stale content catalogue | `_knowledge_base/data/stale_audit.yml` |
| Site HTML | `_includes/*.html` |
| CV source | `assets/cv/resume.typ` |
| CV PDF | `assets/resume.pdf` |
| Agent configs | `.github/agents/*.agent.md` |
| Career focus | `_knowledge_base/data/about.yml` → `target_role` |

## Visibility Flags

Every YAML entry has `site: true/false` and `cv: true/false`:
- `site: true` → appears on website
- `cv: true` → appears in CV/PDF
- Both default to `true` for new entries
- The planner asks before changing existing flags

## Agents

| Agent | Does what |
|---|---|
| `@planner` | **Talk to this one.** Orchestrates everything. |
| `@knowledge-base` | Updates YAML data (called by planner) |
| `@site-update` | Syncs YAML → HTML (called by planner) |
| `@cv-typst` | Generates Typst CV → PDF (called by planner) |

## Local Dev

```bash
docker-compose up          # Site at http://localhost:4000
```

## Deploy

Push to `master`. GitHub Actions builds and deploys automatically.
