// ─────────────────────────────────────────────────────────────────────────────
//  Konstantinos Kanellakis — CV
//  Generated from _knowledge_base/data/*.yml
// ─────────────────────────────────────────────────────────────────────────────

#set page(paper: "a4", margin: (x: 1.5cm, y: 1.2cm))
#set text(font: "Lato", size: 10pt, fill: rgb("#2d2d2d"))
#set par(leading: 0.55em)

// ── Accent colours ──────────────────────────────────────────────────────────
#let navy = rgb("#1a2b4a")
#let muted = rgb("#666666")

// ── Icon helper ──────────────────────────────────────────────────────────────
// Renders a small SVG icon inline with linked text.
#let icon_link(icon_path, url, label) = {
  link(url)[
    #box(image(icon_path, height: 0.75em), baseline: -0.1em)
    #h(0.2em)
    #label
  ]
}

// ── Section heading ──────────────────────────────────────────────────────────
#let section(title) = {
  v(0.6em)
  text(fill: navy, weight: "bold", size: 11pt, upper(title))
  line(length: 100%, stroke: 0.5pt + navy)
  v(0.2em)
}

// ── Job entry ────────────────────────────────────────────────────────────────
#let job(company, role, period, location, bullets) = {
  grid(
    columns: (1fr, auto),
    [*#role* — #company],
    text(fill: muted, period)
  )
  text(fill: muted, size: 9pt, location)
  v(0.15em)
  for b in bullets {
    [• #b \ ]
  }
}

// ── Education entry ──────────────────────────────────────────────────────────
#let edu(degree, institution, period, extra) = {
  grid(
    columns: (1fr, auto),
    [*#degree*],
    text(fill: muted, period)
  )
  text(fill: muted, size: 9pt, institution)
  v(0.1em)
  extra
}

// ── Skill row ────────────────────────────────────────────────────────────────
#let skill_row(category, items) = {
  grid(
    columns: (3.5cm, 1fr),
    gutter: 0.3em,
    text(fill: navy, weight: "bold", size: 9pt, category),
    text(size: 9pt, items)
  )
  v(0.1em)
}

// ── Certification entry ───────────────────────────────────────────────────────
#let cert_entry(name, issuer, date, url) = {
  grid(
    columns: (1fr, auto),
    [• #link(url)[#name] — #text(fill: muted, issuer)],
    text(fill: muted, date)
  )
  v(0.05em)
}

// ════════════════════════════════════════════════════════════════════════════
// HEADER
// ════════════════════════════════════════════════════════════════════════════
#align(center)[
  #text(size: 22pt, weight: "bold", fill: navy)[Konstantinos Kanellakis]
  \
  #text(size: 11pt, fill: muted)[DevOps & Security Engineer]
  \
  #v(0.3em)
  #set text(size: 9pt)
  #icon_link("icons/email.svg", "mailto:kanellakhskostas@gmail.com", "kanellakhskostas@gmail.com")
  #h(0.8em)
  #box(image("icons/phone.svg", height: 0.75em), baseline: -0.1em)#h(0.2em)Phone on request
  #h(0.8em)
  #icon_link("icons/location.svg", "https://maps.google.com/?q=Athens,Greece", "Athens, Greece")
  \
  #v(0.15em)
  #icon_link("icons/globe.svg", "https://kanellaman.github.io", "kanellaman.github.io")
  #h(0.8em)
  #icon_link("icons/linkedin.svg", "https://www.linkedin.com/in/kanellakis-konstantinos", "LinkedIn")
  #h(0.8em)
  #icon_link("icons/github.svg", "https://github.com/Kanellaman", "GitHub")
  #h(0.8em)
  #icon_link("icons/tryhackme.svg", "https://tryhackme.com/p/kanellakhskostas", "TryHackMe")
  #h(0.8em)
  #icon_link("icons/cryptohack.svg", "https://cryptohack.org/user/kanellam/", "CryptoHack")
]

#v(0.4em)

// ════════════════════════════════════════════════════════════════════════════
// SUMMARY
// ════════════════════════════════════════════════════════════════════════════
#section("Summary")
DevOps & Security Engineer with hands-on experience in cloud infrastructure, CI/CD pipelines, and Kubernetes. Currently pursuing an MSc in Information Systems Development and Security at AUEB, with a growing focus on penetration testing, secure networks, and security engineering.

// ════════════════════════════════════════════════════════════════════════════
// EXPERIENCE
// ════════════════════════════════════════════════════════════════════════════
#section("Experience")

