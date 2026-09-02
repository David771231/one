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
    padding:14px 20px;min-width:170px;box-shadow:0 16px 32px rgba(0,0,0,.4);
  }
  .spec-card .label{font-size:11px;color:var(--ink-45);text-transform:uppercase;letter-spacing:.06em}
  .spec-card .val{font-family:'IBM Plex Mono',monospace;font-size:15px;color:var(--brass-bright);margin-top:3px}
  @media (max-width:860px){.hero-grid{grid-template-columns:1fr;gap:32px}.hero h1{font-size:40px;max-width:none}.hero-art img{height:280px}}

  /* ---------- Section shell ---------- */
  .section{padding:52px 0}
  .section.on-light{background:var(--paper);color:var(--dark-ink)}
  .section-head{display:flex;justify-content:space-between;align-items:flex-end;gap:20px;margin-bottom:26px;flex-wrap:wrap}
  .section-head h2{font-size:32px}
  .section-head p{margin:8px 0 0;color:var(--ink-45);font-size:15px}
  .on-light .section-head p{color:var(--dark-45)}

  /* ---------- Watch types ---------- */
  .type-scroll{display:flex;gap:14px;overflow-x:auto;padding-bottom:6px}
  .type-card{
    flex:0 0 200px;position:relative;height:220px;overflow:hidden;border:1px solid var(--dark-line);
    cursor:pointer;background:none;text-align:left;padding:0;border-radius:2px;
  }
  .type-card img{width:100%;height:100%;object-fit:cover}
  .type-card .label{position:absolute;left:0;right:0;bottom:0;background:linear-gradient(0deg,rgba(0,0,0,.72),transparent);color:#fff;padding:14px 14px 12px}
  .type-card .label b{display:block;font-family:'Cormorant Garamond',serif;font-size:19px;font-weight:600}
  .type-card .label span{font-size:12px;opacity:.75}

  /* ---------- Filter bar ---------- */
  .filter-bar{display:flex;gap:10px;flex-wrap:wrap;align-items:center;margin-bottom:24px}
  .filter-bar select{padding:9px 12px;border:1px solid var(--line);border-radius:var(--radius-sm);background:var(--panel);font-family:inherit;font-size:14px;color:var(--ink)}
  .chip{padding:8px 15px;border-radius:999px;border:1px solid var(--line);background:var(--panel);font-size:13px;font-weight:500;color:var(--ink-70)}
  .chip.active{background:var(--brass);color:var(--dark-ink);border-color:var(--brass)}
  .filter-count{margin-left:auto;font-size:13px;color:var(--ink-45)}

  /* ---------- Products ---------- */
  .products{display:grid;grid-template-columns:repeat(4,1fr);gap:20px}
  .product{background:var(--panel);border:1px solid var(--line);display:flex;flex-direction:column}
  .product-img{position:relative;aspect-ratio:1/1;overflow:hidden;background:var(--panel-2)}
  .product-img img{width:100%;height:100%;object-fit:cover}
  .product .tag{position:absolute;top:10px;left:0;background:var(--brass);color:var(--dark-ink);font-size:11px;font-weight:700;padding:5px 10px 5px 14px;clip-path:polygon(10px 0,100% 0,100% 100%,10px 100%,0 50%)}
  .product .tag.sale{background:var(--red);color:#fff}
  .wish{position:absolute;top:8px;right:8px;width:32px;height:32px;border-radius:50%;background:rgba(20,22,26,.55);border:0;display:grid;place-items:center;color:var(--ink)}
  .wish.active svg{fill:var(--red);stroke:var(--red)}
  .product-body{padding:16px 16px 6px;display:flex;flex-direction:column;gap:6px;flex:1}
  .product-cat{font-size:11px;color:var(--brass-bright);text-transform:uppercase;letter-spacing:.05em}
  .product h5{font-size:16px;font-weight:600;margin:0;font-family:'Cormorant Garamond',serif;font-size:19px}
  .movement{font-size:12px;color:var(--ink-45);font-family:'IBM Plex Mono',monospace}
  .stars{color:var(--brass);font-size:13px;letter-spacing:1px}
  .stars .count{color:var(--ink-45);font-size:12px;letter-spacing:0;margin-left:4px;font-family:'Inter',sans-serif}
  .price-row{display:flex;align-items:baseline;gap:8px;margin-top:auto}
  .price{font-weight:600;font-size:16px;font-family:'IBM Plex Mono',monospace}
  .old-price{color:var(--ink-45);text-decoration:line-through;font-size:12px;font-family:'IBM Plex Mono',monospace}
  .product-footer{padding:12px 16px 16px}
  .add-btn{width:100%;background:var(--brass);color:var(--dark-ink);border:0;padding:11px;border-radius:var(--radius-sm);font-weight:600;font-size:14px;display:flex;align-items:center;justify-content:center;gap:8px}
  .add-btn:hover{background:var(--brass-bright)}
  .stepper{display:flex;align-items:center;justify-content:space-between;background:var(--panel-2);border-radius:var(--radius-sm);padding:4px}
  .stepper button{background:var(--panel);border:1px solid var(--line);width:30px;height:30px;border-radius:var(--radius-sm);font-size:16px;font-weight:600;color:var(--ink)}
  .stepper span{font-weight:700;font-size:14px;font-family:'IBM Plex Mono',monospace}

  .empty-state{text-align:center;padding:56px 20px;border:1px dashed var(--line)}
  .empty-state h3{font-size:22px;margin-bottom:8px;font-family:'Cormorant Garamond',serif}
  .empty-state p{color:var(--ink-45);margin:0 0 16px}

  @media (max-width:1000px){.products{grid-template-columns:repeat(3,1fr)}}
  @media (max-width:700px){.products{grid-template-columns:repeat(2,1fr)}}
  @media (max-width:460px){.products{grid-template-columns:1fr}}

  /* ---------- Deal ---------- */
  .deal{background:var(--panel);color:var(--ink);display:grid;grid-template-columns:1fr 1fr;align-items:center;overflow:hidden;border:1px solid var(--line)}
  .deal-img{height:100%;min-height:360px;object-fit:cover}
  .deal-content{padding:44px}
  .deal-content h3{font-size:32px;color:var(--ink);margin-bottom:10px}
  .deal-content p.lead{color:var(--ink-70);margin-bottom:22px}
  .countdown{display:flex;gap:20px;margin-bottom:24px}
  .countdown div{text-align:left}
  .countdown .num{font-family:'IBM Plex Mono',monospace;font-size:26px;font-weight:600;display:block;line-height:1;color:var(--brass-bright)}
  .countdown .unit{font-size:11px;color:var(--ink-45);text-transform:uppercase;letter-spacing:.05em}
  .deal-price{display:flex;align-items:baseline;gap:10px;margin-bottom:22px}
  .deal-price .price{font-size:28px;color:var(--ink)}
  .stock-note{font-size:13px;color:var(--ink-45);margin-top:-14px;margin-bottom:22px}
  @media (max-width:820px){.deal{grid-template-columns:1fr}.deal-img{min-height:220px}}

  /* ---------- Testimonials ---------- */
  .testimonials{display:grid;grid-template-columns:repeat(3,1fr);gap:20px}
  .testimonial{background:var(--white,#fff);border:1px solid var(--dark-line);padding:26px}
  .quote-mark{font-family:'Cormorant Garamond',serif;font-size:44px;color:var(--brass);line-height:.4;display:block;margin-bottom:12px}
  .testimonial p{font-size:15px;color:var(--dark-70);margin:0 0 18px}
  .testimonial .who{display:flex;align-items:center;gap:10px}
  .testimonial img{width:38px;height:38px;border-radius:50%;object-fit:cover}
  .testimonial .name{font-weight:600;font-size:14px}
  .testimonial .role{font-size:12px;color:var(--dark-45)}
  @media (max-width:820px){.testimonials{grid-template-columns:1fr}}

  /* ---------- Newsletter ---------- */
  .newsletter{background:var(--dark-ink);padding:52px;text-align:center;border:1px solid var(--dark-line)}
  .newsletter h3{font-size:28px;margin-bottom:8px;color:var(--paper)}
  .newsletter p{color:rgba(244,241,232,.7);margin:0 0 22px}
  .newsletter form{display:flex;justify-content:center;gap:10px;flex-wrap:wrap}
  .newsletter input{padding:12px 16px;border:1px solid rgba(244,241,232,.2);border-radius:var(--radius-sm);width:300px;max-width:100%;font-family:inherit;font-size:14px;background:rgba(244,241,232,.06);color:var(--paper)}
  .newsletter input::placeholder{color:rgba(244,241,232,.4)}
  .form-msg{margin-top:12px;font-size:14px;min-height:20px;color:var(--paper)}
  .form-msg.error{color:#E19488}
  .form-msg.ok{color:#9FCBA0}

  /* ---------- Footer ---------- */
  footer{border-top:1px solid var(--dark-line);padding:44px 0 28px}
  .footer-grid{display:flex;flex-wrap:wrap;gap:40px;justify-content:space-between}
  .footer-brand p{color:var(--dark-45);font-size:14px;max-width:280px;margin-top:10px}
  .footer-cols{display:flex;gap:56px;flex-wrap:wrap}
  .footer-col h4{font-size:14px;margin-bottom:12px;font-family:'Inter',sans-serif;font-weight:600}
  .footer-col a{display:block;color:var(--dark-45);font-size:14px;padding:5px 0}
  .footer-col a:hover{color:var(--dark-ink)}
  .footer-bottom{margin-top:32px;padding-top:20px;border-top:1px solid var(--dark-line);display:flex;justify-content:space-between;color:var(--dark-45);font-size:13px;flex-wrap:wrap;gap:10px}

  /* ---------- Cart drawer ---------- */
  #cartOverlay{position:fixed;inset:0;background:rgba(0,0,0,.6);z-index:90;display:none}
  #cartOverlay.open{display:block}
  .cart-drawer{position:absolute;top:0;right:0;bottom:0;width:100%;max-width:400px;background:var(--bg);display:flex;flex-direction:column}
  .cart-head{display:flex;justify-content:space-between;align-items:center;padding:20px;border-bottom:1px solid var(--line)}
  .cart-head h3{font-size:22px}
  .cart-items{flex:1;overflow-y:auto;padding:14px 20px}
  .cart-item{display:flex;gap:12px;padding:14px 0;border-bottom:1px solid var(--line)}
  .cart-item img{width:64px;height:64px;object-fit:cover;flex-shrink:0}
  .cart-item .info{flex:1;display:flex;flex-direction:column;gap:6px}
  .cart-item .title-row{display:flex;justify-content:space-between;gap:8px}
  .cart-item .title-row h5{font-size:14px;margin:0;font-weight:600;font-family:'Inter',sans-serif}
  .cart-item .remove{background:none;border:0;color:var(--ink-45);font-size:13px;text-decoration:underline}
  .cart-item .stepper{width:96px}
  .cart-foot{border-top:1px solid var(--line);padding:20px}
  .cart-subtotal{display:flex;justify-content:space-between;font-weight:700;font-size:16px;margin-bottom:14px;font-family:'IBM Plex Mono',monospace}
  .cart-foot .btn{width:100%;justify-content:center}
  .cart-note{font-size:12px;color:var(--ink-45);margin-top:10px;text-align:center}
</style>
</head>
<body>

<header>
  <div class="topbar">Free shipping and a 2-year movement warranty on every watch</div>
  <div class="wrap header-row">
    <button class="icon-btn menu-toggle" id="menuToggle" aria-label="Open menu" aria-expanded="false">
      <svg width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M3 5h14M3 10h14M3 15h14" stroke="currentColor" stroke-width="1.6" stroke-linecap="round"/></svg>
    </button>
    <a class="logo" href="#top"><span class="mark"></span>Meridian</a>
    <nav class="primary" aria-label="Primary">
      <a href="#products">All watches</a>
      <a href="#types">By type</a>
      <a href="#deal">Deal</a>
      <a href="#about">Reviews</a>
    </nav>
    <div class="header-search" role="search">
      <input type="search" id="searchInput" placeholder="Search watches or types" aria-label="Search watches">
      <button id="searchBtn" aria-label="Search">
        <svg width="15" height="15" viewBox="0 0 20 20" fill="none"><circle cx="9" cy="9" r="6.2" stroke="currentColor" stroke-width="1.6"/><path d="M14 14l4.5 4.5" stroke="currentColor" stroke-width="1.6" stroke-linecap="round"/></svg>
      </button>
    </div>
    <div class="header-actions">
      <a class="icon-btn" title="Account" href="#" aria-label="Account">
        <svg width="19" height="19" viewBox="0 0 20 20" fill="none"><circle cx="10" cy="6.5" r="3.4" stroke="currentColor" stroke-width="1.5"/><path d="M3.5 17c1.2-3.4 4-5 6.5-5s5.3 1.6 6.5 5" stroke="currentColor" stroke-width="1.5" stroke-linecap="round"/></svg>
      </a>
      <button class="icon-btn" id="wishHeaderBtn" title="Wishlist" aria-label="Wishlist">
        <svg width="19" height="19" viewBox="0 0 20 20" fill="none"><path d="M10 17s-6.5-4-6.5-8.7C3.5 5.7 5.4 4 7.6 4c1.3 0 2.4.6 3 1.6.6-1 1.7-1.6 3-1.6 2.2 0 4.1 1.7 4.1 4.3 0 4.7-6.5 8.7-6.5 8.7z" stroke="currentColor" stroke-width="1.4"/></svg>
        <span class="badge" id="wishCount" style="display:none">0</span>
      </button>
      <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Open cart">
        <svg width="19" height="19" viewBox="0 0 20 20" fill="none"><path d="M4 6h12l-1 9.5a1.5 1.5 0 0 1-1.5 1.35H6.5A1.5 1.5 0 0 1 5 15.5L4 6z" stroke="currentColor" stroke-width="1.4"/><path d="M7 6V5a3 3 0 0 1 6 0v1" stroke="currentColor" stroke-width="1.4"/></svg>
        <span class="badge" id="cartCount">0</span>
      </button>
    </div>
  </div>
</header>

<div id="mobileNav" aria-hidden="true">
  <div class="mobile-panel">
    <div style="display:flex;justify-content:space-between;align-items:center">
      <a class="logo" href="#top"><span class="mark"></span>Meridian</a>
      <button class="icon-btn" id="mobileClose" aria-label="Close menu">
        <svg width="18" height="18" viewBox="0 0 20 20"><path d="M4 4l12 12M16 4L4 16" stroke="currentColor" stroke-width="1.6" stroke-linecap="round"/></svg>
      </button>
    </div>
    <div class="header-search"><input type="search" id="mobileSearchInput" placeholder="Search watches"><button id="mobileSearchBtn">Go</button></div>
    <nav>
      <a href="#products">All watches</a>
      <a href="#types">By type</a>
      <a href="#deal">Deal</a>
      <a href="#about">Reviews</a>
    </nav>
  </div>
</div>

<main id="top">
  <section class="hero">
    <div class="wrap hero-grid">
      <div>
        <div class="eyebrow-note">Independent watch retailer</div>
        <h1>Time, well kept.</h1>
        <p class="lead">Automatic, quartz and smart — every watch here is tested for accuracy before it ships, and backed by a two-year movement warranty.</p>
        <div class="hero-actions">
          <a class="btn btn-primary" href="#products">Shop all watches</a>
          <a class="btn btn-outline" href="#types">Browse by type</a>
        </div>
      </div>
      <div class="hero-art">
        <img src="https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=1000&q=80" alt="Automatic wristwatch with a leather strap">
        <div class="spec-card">
          <div class="label">Water resistance</div>
          <div class="val">up to 300m</div>
        </div>
      </div>
    </div>
  </section>

  <div class="bezel"><div class="bezel-row" id="bezel1"></div></div>

  <section class="section" id="types">
    <div class="wrap">
      <div class="section-head">
        <div><h2>Shop by type</h2><p>Six movements and styles, so you know exactly what you're getting.</p></div>
      </div>
      <div class="type-scroll" id="typesGrid"></div>
    </div>
  </section>

  <section class="section" id="products">
    <div class="wrap">
      <div class="section-head">
        <div><h2>All watches</h2><p>Sorted, filtered, and ready to compare.</p></div>
      </div>
      <div class="filter-bar">
        <button class="chip active" data-cat="all">All</button>
        <button class="chip" data-cat="dress">Dress</button>
        <button class="chip" data-cat="diver">Diver</button>
        <button class="chip" data-cat="chronograph">Chronograph</button>
        <button class="chip" data-cat="field">Field</button>
        <button class="chip" data-cat="smart">Smart</button>
        <button class="chip" data-cat="minimalist">Minimalist</button>
        <select id="sortSelect" aria-label="Sort watches">
          <option value="popular">Sort: Most popular</option>
          <option value="price-asc">Price: Low to high</option>
          <option value="price-desc">Price: High to low</option>
          <option value="rating">Rating</option>
        </select>
        <span class="filter-count" id="filterCount"></span>
      </div>
      <div class="grid products" id="productsGrid"></div>
      <div class="empty-state" id="emptyState" style="display:none">
        <h3>No matches found</h3>
        <p>Try a different search term or clear your filters.</p>
        <button class="btn btn-outline" id="clearFilters">Clear filters</button>
      </div>
    </div>
  </section>

  <div class="bezel on-light" style="background:var(--paper)"><div class="bezel-row" id="bezel2"></div></div>

  <section class="section" id="deal">
    <div class="wrap">
      <div class="deal">
        <img class="deal-img" src="https://images.unsplash.com/photo-1547996160-81dfa63595aa?auto=format&fit=crop&w=1000&q=80" alt="Chronograph watch close-up">
        <div class="deal-content">
          <div class="eyebrow-note">Watch of the day</div>
          <h3>Meridian Chronograph 40mm</h3>
          <p class="lead">A steel chronograph with a sapphire crystal and a 42-hour power reserve — built for daily wear.</p>
          <div class="countdown" id="countdown">
            <div><span class="num" id="dealDays">0</span><span class="unit">days</span></div>
            <div><span class="num" id="dealHours">00</span><span class="unit">hours</span></div>
            <div><span class="num" id="dealMinutes">00</span><span class="unit">minutes</span></div>
            <div><span class="num" id="dealSeconds">00</span><span class="unit">seconds</span></div>
          </div>
          <div class="deal-price"><span class="price">$649</span><span class="old-price">$780</span></div>
          <p class="stock-note">7 left at this price.</p>
          <button class="btn btn-primary" id="buyDeal">Add to cart</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section on-light" id="about">
    <div class="wrap">
      <div class="section-head"><div><h2>From people who wear one</h2></div></div>
      <div class="testimonials">
        <div class="testimonial">
          <span class="quote-mark">&ldquo;</span>
          <p>Kept perfect time out of the box. The strap sizing guide meant it fit right the first time.</p>
          <div class="who">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="">
            <div><div class="name">Ava Martin</div><div class="role">Diver, 42mm</div></div>
          </div>
        </div>
        <div class="testimonial">
          <span class="quote-mark">&ldquo;</span>
          <p>Ordered the field watch for hiking — it's taken a few knocks and the crystal hasn't scratched.</p>
          <div class="who">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="">
            <div><div class="name">Michael Lee</div><div class="role">Field, 38mm</div></div>
          </div>
        </div>
        <div class="testimonial">
          <span class="quote-mark">&ldquo;</span>
          <p>The dress watch is thin enough to fit under a cuff, which none of my other watches manage.</p>
          <div class="who">
            <img src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&w=80&q=80" alt="">
            <div><div class="name">Priya Nair</div><div class="role">Dress, 36mm</div></div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="section on-light">
    <div class="wrap">
      <div class="newsletter">
        <h3>New arrivals, once a week.</h3>
        <p>Restocks, limited runs, and honest price drops. No spam, unsubscribe anytime.</p>
        <form id="newsletterForm">
          <input type="email" id="newsletterEmail" placeholder="you@example.com" aria-label="Email address" required>
          <button class="btn btn-primary" type="submit">Sign up</button>
        </form>
        <div class="form-msg" id="newsletterMsg" role="status"></div>
      </div>
    </div>
  </section>
</main>

<footer style="background:var(--paper);color:var(--dark-ink)">
  <div class="wrap">
    <div class="footer-grid">
      <div class="footer-brand">
        <a class="logo" href="#top" style="color:var(--dark-ink)"><span class="mark"></span>Meridian</a>
        <p>An independent watch shop. Every piece regulated and tested before it ships.</p>
      </div>
      <div class="footer-cols">
        <div class="footer-col">
          <h4>Shop</h4>
          <a href="#products">All watches</a>
          <a href="#types">By type</a>
          <a href="#deal">Watch of the day</a>
        </div>
        <div class="footer-col">
          <h4>Help</h4>
          <a href="#">Sizing guide</a>
          <a href="#">Warranty & repairs</a>
          <a href="#">Contact us</a>
        </div>
        <div class="footer-col">
          <h4>Company</h4>
          <a href="#">About</a>
          <a href="#">Careers</a>
        </div>
      </div>
    </div>
    <div class="footer-bottom">
      <span>© <span id="year"></span> Meridian. All rights reserved.</span>
      <span>Regulated to within 4 seconds a day.</span>
    </div>
  </div>
</footer>

<div id="cartOverlay">
  <div class="cart-drawer" role="dialog" aria-label="Shopping cart">
    <div class="cart-head">
      <h3>Your cart</h3>
      <button class="icon-btn" id="closeCart" aria-label="Close cart">
        <svg width="18" height="18" viewBox="0 0 20 20"><path d="M4 4l12 12M16 4L4 16" stroke="currentColor" stroke-width="1.6" stroke-linecap="round"/></svg>
      </button>
    </div>
    <div class="cart-items" id="cartItems"></div>
    <div class="cart-foot">
      <div class="cart-subtotal"><span>Subtotal</span><span id="cartSubtotal">$0</span></div>
      <button class="btn btn-primary" id="checkoutBtn">Checkout</button>
      <div class="cart-note">Shipping and taxes calculated at checkout.</div>
    </div>
  </div>
</div>

<script>
(function(){
  "use strict";

  const TYPES = [
    { id:'dress', name:'Dress', sub:'Thin, quiet, formal', img:'https://images.unsplash.com/photo-1509048191080-d2984bad6ae5?auto=format&fit=crop&w=500&q=80' },
    { id:'diver', name:'Diver', sub:'Water resistant to 300m', img:'https://images.unsplash.com/photo-1523170335258-f5c6c6bd6875?auto=format&fit=crop&w=500&q=80' },
    { id:'chronograph', name:'Chronograph', sub:'Built-in stopwatch', img:'https://images.unsplash.com/photo-1547996160-81dfa63595aa?auto=format&fit=crop&w=500&q=80' },
    { id:'field', name:'Field', sub:'Rugged, legible, tough', img:'https://images.unsplash.com/photo-1508057198894-247b23fe5ade?auto=format&fit=crop&w=500&q=80' },
    { id:'smart', name:'Smart', sub:'Notifications, fitness', img:'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=500&q=80' },
    { id:'minimalist', name:'Minimalist', sub:'Clean face, no clutter', img:'https://images.unsplash.com/photo-1533139502658-0198f920d8e7?auto=format&fit=crop&w=500&q=80' }
  ];

  const PRODUCTS = [
    { id:1, title:'Meridian Diver 42', price:480, rating:5, reviews:142, movement:'Automatic', tag:'New', category:'diver', img:'https://images.unsplash.com/photo-1523170335258-f5c6c6bd6875?auto=format&fit=crop&w=600&q=80' },
    { id:2, title:'Meridian Dress 36', price:390, oldPrice:450, rating:4, reviews:74, movement:'Quartz', tag:'-13%', sale:true, category:'dress', img:'https://images.unsplash.com/photo-1509048191080-d2984bad6ae5?auto=format&fit=crop&w=600&q=80' },
    { id:3, title:'Meridian Chronograph 40', price:649, oldPrice:780, rating:5, reviews:98, movement:'Automatic', tag:'-17%', sale:true, category:'chronograph', img:'https://images.unsplash.com/photo-1547996160-81dfa63595aa?auto=format&fit=crop&w=600&q=80' },
    { id:4, title:'Meridian Field 38', price:220, rating:4, reviews:56, movement:'Quartz', category:'field', img:'https://images.unsplash.com/photo-1508057198894-247b23fe5ade?auto=format&fit=crop&w=600&q=80' },
    { id:5, title:'Meridian Pulse Smartwatch', price:299, rating:4, reviews:210, movement:'Digital', category:'smart', img:'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80' },
    { id:6, title:'Meridian Minimalist 34', price:180, rating:5, reviews:167, movement:'Quartz', category:'minimalist', img:'https://images.unsplash.com/photo-1533139502658-0198f920d8e7?auto=format&fit=crop&w=600&q=80' },
    { id:7, title:'Meridian Diver 44 Titanium', price:720, rating:5, reviews:39, movement:'Automatic', tag:'New', category:'diver', img:'https://images.unsplash.com/photo-1587836374828-4dbafa94cf0e?auto=format&fit=crop&w=600&q=80' },
    { id:8, title:'Meridian Field GMT', price:410, rating:4, reviews:61, movement:'Automatic', category:'field', img:'https://images.unsplash.com/photo-1622434641406-a158123450f9?auto=format&fit=crop&w=600&q=80' }
  ];

  const state = { category:'all', query:'', sort:'popular', cart:{}, wishlist:new Set() };

  const $ = (sel, ctx=document) => ctx.querySelector(sel);
  const $$ = (sel, ctx=document) => Array.from(ctx.querySelectorAll(sel));
  const money = n => '$' + n.toLocaleString();
  const escapeHtml = s => String(s).replace(/[&<>"']/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));

  function renderBezels(){
    const row = Array.from({length:12}).map(()=> '<span></span>').join('');
    $('#bezel1').innerHTML = row;
    $('#bezel2').innerHTML = row;
  }

  function renderTypes(){
    const grid = $('#typesGrid');
    grid.innerHTML = TYPES.map(t => `
      <button class="type-card" data-cat="${t.id}" aria-label="Shop ${escapeHtml(t.name)} watches">
        <img src="${t.img}" alt="">
        <span class="label"><b>${escapeHtml(t.name)}</b><span>${escapeHtml(t.sub)}</span></span>
      </button>
    `).join('');
    $$('.type-card', grid).forEach(btn => btn.addEventListener('click', () => {
      setCategory(btn.dataset.cat);
      document.getElementById('products').scrollIntoView({behavior:'smooth', block:'start'});
    }));
  }

  function getVisibleProducts(){
    let list = PRODUCTS.slice();
    if (state.category !== 'all') list = list.filter(p => p.category === state.category);
    if (state.query) {
      const q = state.query.toLowerCase();
      list = list.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q) || p.movement.toLowerCase().includes(q));
    }
    switch(state.sort){
      case 'price-asc': list.sort((a,b)=>a.price-b.price); break;
      case 'price-desc': list.sort((a,b)=>b.price-a.price); break;
      case 'rating': list.sort((a,b)=>b.rating-a.rating); break;
      default: list.sort((a,b)=>b.reviews-a.reviews);
    }
    return list;
  }

  function renderProducts(){
    const list = getVisibleProducts();
    const grid = $('#productsGrid');
    const empty = $('#emptyState');
    $('#filterCount').textContent = list.length + (list.length===1 ? ' watch' : ' watches');

    if (!list.length){
      grid.style.display = 'none';
      empty.style.display = 'block';
      return;
    }
    grid.style.display = 'grid';
    empty.style.display = 'none';

    grid.innerHTML = list.map(p => {
      const qty = state.cart[p.id] || 0;
      const wished = state.wishlist.has(p.id);
      return `
      <article class="product">
        <div class="product-img">
          ${p.tag ? `<span class="tag${p.sale?' sale':''}">${escapeHtml(p.tag)}</span>` : ''}
          <button class="wish${wished?' active':''}" data-id="${p.id}" aria-label="${wished?'Remove from':'Add to'} wishlist" aria-pressed="${wished}">
            <svg width="16" height="16" viewBox="0 0 20 20" fill="none"><path d="M10 17s-6.5-4-6.5-8.7C3.5 5.7 5.4 4 7.6 4c1.3 0 2.4.6 3 1.6.6-1 1.7-1.6 3-1.6 2.2 0 4.1 1.7 4.1 4.3 0 4.7-6.5 8.7-6.5 8.7z" stroke="currentColor" stroke-width="1.4"/></svg>
          </button>
          <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
        </div>
        <div class="product-body">
          <div class="product-cat">${escapeHtml(p.category)}</div>
          <h5>${escapeHtml(p.title)}</h5>
          <div class="movement">${escapeHtml(p.movement)} movement</div>
          <div class="stars">${'★'.repeat(Math.round(p.rating))}${'☆'.repeat(5-Math.round(p.rating))}<span class="count">(${p.reviews})</span></div>
          <div class="price-row">
            <span class="price">${money(p.price)}</span>
            ${p.oldPrice ? `<span class="old-price">${money(p.oldPrice)}</span>` : ''}
          </div>
        </div>
        <div class="product-footer" data-footer="${p.id}">
          ${qty > 0 ? stepperHtml(p.id, qty) : `<button class="add-btn" data-add="${p.id}">Add to cart</button>`}
        </div>
      </article>
    `;
    }).join('');

    $$('.wish', grid).forEach(btn => btn.addEventListener('click', () => toggleWish(Number(btn.dataset.id))));
    $$('[data-add]', grid).forEach(btn => btn.addEventListener('click', () => changeQty(Number(btn.dataset.add), 1)));
    bindSteppers(grid);
  }

  function stepperHtml(id, qty){
    return `
      <div class="stepper">
        <button data-dec="${id}" aria-label="Decrease quantity">−</button>
        <span>${qty}</span>
        <button data-inc="${id}" aria-label="Increase quantity">+</button>
      </div>`;
  }

  function bindSteppers(ctx){
    $$('[data-inc]', ctx).forEach(b => b.addEventListener('click', () => changeQty(Number(b.dataset.inc), 1)));
    $$('[data-dec]', ctx).forEach(b => b.addEventListener('click', () => changeQty(Number(b.dataset.dec), -1)));
  }

  function toggleWish(id){
    if (state.wishlist.has(id)) state.wishlist.delete(id); else state.wishlist.add(id);
    const count = state.wishlist.size;
    const el = $('#wishCount');
    el.textContent = count;
    el.style.display = count ? 'grid' : 'none';
    renderProducts();
  }

  function changeQty(id, delta){
    const current = state.cart[id] || 0;
    const next = Math.max(0, current + delta);
    if (next === 0) delete state.cart[id]; else state.cart[id] = next;
    updateCartFooterFor(id);
    updateCartUI();
  }

  function updateCartFooterFor(id){
    const footer = document.querySelector(`[data-footer="${id}"]`);
    if (!footer) return;
    const qty = state.cart[id] || 0;
    footer.innerHTML = qty > 0 ? stepperHtml(id, qty) : `<button class="add-btn" data-add="${id}">Add to cart</button>`;
    if (qty > 0) bindSteppers(footer);
    else $('[data-add]', footer).addEventListener('click', () => changeQty(id, 1));
  }

  function setCategory(cat){
    state.category = cat;
    $$('.chip[data-cat]').forEach(c => c.classList.toggle('active', c.dataset.cat === cat));
    renderProducts();
  }

  function updateCartUI(){
    const ids = Object.keys(state.cart);
    const totalQty = ids.reduce((sum,id)=>sum+state.cart[id],0);
    $('#cartCount').textContent = totalQty;

    const itemsEl = $('#cartItems');
    if (!ids.length){
      itemsEl.innerHTML = `<div class="empty-state"><h3>Your cart is empty</h3><p>Add a watch you'll actually wear.</p></div>`;
      $('#cartSubtotal').textContent = money(0);
      return;
    }
    let subtotal = 0;
    itemsEl.innerHTML = ids.map(idStr => {
      const id = Number(idStr);
      const p = PRODUCTS.find(x => x.id === id);
      const qty = state.cart[id];
      subtotal += p.price * qty;
      return `
        <div class="cart-item">
          <img src="${p.img}" alt="">
          <div class="info">
            <div class="title-row"><h5>${escapeHtml(p.title)}</h5><span class="price">${money(p.price*qty)}</span></div>
            <div class="stepper">
              <button data-dec="${id}" aria-label="Decrease quantity">−</button>
              <span>${qty}</span>
              <button data-inc="${id}" aria-label="Increase quantity">+</button>
            </div>
            <button class="remove" data-remove="${id}">Remove</button>
          </div>
        </div>`;
    }).join('');
    $('#cartSubtotal').textContent = money(subtotal);

    bindSteppers(itemsEl);
    $$('[data-remove]', itemsEl).forEach(b => b.addEventListener('click', () => {
      delete state.cart[Number(b.dataset.remove)];
      updateCartFooterFor(Number(b.dataset.remove));
      updateCartUI();
    }));
  }

  function openCart(){ $('#cartOverlay').classList.add('open'); }
  function closeCart(){ $('#cartOverlay').classList.remove('open'); }

  function applySearch(value){
    state.query = value;
    renderProducts();
  }

  function openMobileNav(){
    $('#mobileNav').classList.add('open');
    $('#menuToggle').setAttribute('aria-expanded','true');
  }
  function closeMobileNav(){
    $('#mobileNav').classList.remove('open');
    $('#menuToggle').setAttribute('aria-expanded','false');
  }

  function setupCountdown(){
    const target = new Date(Date.now() + (24*60 + 36) * 60 * 1000);
    function tick(){
      const diff = target - new Date();
      if (diff <= 0){ clearInterval(timer); return; }
      const d = Math.floor(diff/(864e5));
      const h = Math.floor((diff%864e5)/36e5);
      const m = Math.floor((diff%36e5)/6e4);
      const s = Math.floor((diff%6e4)/1000);
      $('#dealDays').textContent = d;
      $('#dealHours').textContent = String(h).padStart(2,'0');
      $('#dealMinutes').textContent = String(m).padStart(2,'0');
      $('#dealSeconds').textContent = String(s).padStart(2,'0');
    }
    tick();
    const timer = setInterval(tick, 1000);
  }

  function init(){
    renderBezels();
    renderTypes();
    renderProducts();
    updateCartUI();
    setupCountdown();
    $('#year').textContent = new Date().getFullYear();

    $('#searchBtn').addEventListener('click', () => applySearch($('#searchInput').value));
    $('#searchInput').addEventListener('keydown', e => { if (e.key === 'Enter') applySearch(e.target.value); });
    $('#mobileSearchBtn').addEventListener('click', () => { applySearch($('#mobileSearchInput').value); closeMobileNav(); document.getElementById('products').scrollIntoView({behavior:'smooth'}); });

    $$('.chip[data-cat]').forEach(chip => chip.addEventListener('click', () => setCategory(chip.dataset.cat)));
    $('#sortSelect').addEventListener('change', e => { state.sort = e.target.value; renderProducts(); });
    $('#clearFilters').addEventListener('click', () => {
      state.query = ''; $('#searchInput').value = '';
      setCategory('all');
    });

    $('#menuToggle').addEventListener('click', openMobileNav);
    $('#mobileClose').addEventListener('click', closeMobileNav);
    $('#mobileNav').addEventListener('click', e => { if (e.target.id === 'mobileNav') closeMobileNav(); });

    $('#cartBtn').addEventListener('click', openCart);
    $('#closeCart').addEventListener('click', closeCart);
    $('#cartOverlay').addEventListener('click', e => { if (e.target.id === 'cartOverlay') closeCart(); });
    $('#checkoutBtn').addEventListener('click', () => {
      if (!Object.keys(state.cart).length) return;
      alert('This is a demo — checkout is not connected to a payment processor.');
    });

    $('#buyDeal').addEventListener('click', () => {
      changeQty(3, 1); // Chronograph 40 used as the featured deal item
      openCart();
    });

    $('#newsletterForm').addEventListener('submit', e => {
      e.preventDefault();
      const email = $('#newsletterEmail').value.trim();
      const msg = $('#newsletterMsg');
      if (!email || !email.includes('@')){
        msg.textContent = 'Please enter a valid email address.';
        msg.className = 'form-msg error';
        return;
      }
      msg.textContent = "Thanks — you're on the list.";
      msg.className = 'form-msg ok';
      $('#newsletterEmail').value = '';
    });

    document.addEventListener('keydown', e => {
      if (e.key === 'Escape'){ closeCart(); closeMobileNav(); }
    });
  }

  document.addEventListener('DOMContentLoaded', init);
})();
</script>
</body>
</html>
