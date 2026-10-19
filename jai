<!doctype html>
<html lang="en-IN">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Astha Goyal Portfolio</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Shippori+Mincho+B1:wght@500;700;800&family=Figtree:wght@400;500;600;700&family=JetBrains+Mono:wght@500;700&display=swap">
<style>
/* Layout: sakura-lit hero with falling petals, stat strip, story sections, then a playable "Funnel Snake" game and contact. */
:root{
  --bg:#fdf6f7; --surface:#ffffff; --ink:#2b2030; --muted:#6f6174; --line:#ecd9de;
  --petal:#f3b6c6; --accent:#c42f55; --accent-ink:#ffffff; --deep:#3a1f3d; --glow:#fde3ea;
  --f-display:'Shippori Mincho B1',Georgia,'Times New Roman',serif;
  --f-body:'Figtree','Segoe UI',system-ui,sans-serif;
  --f-mono:'JetBrains Mono',ui-monospace,Menlo,Consolas,monospace;
}
@media (prefers-color-scheme: dark){:root:not([data-theme="light"]){
  --bg:#16101a; --surface:#21172a; --ink:#f6e9ee; --muted:#b9a5bd; --line:#3a2a45;
  --accent:#ff7a9c; --accent-ink:#2b0f1a; --glow:#3a1f3d; color-scheme:dark}}
:root[data-theme="dark"]{
  --bg:#16101a; --surface:#21172a; --ink:#f6e9ee; --muted:#b9a5bd; --line:#3a2a45;
  --accent:#ff7a9c; --accent-ink:#2b0f1a; --glow:#3a1f3d; color-scheme:dark}

*{box-sizing:border-box}
body{background:var(--bg);color:var(--ink);font-family:var(--f-body);font-size:16px;line-height:1.6;
  padding-left:max(16px,env(safe-area-inset-left,0px));padding-right:max(16px,env(safe-area-inset-right,0px));padding-block:0}
.wrap{max-width:1080px;margin:0 auto}
a{color:inherit}
:focus-visible{outline:3px solid var(--accent);outline-offset:3px;border-radius:6px}
h1,h2,h3{font-family:var(--f-display);line-height:1.12;text-wrap:balance;margin:0}
h2{font-size:clamp(1.9rem,4.5vw,2.8rem);font-weight:800}
h3{font-size:1.25rem;font-weight:700}
p{margin:0}
.eyebrow{font-family:var(--f-mono);font-size:.75rem;letter-spacing:.14em;text-transform:uppercase;color:var(--accent);font-weight:700}
section{padding-block:clamp(48px,8vw,96px)}
.sec-head{display:grid;gap:10px;margin-bottom:36px;max-width:640px}
.sec-head p{color:var(--muted)}

/* nav */
nav{display:flex;align-items:center;justify-content:space-between;gap:12px;padding-block:18px;position:relative;z-index:3;flex-wrap:wrap}
.logo{font-family:var(--f-display);font-weight:800;font-size:1.3rem;text-decoration:none}
.logo span{color:var(--accent)}
.links{display:flex;gap:6px;align-items:center;flex-wrap:wrap}
.links a{text-decoration:none;font-size:.9rem;font-weight:600;padding:6px 10px;border-radius:99px;color:var(--muted)}
.links a:hover{color:var(--ink);background:var(--glow)}
.theme{border:1px solid var(--line);background:var(--surface);color:var(--ink);border-radius:99px;padding:6px 12px;font:600 .85rem var(--f-body);cursor:pointer}

/* hero */
.hero-band{position:relative;overflow:hidden;margin-inline:calc(50% - 50vw);padding-inline:calc(50vw - 50%);
  background:radial-gradient(ellipse 70% 80% at 85% 10%,var(--glow),transparent 70%),var(--bg)}
#petals{position:absolute;inset:0;width:100%;height:100%;pointer-events:none;z-index:1}
.kanji{position:absolute;right:-2%;top:6%;font-family:var(--f-display);font-weight:800;font-size:clamp(14rem,34vw,30rem);line-height:1;color:var(--petal);opacity:.22;z-index:0;user-select:none;pointer-events:none}
.hero{position:relative;z-index:2;padding-block:clamp(36px,7vw,84px) clamp(40px,6vw,72px);display:grid;gap:26px;max-width:820px}
.status{display:inline-flex;align-items:center;gap:8px;width:max-content;max-width:100%;border:1px solid var(--line);background:var(--surface);border-radius:99px;padding:6px 14px;font-size:.85rem;font-weight:600}
.dot{width:9px;height:9px;border-radius:50%;background:#2fb36b;box-shadow:0 0 0 4px rgba(47,179,107,.2);flex:none}
.hero h1{font-size:clamp(2.6rem,8vw,5.2rem);font-weight:800;letter-spacing:-.01em}
.hero h1 em{font-style:normal;color:var(--accent)}
.lead{font-size:clamp(1.05rem,2.2vw,1.3rem);color:var(--muted);max-width:60ch}
.lead b{color:var(--ink)}
.cta{display:flex;gap:12px;flex-wrap:wrap}
.btn{display:inline-flex;align-items:center;gap:8px;padding:13px 22px;border-radius:12px;font:700 1rem var(--f-body);text-decoration:none;cursor:pointer;border:2px solid var(--accent)}
.btn.primary{background:var(--accent);color:var(--accent-ink)}
.btn.ghost{background:transparent;color:var(--ink);border-color:var(--ink)}
.btn:hover{transform:translateY(-2px)}
.btn{transition:transform .15s}

/* stat strip */
.stats{display:grid;grid-template-columns:repeat(4,1fr);gap:0;border:1px solid var(--line);background:var(--surface);border-radius:18px;position:relative;z-index:2;margin-bottom:-1px}
.stat{padding:22px 20px;border-right:1px solid var(--line);min-width:0}
.stat:last-child{border-right:0}
.stat .n{font-family:var(--f-display);font-weight:800;font-size:clamp(2rem,5vw,3rem);line-height:1;color:var(--accent);font-variant-numeric:tabular-nums}
.stat .l{font-size:.88rem;color:var(--muted);margin-top:8px}
.hero-end{height:clamp(24px,4vw,48px)}

/* about */
.about{display:grid;grid-template-columns:1.3fr 1fr;gap:36px;align-items:start}
.about p+p{margin-top:14px}
.about .big{font-size:1.15rem}
.fact{border:1px solid var(--line);background:var(--surface);border-radius:16px;padding:22px;display:grid;gap:14px}
.fact div{display:grid;gap:2px}
.fact dt{font-family:var(--f-mono);font-size:.7rem;letter-spacing:.12em;text-transform:uppercase;color:var(--muted)}
.fact dd{margin:0;font-weight:600}

/* experience */
.jobs{display:grid;gap:20px}
.job{display:grid;grid-template-columns:200px 1fr;gap:28px;border-top:2px solid var(--ink);padding-top:22px}
.job .when{font-family:var(--f-mono);font-size:.85rem;color:var(--muted);display:grid;gap:6px;align-content:start}
.job .when b{color:var(--accent);font-size:.8rem;letter-spacing:.1em;text-transform:uppercase}
.job h3 small{display:block;font-family:var(--f-body);font-weight:600;color:var(--muted);font-size:1rem;margin-top:4px}
.job ul{margin:14px 0 0;padding:0;list-style:none;display:grid;gap:12px}
.job li{padding-left:22px;position:relative}
.job li::before{content:"";position:absolute;left:0;top:.65em;width:10px;height:10px;border-radius:50% 0 50% 50%;background:var(--petal);transform:rotate(-20deg)}
.job li b{color:var(--accent);font-weight:700}
.tag-row{display:flex;gap:8px;flex-wrap:wrap;margin-top:16px}
.tag{font-family:var(--f-mono);font-size:.72rem;font-weight:700;padding:4px 10px;border-radius:99px;background:var(--glow);color:var(--ink)}

/* case study */
.case{display:grid;grid-template-columns:1fr 1fr;gap:0;border:1px solid var(--line);border-radius:20px;overflow:hidden;background:var(--surface)}
.case .l{padding:clamp(22px,4vw,40px);display:grid;gap:14px;align-content:start}
.case .r{padding:clamp(22px,4vw,40px);background:var(--deep);color:#fbeef2;display:grid;gap:18px;align-content:center}
.case .r .eyebrow{color:var(--petal)}
.big-n{font-family:var(--f-display);font-weight:800;font-size:clamp(3.4rem,10vw,6rem);line-height:1;color:var(--petal)}
.insights{display:grid;gap:10px;margin:0;padding:0;list-style:none}
.insights li{display:flex;gap:10px;align-items:center;border-top:1px solid rgba(255,255,255,.18);padding-top:10px}
.insights span{font-family:var(--f-mono);font-size:.7rem;color:var(--petal);min-width:0}

/* skills */
.skills{display:grid;grid-template-columns:repeat(3,1fr);gap:16px}
.skill{border:1px solid var(--line);background:var(--surface);border-radius:16px;padding:22px;display:grid;gap:14px;align-content:start;min-width:0}
.chips{display:flex;gap:8px;flex-wrap:wrap}
.chip{border:1px solid var(--line);border-radius:10px;padding:5px 11px;font-size:.9rem;font-weight:600;background:var(--bg)}

/* edu */
.edu{display:grid;grid-template-columns:1.2fr 1fr;gap:28px}
.timeline{display:grid;gap:0;margin:0;padding:0;list-style:none}
.timeline li{display:grid;grid-template-columns:110px 1fr;gap:16px;padding:14px 0;border-bottom:1px solid var(--line)}
.timeline .y{font-family:var(--f-mono);font-size:.82rem;color:var(--accent);font-weight:700}
.timeline b{display:block}
.timeline span{color:var(--muted);font-size:.92rem}
.certs{display:grid;gap:12px;align-content:start}
.cert{display:flex;gap:14px;align-items:flex-start;border:1px solid var(--line);background:var(--surface);border-radius:14px;padding:16px}
.cert i{flex:none;width:34px;height:34px;border-radius:50% 0 50% 50%;background:var(--petal);display:grid;place-items:center;font-style:normal;font-family:var(--f-mono);font-weight:700;color:var(--deep);font-size:.85rem}
.cert b{display:block;line-height:1.3}
.cert span{color:var(--muted);font-size:.88rem}

/* game */
.game-band{margin-inline:calc(50% - 50vw);padding-inline:calc(50vw - 50%);background:var(--glow)}
.game{display:grid;grid-template-columns:minmax(0,380px) 1fr;gap:clamp(24px,5vw,56px);align-items:center}
.board{position:relative;width:100%;max-width:380px}
#game{display:block;width:100%;aspect-ratio:1;border-radius:16px;border:2px solid var(--ink);background:var(--surface);touch-action:none}
.overlay{position:absolute;inset:0;border-radius:16px;background:color-mix(in srgb,var(--bg) 88%,transparent);display:grid;place-content:center;gap:12px;text-align:center;padding:20px}
.overlay h3{font-size:1.5rem}
.overlay p{color:var(--muted);font-size:.95rem}
.overlay .btn{margin:0 auto}
.hud{display:grid;gap:18px;min-width:0}
.score-row{display:flex;gap:12px;flex-wrap:wrap}
.score{flex:1;min-width:110px;background:var(--surface);border:1px solid var(--line);border-radius:14px;padding:12px 16px}
.score small{font-family:var(--f-mono);font-size:.68rem;letter-spacing:.12em;text-transform:uppercase;color:var(--muted);display:block}
.score b{font-family:var(--f-display);font-size:2rem;font-variant-numeric:tabular-nums}
.funnel{display:grid;gap:6px}
.stage{padding:10px 14px;border-radius:10px;background:var(--surface);border:1px solid var(--line);display:flex;justify-content:space-between;gap:10px;font-weight:600;font-size:.92rem;transition:all .25s}
.stage span{font-family:var(--f-mono);font-size:.75rem;color:var(--muted)}
.stage:nth-child(2){margin-inline:5%}.stage:nth-child(3){margin-inline:10%}.stage:nth-child(4){margin-inline:15%}
.stage.on{background:var(--accent);color:var(--accent-ink);border-color:var(--accent)}
.stage.on span{color:var(--accent-ink)}
.pad{display:grid;grid-template-columns:repeat(3,56px);grid-template-rows:repeat(2,52px);gap:6px;justify-content:start}
.pad button{border:1px solid var(--line);background:var(--surface);color:var(--ink);border-radius:12px;font-size:1.2rem;cursor:pointer}
.pad button:active{background:var(--accent);color:var(--accent-ink)}
.pad .u{grid-column:2}.pad .l{grid-column:1;grid-row:2}.pad .d{grid-column:2;grid-row:2}.pad .r{grid-column:3;grid-row:2}
.hint{font-size:.9rem;color:var(--muted)}

/* contact */
.contact{background:var(--deep);color:#fbeef2;border-radius:24px;padding:clamp(28px,6vw,64px);display:grid;gap:26px;position:relative;overflow:hidden}
.contact h2{color:#fff;max-width:18ch}
.contact .eyebrow{color:var(--petal)}
.contact .lead{color:#e6cfd8}
.rows{display:grid;gap:10px;max-width:520px}
.row{display:flex;gap:10px;align-items:center;justify-content:space-between;border:1px solid rgba(255,255,255,.22);border-radius:12px;padding:10px 12px 10px 16px;min-width:0}
.row span{overflow-wrap:anywhere;font-weight:600;min-width:0}
.row button{flex:none;border:0;background:var(--petal);color:var(--deep);border-radius:8px;padding:7px 14px;font:700 .85rem var(--f-body);cursor:pointer}
.row a{flex:none;background:var(--petal);color:var(--deep);border-radius:8px;padding:7px 14px;font:700 .85rem var(--f-body);text-decoration:none}
.contact .kanji{color:var(--petal);opacity:.1;font-size:20rem;right:2%;top:-10%}
.contact>*:not(.kanji){position:relative;z-index:1}
.c-grid{display:grid;grid-template-columns:1fr 1fr;gap:clamp(24px,5vw,56px);align-items:start}
.c-left{display:grid;gap:22px;min-width:0}
.form{display:grid;gap:14px;background:rgba(255,255,255,.07);border:1px solid rgba(255,255,255,.2);border-radius:18px;padding:clamp(18px,3vw,28px);min-width:0}
.form h3{color:#fff}
.field{display:grid;gap:6px}
.field label{font-family:var(--f-mono);font-size:.72rem;letter-spacing:.12em;text-transform:uppercase;color:var(--petal);font-weight:700}
.field input,.field textarea{width:100%;font:500 1rem var(--f-body);color:#fff;background:rgba(0,0,0,.28);border:1px solid rgba(255,255,255,.28);border-radius:10px;padding:11px 13px;resize:vertical}
.field input::placeholder,.field textarea::placeholder{color:#c9aeb9}
.field input:focus-visible,.field textarea:focus-visible{outline:3px solid var(--petal);outline-offset:1px}
.err{color:#ffc2cf;font-weight:600;font-size:.92rem}
.btn.send{background:var(--petal);color:var(--deep);border-color:var(--petal);justify-content:center;width:100%}
.ready{border-top:1px solid rgba(255,255,255,.2);padding-top:14px;display:grid;gap:10px}
.ready p{color:#e6cfd8;font-size:.92rem}
.addr{color:#fff;font-weight:700;overflow-wrap:anywhere}
.ready-btns{display:flex;gap:10px;flex-wrap:wrap}
.btn.mini{padding:9px 16px;font-size:.9rem;border-radius:10px;background:transparent;color:#fff;border-color:rgba(255,255,255,.5)}
.btn.mini:hover{background:rgba(255,255,255,.12)}
.preview{margin:0;white-space:pre-wrap;overflow-wrap:anywhere;font:500 .82rem var(--f-mono);color:#f3dfe6;background:rgba(0,0,0,.28);border-radius:10px;padding:12px;max-height:200px;overflow:auto}
.resume{display:grid;grid-template-columns:1.1fr 1fr;gap:clamp(24px,5vw,56px);align-items:center;border:1px solid var(--line);background:var(--surface);border-radius:22px;padding:clamp(22px,5vw,48px)}
.r-left{display:grid;gap:16px;min-width:0}
.lead2{color:var(--muted);max-width:46ch}
.r-card{border:1px solid var(--line);border-top:5px solid var(--accent);border-radius:14px;padding:22px;background:var(--bg);display:grid;gap:12px;min-width:0}
.r-name{font-family:var(--f-display);font-weight:800;font-size:1.6rem}
.r-role{color:var(--muted);font-size:.92rem}
.r-card ul{margin:4px 0 0;padding:0;list-style:none;display:grid;gap:10px}
.r-card li{padding-top:10px;border-top:1px solid var(--line);font-size:.95rem}
.r-card li b{color:var(--accent);font-family:var(--f-display);font-size:1.15rem}
@media (max-width:860px){.c-grid,.resume{grid-template-columns:1fr}}
footer{padding-block:32px;color:var(--muted);font-size:.88rem;text-align:center}

@media (max-width:860px){
  .stats{grid-template-columns:1fr 1fr}
  .stat:nth-child(2){border-right:0}
  .stat:nth-child(-n+2){border-bottom:1px solid var(--line)}
  .about,.case,.edu,.game{grid-template-columns:1fr}
  .job{grid-template-columns:1fr;gap:10px}
  .skills{grid-template-columns:1fr}
  .links a.hide-s{display:none}
}
@media (max-width:420px){
  .timeline li{grid-template-columns:1fr;gap:2px}
}
@media (prefers-reduced-motion:reduce){.btn,.stage{transition:none}}
</style>
</head>
<body>

<div class="hero-band">
  <canvas id="petals" aria-hidden="true"></canvas>
  <div class="kanji" aria-hidden="true">桜</div>
  <div class="wrap">
    <nav>
      <a class="logo" href="#top">Astha<span>.</span>Goyal</a>
      <div class="links">
        <a href="#work">Work</a>
        <a class="hide-s" href="#case">Case study</a>
        <a class="hide-s" href="#skills">Skills</a>
        <a href="#resume">Resume</a>
        <a href="#play">Play</a>
        <a href="#contact">Contact</a>
        <button class="theme" id="theme" type="button" aria-label="Switch light or dark theme">Dark</button>
      </div>
    </nav>
    <header class="hero" id="top">
      <div class="status"><i class="dot"></i> Open to digital marketing jobs in Delhi NCR</div>
      <h1>I turn posts and ads into <em>real reach</em> for brands.</h1>
      <p class="lead">Hi, I am <b>Astha Goyal</b>, a digital marketer from Greater Noida. I have done social media, market research and campaign work, and I am now doing my <b>PGDM in Marketing &amp; Business Analytics</b> at Lloyd Business School.</p>
      <div class="cta">
        <a class="btn primary" href="#contact">Hire me</a>
        <a class="btn ghost" href="#play">Play Funnel Snake</a>
      </div>
    </header>
    <div class="stats" aria-label="Key numbers">
      <div class="stat"><div class="n">+20%</div><div class="l">LinkedIn engagement growth</div></div>
      <div class="stat"><div class="n">+10%</div><div class="l">Digital reach across platforms</div></div>
      <div class="stat"><div class="n">50+</div><div class="l">Survey responses analysed</div></div>
      <div class="stat"><div class="n">2</div><div class="l">Marketing internships in 2026</div></div>
    </div>
    <div class="hero-end"></div>
  </div>
</div>

<main class="wrap">
  <section id="about">
    <div class="about">
      <div>
        <p class="eyebrow">About me</p>
        <h2 style="margin:10px 0 18px">Numbers first, then the story.</h2>
        <p class="big">I like marketing that you can measure. In my internships I tracked weekly KPIs, wrote performance reports and changed my plans based on the data.</p>
        <p>I know Google Ads, Meta Ads, SEO, Google Analytics and advanced Excel. I also enjoy understanding why customers buy, which is why my studies and my projects focus on consumer behaviour.</p>
        <p>I am looking for a digital marketing role in Delhi NCR where I can learn fast, own a channel and help the business grow.</p>
      </div>
      <dl class="fact">
        <div><dt>Based in</dt><dd>Greater Noida, Delhi NCR</dd></div>
        <div><dt>Studying</dt><dd>PGDM, Marketing &amp; Business Analytics</dd></div>
        <div><dt>Looking for</dt><dd>Digital marketing, social media, performance marketing</dd></div>
        <div><dt>Tools</dt><dd>14 skills and tools, from Google Ads to Canva</dd></div>
      </dl>
    </div>
  </section>

  <section id="work">
    <div class="sec-head">
      <p class="eyebrow">Experience</p>
      <h2>Two internships, both in 2026.</h2>
      <p>Real work, real numbers. Here is what I did and what moved.</p>
    </div>
    <div class="jobs">
      <article class="job">
        <div class="when"><b>Latest</b><span>Jul 2026 to Oct 2026</span><span>About 4 months</span></div>
        <div>
          <h3>Social Media Marketing Intern<small>MJ Marketing Consultancy</small></h3>
          <ul>
            <li>Ran content and digital marketing plans for LinkedIn and grew <b>engagement by 20%</b> with posts made for each platform.</li>
            <li>Tracked social media analytics and KPIs and made a <b>weekly performance report</b> to see what to keep and what to change.</li>
            <li>Ran marketing campaigns that brought a <b>10% increase in digital reach</b> across platforms.</li>
          </ul>
          <div class="tag-row"><span class="tag">LinkedIn</span><span class="tag">Content</span><span class="tag">Analytics</span><span class="tag">KPI reports</span></div>
        </div>
      </article>
      <article class="job">
        <div class="when"><b>Earlier</b><span>Jun 2026 to Aug 2026</span><span>About 3 months</span></div>
        <div>
          <h3>Result and Marketing Development Intern<small>The Times of India</small></h3>
          <ul>
            <li>Spoke to customers and did market research to understand <b>what they like and what the market needs</b>.</li>
            <li>Kept customer and market data clean in <b>Excel</b> so it was easy to track and study.</li>
            <li>Got hands-on with <b>sales, customer relationships and business development</b>.</li>
          </ul>
          <div class="tag-row"><span class="tag">Market research</span><span class="tag">Excel</span><span class="tag">Sales</span><span class="tag">CRM</span></div>
        </div>
      </article>
    </div>
  </section>

  <section id="case">
    <div class="sec-head">
      <p class="eyebrow">Project</p>
      <h2>Why do people shop at DLF Mall?</h2>
    </div>
    <div class="case">
      <div class="l">
        <p class="eyebrow">Consumer Behaviour Analysis · Mar 2026</p>
        <h3>A survey study on buying habits</h3>
        <p>I ran a survey and studied the answers to find out what makes shoppers buy, and what makes them walk away. Then I turned the answers into simple business points a brand can use.</p>
        <p style="color:var(--muted)">Method: survey, Excel analysis, insight summary.</p>
      </div>
      <div class="r">
        <div><div class="big-n">50+</div><p>survey responses studied</p></div>
        <ul class="insights">
          <li><span>01</span> Pricing sensitivity</li>
          <li><span>02</span> Convenience</li>
          <li><span>03</span> Brand perception</li>
        </ul>
      </div>
    </div>
  </section>

  <section id="skills">
    <div class="sec-head">
      <p class="eyebrow">Skills</p>
      <h2>Tools I use every week.</h2>
    </div>
    <div class="skills">
      <div class="skill"><h3>Paid and search</h3><div class="chips"><span class="chip">Google Ads</span><span class="chip">Meta Ads</span><span class="chip">PPC</span><span class="chip">SEO</span><span class="chip">Email Marketing</span></div></div>
      <div class="skill"><h3>Social and brand</h3><div class="chips"><span class="chip">Social Media Management</span><span class="chip">Campaign Strategy</span><span class="chip">Brand Strategy</span><span class="chip">Canva</span><span class="chip">CMS</span></div></div>
      <div class="skill"><h3>Data and research</h3><div class="chips"><span class="chip">Advanced Excel</span><span class="chip">Google Analytics</span><span class="chip">Market Research</span><span class="chip">Consumer Behaviour</span><span class="chip">SCM</span><span class="chip">Project Management</span></div></div>
    </div>
    <p style="margin-top:18px;color:var(--muted)">People skills: leadership and team management, communication, problem solving.</p>
  </section>

  <section id="edu">
    <div class="edu">
      <div>
        <div class="sec-head"><p class="eyebrow">Education</p><h2>Always learning.</h2></div>
        <ol class="timeline">
          <li><span class="y">2025 – Now</span><div><b>PGDM, Marketing &amp; Business Analytics</b><span>Lloyd Business School</span></div></li>
          <li><span class="y">2021 – 2024</span><div><b>BBA</b><span>School of Management Science, Varanasi</span></div></li>
          <li><span class="y">2020 – 2021</span><div><b>Senior Secondary</b><span>Foundation School</span></div></li>
          <li><span class="y">2018 – 2019</span><div><b>Secondary</b><span>DAV Public School</span></div></li>
        </ol>
      </div>
      <div>
        <div class="sec-head"><p class="eyebrow">Certifications</p><h2>3 on the list.</h2></div>
        <div class="certs">
          <div class="cert"><i>1</i><div><b>Fundamentals of Digital Marketing</b><span>Google</span></div></div>
          <div class="cert"><i>2</i><div><b>Business Case Development</b><span>Harvard Business Impact</span></div></div>
          <div class="cert"><i>3</i><div><b>Microsoft Office</b><span>Excel, Word, PowerPoint</span></div></div>
        </div>
      </div>
    </div>
  </section>

  <section id="resume">
    <div class="resume">
      <div class="r-left">
        <p class="eyebrow">Resume</p>
        <h2>Want the full details on paper?</h2>
        <p class="lead2">My complete resume is one tap away. It opens as a PDF in a new tab, and you can save it from there.</p>
        <div class="cta">
          <a class="btn primary" id="resume-link" href="Astha_Goyal_DigitalMarketing_Resume.pdf" target="_blank" rel="noopener">Open resume (PDF)</a>
        </div>
      </div>
      <div class="r-card" aria-label="Resume at a glance">
        <div class="r-name">Astha Goyal</div>
        <div class="r-role">Digital Marketer · Greater Noida, Delhi NCR</div>
        <ul>
          <li><b>2</b> internships: MJ Marketing Consultancy and The Times of India</li>
          <li><b>+20%</b> LinkedIn engagement, <b>+10%</b> digital reach</li>
          <li><b>14</b> skills and tools, including Google Ads, Meta Ads, SEO and Excel</li>
          <li><b>3</b> certifications from Google, Harvard Business Impact and Microsoft</li>
        </ul>
      </div>
    </div>
  </section>
</main>

<div class="game-band" id="play">
  <div class="wrap">
    <section>
      <div class="sec-head">
        <p class="eyebrow">Take a break</p>
        <h2>Funnel Snake</h2>
        <p>Eat the marketing metrics to bring in leads. Every few leads move you down the funnel, from Awareness to Conversion. Do not hit the wall or your own tail.</p>
      </div>
      <div class="game">
        <div class="board">
          <canvas id="game" width="360" height="360" aria-label="Funnel Snake game board"></canvas>
          <div class="overlay" id="overlay">
            <h3 id="ov-title">Ready to launch?</h3>
            <p id="ov-text">Use arrow keys or WASD. On phone, swipe on the board or use the buttons.</p>
            <button class="btn primary" id="start" type="button">Start campaign</button>
          </div>
        </div>
        <div class="hud">
          <div class="score-row">
            <div class="score"><small>Leads</small><b id="score">0</b></div>
            <div class="score"><small>Best</small><b id="best">0</b></div>
          </div>
          <div class="funnel" id="funnel">
            <div class="stage on" data-min="0">Awareness <span>0+ leads</span></div>
            <div class="stage" data-min="5">Interest <span>5+ leads</span></div>
            <div class="stage" data-min="10">Consideration <span>10+ leads</span></div>
            <div class="stage" data-min="15">Conversion <span>15+ leads</span></div>
          </div>
          <div class="pad" aria-label="On-screen controls">
            <button class="u" type="button" data-d="u" aria-label="Up">↑</button>
            <button class="l" type="button" data-d="l" aria-label="Left">←</button>
            <button class="d" type="button" data-d="d" aria-label="Down">↓</button>
            <button class="r" type="button" data-d="r" aria-label="Right">→</button>
          </div>
          <p class="hint">Tip: CTR, ROI, CPC, SEO, LEAD and REACH all give +1 lead. The snake gets faster as you grow.</p>
        </div>
      </div>
    </section>
  </div>
</div>

<main class="wrap">
  <section id="contact">
    <div class="contact">
      <div class="kanji" aria-hidden="true">桜</div>
      <p class="eyebrow">Let us talk</p>
      <div class="c-grid"><div class="c-left">
      <h2>Hiring in Delhi NCR? Let us have a quick chat.</h2>
      <p class="lead">I can join quickly and I am ready to work on social media, paid ads or market research for your team.</p>
      <div class="rows">
        <div class="row"><span id="mail">asthagoyal1112@gmail.com</span><button type="button" data-copy="mail">Copy</button></div>
        <div class="row"><span id="tel">+91 9334515442</span><button type="button" data-copy="tel">Copy</button></div>
        <div class="row"><span>linkedin.com/in/astha-goyal</span><a href="https://www.linkedin.com/in/astha-goyal" target="_blank" rel="noopener">Open</a></div>
      </div></div>
      <form class="form" id="cform" novalidate>
        <h3>Send a message</h3>
        <div class="field"><label for="f-name">Name</label><input id="f-name" name="name" type="text" autocomplete="name" placeholder="Your full name"></div>
        <div class="field"><label for="f-email">Email</label><input id="f-email" name="email" type="email" autocomplete="email" placeholder="you@company.com"></div>
        <div class="field"><label for="f-subject">Subject</label><input id="f-subject" name="subject" type="text" placeholder="Digital marketing role at your company"></div>
        <div class="field"><label for="f-message">Message</label><textarea id="f-message" name="message" rows="5" placeholder="Tell me about the role or the team"></textarea></div>
        <p class="err" id="f-err" role="alert" hidden></p>
        <button class="btn send" type="submit">Send message</button>
        <div class="ready" id="ready" hidden>
          <b>Your message is ready.</b>
          <p>This page cannot send email by itself. Pick one option to deliver it to Astha at <span class="addr">asthagoyal1112@gmail.com</span>.</p>
          <div class="ready-btns">
            <a class="btn mini" id="mailto" href="#">Open in my email app</a>
            <button class="btn mini" id="copymsg" type="button">Copy message</button>
          </div>
          <pre id="msgpreview" class="preview"></pre>
        </div>
      </form></div>
    </div>
  </section>
  <footer>© 2026 Astha Goyal · Greater Noida, Delhi NCR</footer>
</main>

<script>
(function(){
  /* theme toggle */
  var root=document.documentElement, tbtn=document.getElementById('theme');
  function isDark(){var t=root.getAttribute('data-theme');if(t)return t==='dark';return matchMedia('(prefers-color-scheme: dark)').matches}
  function label(){tbtn.textContent=isDark()?'Light':'Dark'}
  tbtn.addEventListener('click',function(){root.setAttribute('data-theme',isDark()?'light':'dark');label()});
  label();

  /* cherry blossom petals */
  var pc=document.getElementById('petals'), px=pc.getContext('2d'), hero=pc.parentElement;
  var reduce=matchMedia('(prefers-reduced-motion: reduce)').matches;
  var W=0,H=0,dpr=Math.min(window.devicePixelRatio||1,2),petals=[];
  var cols=['#f7c6d2','#f3b6c6','#fbd9e1','#ee9db4','#fff0f3'];
  function mk(initial){
    return {x:Math.random()*W,y:initial?Math.random()*H:-20,s:6+Math.random()*10,r:Math.random()*6.28,
      vr:(Math.random()-.5)*.03,vy:.5+Math.random()*.9,sw:Math.random()*6.28,swS:.01+Math.random()*.02,
      amp:.4+Math.random()*.8,c:cols[(Math.random()*cols.length)|0],a:.55+Math.random()*.4};
  }
  function size(){
    W=hero.clientWidth;H=hero.clientHeight;pc.width=W*dpr;pc.height=H*dpr;px.setTransform(dpr,0,0,dpr,0,0);
    var n=W<600?18:38;petals=[];for(var i=0;i<n;i++)petals.push(mk(true));
    if(reduce)draw();
  }
  function petal(p){
    px.save();px.translate(p.x,p.y);px.rotate(p.r);px.globalAlpha=p.a;px.fillStyle=p.c;
    var s=p.s;px.beginPath();
    px.moveTo(0,-s);
    px.bezierCurveTo(s*.9,-s*.9,s*.8,s*.5,0,s);
    px.bezierCurveTo(-s*.8,s*.5,-s*.9,-s*.9,0,-s);
    px.fill();
    px.globalAlpha=p.a*.7;px.fillStyle='#e07b99';px.beginPath();px.arc(0,-s*.75,s*.12,0,6.28);px.fill();
    px.restore();
  }
  function draw(){px.clearRect(0,0,W,H);for(var i=0;i<petals.length;i++)petal(petals[i])}
  function tick(){
    for(var i=0;i<petals.length;i++){var p=petals[i];
      p.sw+=p.swS;p.x+=Math.sin(p.sw)*p.amp+.35;p.y+=p.vy;p.r+=p.vr;
      if(p.y>H+20||p.x>W+30){petals[i]=mk(false);petals[i].x=Math.random()*W*.9-W*.1}}
    draw();requestAnimationFrame(tick);
  }
  size();
  if('ResizeObserver' in window){new ResizeObserver(size).observe(hero)}else{addEventListener('resize',size)}
  if(!reduce)requestAnimationFrame(tick);

  /* copy buttons */
  document.querySelectorAll('[data-copy]').forEach(function(b){
    b.addEventListener('click',function(){
      var el=document.getElementById(b.getAttribute('data-copy')),txt=el.textContent;
      function ok(){var o=b.textContent;b.textContent='Copied';setTimeout(function(){b.textContent=o},1400)}
      function fallback(){var r=document.createRange();r.selectNodeContents(el);var s=getSelection();s.removeAllRanges();s.addRange(r);b.textContent='Selected';setTimeout(function(){b.textContent='Copy'},1400)}
      try{navigator.clipboard.writeText(txt).then(ok,fallback)}catch(e){fallback()}
    });
  });

  /* Funnel Snake */
  var cv=document.getElementById('game'),ctx=cv.getContext('2d'),N=15,C=cv.width/N;
  var overlay=document.getElementById('overlay'),ovT=document.getElementById('ov-title'),ovP=document.getElementById('ov-text'),startBtn=document.getElementById('start');
  var scoreEl=document.getElementById('score'),bestEl=document.getElementById('best'),stages=document.querySelectorAll('.stage');
  var labels=['CTR','ROI','CPC','SEO','LEAD','REACH'];
  var snake,dir,nextDir,food,score,best=0,running=false,timer=null;
  try{best=parseInt(localStorage.getItem('astha-snake-best'),10)||0}catch(e){}
  bestEl.textContent=best;

  function css(n){return getComputedStyle(document.documentElement).getPropertyValue(n).trim()}
  function reset(){
    snake=[{x:7,y:7},{x:6,y:7},{x:5,y:7}];dir={x:1,y:0};nextDir=dir;score=0;scoreEl.textContent=0;placeFood();updateStages();
  }
  function placeFood(){
    var f;do{f={x:(Math.random()*N)|0,y:(Math.random()*N)|0,t:labels[(Math.random()*labels.length)|0]}}
    while(snake.some(function(s){return s.x===f.x&&s.y===f.y}));
    food=f;
  }
  function updateStages(){stages.forEach(function(s){s.classList.toggle('on',score>=+s.getAttribute('data-min'))})}
  function delay(){return Math.max(70,140-score*3)}
  function loop(){
    dir=nextDir;
    var h={x:snake[0].x+dir.x,y:snake[0].y+dir.y};
    if(h.x<0||h.y<0||h.x>=N||h.y>=N||snake.some(function(s){return s.x===h.x&&s.y===h.y})){return over()}
    snake.unshift(h);
    if(h.x===food.x&&h.y===food.y){score++;scoreEl.textContent=score;updateStages();placeFood()}else snake.pop();
    render();
    timer=setTimeout(loop,delay());
  }
  function over(){
    running=false;clearTimeout(timer);
    if(score>best){best=score;bestEl.textContent=best;try{localStorage.setItem('astha-snake-best',best)}catch(e){}}
    var st=score>=15?'Conversion':score>=10?'Consideration':score>=5?'Interest':'Awareness';
    ovT.textContent='Campaign ended';
    ovP.textContent='You brought in '+score+' lead'+(score===1?'':'s')+' and reached the '+st+' stage. '+(score>=10?'Not bad. Want a marketer who plays to win? Scroll down and say hi.':'Try again, every campaign needs a few tests.');
    startBtn.textContent='Play again';overlay.hidden=false;render();
  }
  function rr(x,y,w,h,r){ctx.beginPath();ctx.moveTo(x+r,y);ctx.arcTo(x+w,y,x+w,y+h,r);ctx.arcTo(x+w,y+h,x,y+h,r);ctx.arcTo(x,y+h,x,y,r);ctx.arcTo(x,y,x+w,y,r);ctx.closePath()}
  function render(){
    var bg=css('--surface'),line=css('--line'),acc=css('--accent'),ink=css('--ink');
    ctx.fillStyle=bg;ctx.fillRect(0,0,cv.width,cv.height);
    ctx.fillStyle=line;
    for(var i=0;i<N;i++)for(var j=0;j<N;j++){ctx.beginPath();ctx.arc(i*C+C/2,j*C+C/2,1.4,0,6.28);ctx.fill()}
    /* food */
    ctx.fillStyle='#f3b6c6';rr(food.x*C+2,food.y*C+2,C-4,C-4,6);ctx.fill();
    ctx.fillStyle='#3a1f3d';ctx.font='700 '+(food.t.length>3?7:8)+'px JetBrains Mono, monospace';ctx.textAlign='center';ctx.textBaseline='middle';
    ctx.fillText(food.t,food.x*C+C/2,food.y*C+C/2+.5);
    /* snake */
    for(var k=snake.length-1;k>=0;k--){var s=snake[k];
      ctx.globalAlpha=k===0?1:Math.max(.45,1-k*.025);
      ctx.fillStyle=k===0?ink:acc;rr(s.x*C+2,s.y*C+2,C-4,C-4,7);ctx.fill();
    }
    ctx.globalAlpha=1;
    var hd=snake[0];ctx.fillStyle=bg;
    ctx.beginPath();ctx.arc(hd.x*C+C/2+dir.x*3-dir.y*4,hd.y*C+C/2+dir.y*3+dir.x*4,2,0,6.28);ctx.fill();
    ctx.beginPath();ctx.arc(hd.x*C+C/2+dir.x*3+dir.y*4,hd.y*C+C/2+dir.y*3-dir.x*4,2,0,6.28);ctx.fill();
  }
  function start(){
    reset();running=true;overlay.hidden=true;render();clearTimeout(timer);timer=setTimeout(loop,delay());
  }
  function turn(d){
    if(!running)return;
    var m={u:{x:0,y:-1},d:{x:0,y:1},l:{x:-1,y:0},r:{x:1,y:0}}[d];
    if(m.x===-dir.x&&m.y===-dir.y)return;
    nextDir=m;
  }
  startBtn.addEventListener('click',start);
  document.querySelectorAll('.pad button').forEach(function(b){b.addEventListener('click',function(){turn(b.getAttribute('data-d'))})});
  addEventListener('keydown',function(e){
    var map={ArrowUp:'u',ArrowDown:'d',ArrowLeft:'l',ArrowRight:'r',w:'u',s:'d',a:'l',d:'r',W:'u',S:'d',A:'l',D:'r'};
    var d=map[e.key];if(!d)return;
    if(running){e.preventDefault();turn(d)}
  });
  var tx=0,ty=0;
  cv.addEventListener('touchstart',function(e){tx=e.touches[0].clientX;ty=e.touches[0].clientY},{passive:true});
  cv.addEventListener('touchend',function(e){
    var dx=e.changedTouches[0].clientX-tx,dy=e.changedTouches[0].clientY-ty;
    if(Math.max(Math.abs(dx),Math.abs(dy))<20)return;
    turn(Math.abs(dx)>Math.abs(dy)?(dx>0?'r':'l'):(dy>0?'d':'u'));
  },{passive:true});
  /* contact form: validates, then prepares the message for email */
  var form=document.getElementById('cform'),ferr=document.getElementById('f-err'),ready=document.getElementById('ready');
  var mailA=document.getElementById('mailto'),prev=document.getElementById('msgpreview'),copyBtn=document.getElementById('copymsg');
  var fullMsg='';
  form.addEventListener('submit',function(e){
    e.preventDefault();
    var g=function(i){return document.getElementById(i).value.trim()};
    var n=g('f-name'),em=g('f-email'),sb=g('f-subject'),ms=g('f-message'),msg='';
    if(!n)msg='Please enter your name.';
    else if(!/^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/.test(em))msg='Please enter a valid email address, like you@company.com.';
    else if(!sb)msg='Please add a subject.';
    else if(ms.length<10)msg='Please write a message of at least 10 characters.';
    if(msg){ferr.textContent=msg;ferr.hidden=false;ready.hidden=true;return}
    ferr.hidden=true;
    fullMsg='To: asthagoyal1112@gmail.com\nSubject: '+sb+'\n\n'+ms+'\n\nFrom: '+n+' ('+em+')';
    prev.textContent=fullMsg;
    mailA.href='mailto:asthagoyal1112@gmail.com?subject='+encodeURIComponent(sb)+'&body='+encodeURIComponent(ms+'\n\nFrom: '+n+' ('+em+')');
    ready.hidden=false;
  });
  copyBtn.addEventListener('click',function(){
    function ok(){copyBtn.textContent='Copied';setTimeout(function(){copyBtn.textContent='Copy message'},1400)}
    function fb(){var r=document.createRange();r.selectNodeContents(prev);var s=getSelection();s.removeAllRanges();s.addRange(r);copyBtn.textContent='Selected, press copy';setTimeout(function(){copyBtn.textContent='Copy message'},2000)}
    try{navigator.clipboard.writeText(fullMsg).then(ok,fb)}catch(e){fb()}
  });

  reset();render();
  new MutationObserver(render).observe(document.documentElement,{attributes:true,attributeFilter:['data-theme']});
})();
</script>
</body>
</html>
