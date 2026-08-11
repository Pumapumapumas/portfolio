/* ============================================================
   SELECTED WORK — edit this array to manage the cards.
   First card = the flagship (shown first). Add as many as you want.
   Fields: title, kicker?, year?, description, tags[], image?, link?{label,href}.
   Drop a real image at assets/<file> and set `image: "assets/<file>"` to show it
   (until then a placeholder tile renders). Each card will later open its own
   detail page — that's the next pass.
   ============================================================ */
const projects = [
  {
    // FLAGSHIP — first card.
    title: "MDC — Micro-Data-Center",
    kicker: "HelloSkyy",
    year: "2025–26",
    // Your original topic, kept as a reminder. Refine the copy when you flesh it out —
    // drop "enterprise-grade / from scratch / foundation-up" (banned superlatives) and
    // make the status truthful + dated.
    description:
      "An enterprise-grade private cloud, designed and built from scratch: Proxmox + three K3s clusters, a Django/Temporal control plane, ArgoCD GitOps, and Ceph distributed storage — fully declarative, foundation-up.",
    tags: ["K3s", "Temporal", "Django", "Ceph", "ArgoCD", "Ansible"],
    image: "",
    link: { label: "GitHub", href: "https://github.com/helloskyy-io" },
  },
  {
    title: "Declarative VM Orchestrator",
    kicker: "HelloSkyy",
    year: "2026",
    description:
      "A Temporal + Ansible reconciler that converges any VM to its declared spec — the GitOps model applied to virtual machines: a folder of per-VM files is the fleet, a workflow makes reality match intent.",
    tags: ["Temporal", "Ansible", "Proxmox", "Python"],
    image: "",
    link: null,
  },
  {
    title: "Deploy-A-Saurus — Image Pipeline",
    kicker: "HelloSkyy",
    year: "2025–26",
    description:
      "A recipe-driven image + template build pipeline — the platform's deployment factory: versioned golden templates, deploy-time build layers, and a GitOps dev → main → tag promotion flow.",
    tags: ["Temporal", "Packer", "GitOps", "CI/CD"],
    image: "",
    link: null,
  },
  {
    title: "FluxEdge",
    kicker: "InFlux Technologies",
    year: "2023–25",
    description:
      "A decentralized GPU compute cluster with an open, self-service marketplace — GPU access for researchers, developers, and businesses. Architected as Solutions Architect, AI & Infrastructure.",
    tags: ["GPU", "Decentralized", "Marketplace"],
    image: "",
    link: { label: "fluxedge.ai", href: "https://fluxedge.ai/" },
  },
  {
    title: "FluxAI",
    kicker: "InFlux Technologies",
    year: "2023–25",
    description:
      "A multi-model AI platform: open-source LLMs, RAG pipelines, agentic AI, and an embeddable AI widget — including on-prem, HIPAA-capable deployments.",
    tags: ["LLMs", "RAG", "Agentic AI", "On-prem"],
    image: "",
    link: { label: "runonflux.com", href: "https://runonflux.com/flux-ai/" },
  },
  {
    title: "Coursework project (M.S., ECU)",
    kicker: "reminder — replace",
    description:
      "A project built during the M.S. — e.g. from CSCI 6905 Agentic AI, or a SENG software-construction / testing course. Swap in the real one (serves the grad requirement).",
    tags: ["reminder"],
    image: "",
    link: null,
  },
];

/* ---- render (no need to touch below) ---- */
function esc(s) {
  return String(s).replace(/[&<>"']/g, (c) =>
    ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }[c])
  );
}
function renderProjects() {
  const grid = document.getElementById("projects");
  grid.innerHTML = projects
    .map((p) => {
      const media = p.image
        ? `<img class="card__img" src="${esc(p.image)}" alt="${esc(p.title)}" loading="lazy" />`
        : `<div class="card__img card__img--placeholder" aria-hidden="true"><span>${esc((p.title || "?").slice(0, 2))}</span></div>`;
      const kicker = p.kicker ? `<span class="card__kicker">${esc(p.kicker)}</span>` : "";
      const year = p.year ? `<span class="card__year">${esc(p.year)}</span>` : "";
      const tags = (p.tags || []).map((t) => `<span class="tag">${esc(t)}</span>`).join("");
      const link = p.link
        ? `<div class="card__links"><a href="${esc(p.link.href)}" target="_blank" rel="noopener">${esc(p.link.label)} &rarr;</a></div>`
        : "";
      return `
        <article class="card">
          ${media}
          <div class="card__body">
            <div class="card__head">
              <div>${kicker}<h3 class="card__title">${esc(p.title)}</h3></div>
              ${year}
            </div>
            <p class="card__desc">${esc(p.description)}</p>
            ${tags ? `<div class="card__tags">${tags}</div>` : ""}
            ${link}
          </div>
        </article>`;
    })
    .join("");
}
renderProjects();
document.getElementById("year").textContent = new Date().getFullYear();