#job(
  "Performance Technologies S.A.",
  "Cloud DevOps Engineer",
  "Oct 2024 – Present",
  "Athens, Greece",
  (
    "Cloud Infrastructure Management: Managing and maintaining cloud resources on Microsoft Azure, including networking, compute, storage, and security configurations.",
    "Kubernetes (AKS): Operating and maintaining Azure Kubernetes Service clusters, including deployments, scaling, upgrades, and troubleshooting of microservices.",
    "CI/CD Pipelines: Designing and maintaining automated pipelines using GitHub Actions and Azure DevOps Pipelines for builds, tests, and deployments.",
    "Monitoring & Observability: Implementing and managing monitoring/logging with the Elastic Stack (ELK), including custom dashboards, alerting rules, and log retention strategies.",
  )
)

#v(0.4em)

#job(
  "CoreNetworks",
  "DevOps Engineer",
  "Oct 2023 – Aug 2024",
  "Greece",
  (
    "Developed and maintained backend systems using Python and Django, ensuring high performance, reliability, and scalability.",
    "Implemented DevOps best practices including CI/CD pipelines, automated testing, and scripting using Bash and Python.",
    "Managed the full application development lifecycle from development to deployment using CI/CD pipelines integrated with the GitHub API.",
  )
)

// ════════════════════════════════════════════════════════════════════════════
// EDUCATION
// ════════════════════════════════════════════════════════════════════════════
#section("Education")

#edu(
  "MSc in Information Systems Development and Security",
  "Athens University of Economics and Business (AUEB)",
  "Sep 2025 – Present",
  text(size: 9pt, fill: muted)[
    Key topics: Penetration Testing Methodology · Network Security & Secure Design · Cryptography & Applied Crypto · Vulnerability Assessment · Security-Aware Software Architecture
  ]
)

#v(0.4em)

#edu(
  "Major in Computer Science",
  "National Kapodistrian University of Athens (NKUA) — Grade: 8.3 / 10",
  "Oct 2020 – Oct 2024",
  text(size: 9pt, fill: muted)[
    Systems programming (C), Algorithms & Data Structures, Operating Systems, Database Design (MySQL, PostgreSQL), AI/ML, Networks & Distributed Systems
  ]
)

// ════════════════════════════════════════════════════════════════════════════
// TECHNICAL SKILLS
// ════════════════════════════════════════════════════════════════════════════
#section("Technical Skills")

#skill_row("Cloud & IaC", "Azure (Advanced) · Kubernetes (Advanced) · Docker (Intermediate) · Terraform (Intermediate) · Bicep (Beginner) · AWS (Beginner)")
#skill_row("DevOps & CI/CD", "GitHub Actions · Azure DevOps Pipelines · Git (Advanced) · Bash Scripting (Experienced) · Python (Experienced)")
#skill_row("Security", "Nmap · Burp Suite · OWASP Top 10 · Vulnerability Assessment · Cryptography · Linux Privilege Escalation · Secure Network Design · CTF (TryHackMe)")
#skill_row("Programming", "Python (Experienced) · C/C++ (Experienced) · Java (Intermediate) · Shell Scripting (Experienced) · SQL — MySQL, PostgreSQL · JavaScript")
#skill_row("Systems & Tools", "Linux — Ubuntu, Debian, CentOS (Advanced) · Windows (Advanced) · Docker Compose · Scrum / Kanban")

// ════════════════════════════════════════════════════════════════════════════
// CERTIFICATIONS
// ════════════════════════════════════════════════════════════════════════════
#section("Certifications")

#cert_entry(
  "Certified Kubernetes Administrator (CKA)",
  "CNCF / Linux Foundation",
  "2025",
  "https://www.credly.com/badges/1ec6495d-b9e4-4c78-ac68-b08f13472aa2/public_url"
)
#cert_entry(
  "Azure Administrator Associate (AZ-104)",
  "Microsoft",
  "2025",
  "https://learn.microsoft.com/api/credentials/share/en-us/KonstantinosKanellakis-7590/453C597D25F35E0D?sharingId=9443E5488F83DC5A"
)
#cert_entry(
  "GitHub Foundations",
  "GitHub",
  "2025",
  "https://www.credly.com/badges/7253bd7f-0758-4403-8a37-af53e6a69d0e/linked_in_profile"
)
#cert_entry(
  "Security, Compliance, and Identity Fundamentals (SC-900)",
  "Microsoft",
  "2024",
  "https://learn.microsoft.com/api/credentials/share/en-us/KonstantinosKanellakis-7590/CB65591A4C4B30A3?sharingId=9443E5488F83DC5A"
)
#cert_entry(
  "Azure Fundamentals (AZ-900)",
  "Microsoft",
  "2024",
  "https://learn.microsoft.com/api/credentials/share/en-us/KonstantinosKanellakis-7590/86765207ADE2618B?sharingId=9443E5488F83DC5A"
)

// ════════════════════════════════════════════════════════════════════════════
// LANGUAGES
// ════════════════════════════════════════════════════════════════════════════
#section("Languages")
#skill_row("Greek", "Native")
#skill_row("English", "C2 — Proficient (all components)")
#skill_row("German", "B1 — Independent (Goethe-Zertifikat B1, 2016)")
