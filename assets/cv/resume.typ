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

// ── Certification entry (no link) ─────────────────────────────────────────────
#let cert_entry_nolink(name, issuer, date) = {
  grid(
    columns: (1fr, auto),
    [• #name — #text(fill: muted, issuer)],
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
DevOps & Security Engineer with hands-on experience operating Azure and Kubernetes infrastructure, building CI/CD systems, and supporting cloud-native workloads. Strong systems and software engineering foundation in Linux, networking, backend development, and distributed systems, with a growing specialization in security engineering, secure infrastructure, and offensive security.

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
    "Operated Azure cloud infrastructure across networking, compute, storage, and security — configuring VNets, NSGs, Key Vault, managed identities, and role-based access controls.",
    "Managed AKS cluster lifecycle including node pool scaling, version upgrades, workload deployments, rolling updates, and production troubleshooting of containerised microservices.",
    "Built and maintained CI/CD pipelines with GitHub Actions and Azure DevOps Pipelines, automating build, test, and deployment workflows across multiple environments.",
    "Deployed and configured Elastic Stack (ELK) for centralised log ingestion, built custom dashboards, defined alerting rules, and tuned log retention strategies across services.",
  )
)

#v(0.4em)

#job(
  "CoreNetworks",
  "DevOps Engineer",
  "Oct 2023 – Aug 2024",
  "Greece",
  (
    "Developed and maintained Python/Django backend services, implementing REST APIs and data models for production workloads.",
    "Built CI/CD workflows integrating GitHub Actions and the GitHub API, automating build, test, and deployment pipelines from commit to production.",
    "Automated operational tasks using Bash and Python scripts, reducing manual overhead across development and deployment workflows.",
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

#skill_row("Cloud & Platform", "Azure (VMs, Networking, Key Vault, Storage, IAM) · AKS / Kubernetes · Docker · Terraform · Bicep")
#skill_row("CI/CD & Automation", "Azure DevOps Pipelines · GitHub Actions · Git · Bash & Shell Scripting · Python")
#skill_row("Observability", "Elastic Stack (ELK) · Log ingestion & retention · Custom dashboards & alerting")
#skill_row("Security", "Web App Testing (Burp Suite, OWASP Top 10) · Network Scanning (Nmap, Netcat) · Vulnerability Assessment · Linux Privilege Escalation · Cryptography & Applied Crypto · Secure Network Design")
#skill_row("Systems & Programming", "Linux (Ubuntu, Debian, CentOS) · C / C++ · Python · SQL (MySQL, PostgreSQL) · Networking & Distributed Systems")

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
// PROJECTS
// ════════════════════════════════════════════════════════════════════════════
#section("Projects")

*MyShell* — #link("https://github.com/Kanellaman/mysh-A-Bash-like-Shell-Implementation")[GitHub Link]
Unix-style shell implemented in C, supporting pipes, I/O redirection, background process execution, signal handling, and job control. Demonstrates systems programming depth at the OS/kernel interface level, implementing standard Unix shell behaviour from scratch.

// ════════════════════════════════════════════════════════════════════════════
// LANGUAGES
// ════════════════════════════════════════════════════════════════════════════
#section("Languages")
#skill_row("Greek", "Native")
#skill_row("English", "C2 — Proficient (all components)")
#skill_row("German", "B1 — Independent (Goethe-Zertifikat B1, 2016)")
