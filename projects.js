/* ============================================================
   PROJECTS — this is the only file you edit to add work.
   Each object below becomes a tile. Copy one, change the fields,
   done. No HTML or layout changes needed.
   ============================================================ */
const projects = [
  {
    title: "MDC Private Cloud Platform",
    year: "2025–26",
    description:
      "An enterprise-grade private cloud, designed and built from scratch: Proxmox + three K3s clusters, a Django/Temporal control plane, ArgoCD GitOps, and Ceph distributed storage — fully declarative, foundation-up.",
    tags: ["K3s", "Temporal", "Django", "Ceph", "ArgoCD", "Ansible"],
    links: [{ label: "Write-up", href: "#" }],
  },
  {
    title: "Declarative VM Orchestrator",
    year: "2026",
    description:
      "A Temporal + Ansible reconciler that converges any VM to its declared spec — the GitOps model applied to virtual machines: a folder of per-VM files is the fleet, a workflow makes reality match intent.",
    tags: ["Temporal", "Ansible", "Proxmox", "Python"],
    links: [{ label: "Write-up", href: "#" }],
  },
  {
    title: "Deploy-A-Saurus — Image Pipeline",
    year: "2025–26",
    description:
      "A recipe-driven image + template build pipeline — the platform's deployment factory: versioned golden templates, deploy-time build layers, and a GitOps dev → main → tag promotion flow.",
    tags: ["Temporal", "Packer", "GitOps", "CI/CD"],
    links: [{ label: "Write-up", href: "#" }],
  },
  {
    title: "Add your next project",
    year: "",
    description:
      "Copy any object above, change the fields, save. It shows up here automatically — that's the whole edit workflow.",
    tags: ["edit", "projects.js"],
    links: [],
  },
];

/* ---- render (you shouldn't need to touch anything below) ---- */
function renderProjects() {
  const grid = document.getElementById("projects");
  grid.innerHTML = projects
    .map((p) => {
      const tags = (p.tags || []).map((t) => `<span class="tag">${t}</span>`).join("");
      const links = (p.links || [])
        .map((l) => `<a href="${l.href}" target="_blank" rel="noopener">${l.label} &rarr;</a>`)
        .join("");
      return `
        <article class="card">
          <div class="card__head">
            <h3 class="card__title">${p.title}</h3>
            ${p.year ? `<span class="card__year">${p.year}</span>` : ""}
          </div>
          <p class="card__desc">${p.description}</p>
          ${tags ? `<div class="card__tags">${tags}</div>` : ""}
          ${links ? `<div class="card__links">${links}</div>` : ""}
        </article>`;
    })
    .join("");
}

renderProjects();
document.getElementById("year").textContent = new Date().getFullYear();
