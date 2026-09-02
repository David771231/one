<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>Meridian — Time, well kept</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@500;600;700&family=Inter:wght@400;500;600;700&family=IBM+Plex+Mono:wght@500;600&display=swap" rel="stylesheet">
<style>
  :root{
    --bg:#14161A;
    --panel:#1C1F24;
    --panel-2:#22262C;
    --paper:#F4F1E8;
    --ink:#EDEBE3;
    --ink-70:rgba(237,235,227,.68);
    --ink-45:rgba(237,235,227,.42);
    --line:rgba(237,235,227,.12);
    --brass:#BD9155;
    --brass-bright:#D6AD70;
    --dark-ink:#14161A;
    --dark-70:rgba(20,22,26,.7);
    --dark-45:rgba(20,22,26,.45);
    --dark-line:rgba(20,22,26,.14);
    --red:#B4574A;
    --radius-sm:3px;
    --maxw:1240px;
  }
  *{box-sizing:border-box}
  html{scroll-behavior:smooth}
  body{
    margin:0;background:var(--bg);color:var(--ink);
    font-family:'Inter',system-ui,sans-serif;line-height:1.5;
    -webkit-font-smoothing:antialiased;
  }
  h1,h2,h3,.display{
    font-family:'Cormorant Garamond',serif;font-weight:600;
    letter-spacing:0;line-height:1.05;margin:0;
  }
  .mono{font-family:'IBM Plex Mono',monospace}
  a{color:inherit;text-decoration:none}
  button{font-family:inherit;cursor:pointer}
  img{max-width:100%;display:block}
  .wrap{max-width:var(--maxw);margin:0 auto;padding:0 24px}
  :focus-visible{outline:2px solid var(--brass);outline-offset:2px}

  /* Bezel divider — twelve hour-ticks, used only between major sections */
  .bezel{
    display:flex;justify-content:center;align-items:center;gap:0;
    padding:26px 0;overflow:hidden;
  }
  .bezel span{
    width:2px;height:14px;background:var(--line);flex-shrink:0;
  }
  .bezel span:nth-child(3n){height:20px;background:var(--brass)}
  .bezel-row{display:flex;gap:18px;max-width:640px;width:100%;justify-content:space-between}
  .bezel.on-light span{background:var(--dark-line)}
  .bezel.on-light span:nth-child(3n){background:var(--brass)}

  /* ---------- Header ---------- */
  header{position:sticky;top:0;z-index:50;background:var(--bg);border-bottom:1px solid var(--line)}
  .topbar{background:var(--brass);color:var(--dark-ink);font-size:13px;text-align:center;padding:7px 12px;font-weight:600}
  .header-row{display:flex;align-items:center;gap:20px;padding:18px 0}
  .logo{font-family:'Cormorant Garamond',serif;font-weight:700;font-size:24px;letter-spacing:.04em;display:flex;align-items:center;gap:10px;flex-shrink:0}
  .logo .mark{width:24px;height:24px;border:1.5px solid var(--brass);border-radius:50%;position:relative;flex-shrink:0}
  .logo .mark::before,.logo .mark::after{content:'';position:absolute;background:var(--brass);left:50%;top:50%;transform-origin:0 0}
  .logo .mark::before{width:7px;height:1.4px;transform:rotate(-45deg) translate(0,-.7px)}
  .logo .mark::after{width:5px;height:1.4px;transform:rotate(70deg) translate(0,-.7px)}
  nav.primary{display:flex;gap:4px;margin-left:8px}
  nav.primary a{padding:9px 12px;border-radius:var(--radius-sm);font-size:14px;font-weight:500;color:var(--ink-70)}
  nav.primary a:hover{background:var(--panel);color:var(--ink)}
  .header-search{flex:1;max-width:340px;display:flex;align-items:center;border:1px solid var(--line);border-radius:999px;padding:8px 6px 8px 16px;background:var(--panel);gap:8px}
  .header-search input{border:0;outline:none;flex:1;font-size:14px;font-family:inherit;background:transparent;color:var(--ink)}
  .header-search input::placeholder{color:var(--ink-45)}
  .header-search button{border:0;background:var(--brass);color:var(--dark-ink);width:32px;height:32px;border-radius:50%;display:grid;place-items:center;flex-shrink:0}
  .header-actions{display:flex;align-items:center;gap:6px;margin-left:auto}
  .icon-btn{border:0;background:transparent;position:relative;width:38px;height:38px;border-radius:50%;display:grid;place-items:center;color:var(--ink)}
  .icon-btn:hover{background:var(--panel)}
  .badge{position:absolute;top:2px;right:2px;background:var(--brass);color:var(--dark-ink);font-size:10px;font-weight:700;min-width:16px;height:16px;border-radius:999px;display:grid;place-items:center;padding:0 3px}
  .menu-toggle{display:none}
  @media (max-width:920px){nav.primary{display:none}.header-search{display:none}.menu-toggle{display:grid}}

  #mobileNav{position:fixed;inset:0;background:rgba(0,0,0,.6);z-index:80;display:none}
  #mobileNav.open{display:block}
  .mobile-panel{position:absolute;top:0;left:0;bottom:0;width:82%;max-width:340px;background:var(--bg);padding:20px;overflow-y:auto;display:flex;flex-direction:column;gap:18px}
  .mobile-panel .header-search{max-width:none}
  .mobile-panel nav a{display:block;padding:12px 4px;font-size:17px;border-bottom:1px solid var(--line);font-weight:500}

  /* ---------- Hero ---------- */
  .hero{padding:64px 0 56px}
  .hero-grid{display:grid;grid-template-columns:1fr 1.05fr;gap:56px;align-items:center}
  .eyebrow-note{font-size:13px;color:var(--brass-bright);margin-bottom:14px;font-weight:600}
  .hero h1{font-size:56px;max-width:11ch;color:var(--ink)}
  .hero p.lead{margin:22px 0 30px;font-size:17px;color:var(--ink-70);max-width:42ch}
  .btn{display:inline-flex;align-items:center;gap:8px;padding:13px 24px;border-radius:var(--radius-sm);font-weight:600;font-size:15px;border:1px solid transparent}
  .btn-primary{background:var(--brass);color:var(--dark-ink)}
  .btn-primary:hover{background:var(--brass-bright)}
  .btn-outline{border-color:var(--ink-45);color:var(--ink)}
  .btn-outline:hover{background:var(--panel)}
  .hero-actions{display:flex;gap:12px;flex-wrap:wrap}
  .hero-art{position:relative}
  .hero-art img{width:100%;height:440px;object-fit:cover;border-radius:2px}
  .spec-card{
    position:absolute;bottom:22px;left:-18px;background:var(--panel);border:1px solid var(--line);
