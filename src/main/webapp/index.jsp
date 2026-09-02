<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>Foundry — Well-made things, plainly sold</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600;9..144,700&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
<style>
  :root{
    --paper:#F5F4EF;
    --paper-2:#EDEBE2;
    --ink:#1C231F;
    --ink-70: rgba(28,35,31,.7);
    --ink-45: rgba(28,35,31,.45);
    --line: rgba(28,35,31,.14);
    --ochre:#B8791B;
    --ochre-dark:#8F5D12;
    --white:#FFFFFF;
    --red:#B4402C;
    --radius-sm:4px;
    --maxw:1240px;
  }
  *{box-sizing:border-box}
  html{scroll-behavior:smooth}
  body{
    margin:0;
    background:var(--paper);
    color:var(--ink);
    font-family:'Inter',system-ui,sans-serif;
    line-height:1.5;
    -webkit-font-smoothing:antialiased;
  }
  h1,h2,h3,.display{
    font-family:'Fraunces',serif;
    font-weight:600;
    letter-spacing:-0.01em;
    line-height:1.08;
    margin:0;
  }
  a{color:inherit;text-decoration:none}
  button{font-family:inherit;cursor:pointer}
  img{max-width:100%;display:block}
  .wrap{max-width:var(--maxw);margin:0 auto;padding:0 24px}
  :focus-visible{outline:2px solid var(--ochre);outline-offset:2px}
  .visually-hidden{position:absolute;width:1px;height:1px;overflow:hidden;clip:rect(0,0,0,0);white-space:nowrap}

  /* ---------- Header ---------- */
  header{
    position:sticky;top:0;z-index:50;
    background:var(--paper);
    border-bottom:1px solid var(--line);
  }
  .topbar{
    background:var(--ink);color:var(--paper);
    font-size:13px;text-align:center;padding:7px 12px;
  }
  .header-row{
    display:flex;align-items:center;gap:20px;
    padding:16px 0;
  }
  .logo{
    font-family:'Fraunces',serif;font-weight:700;font-size:22px;
    letter-spacing:-0.01em;flex-shrink:0;
    display:flex;align-items:center;gap:8px;
  }
  .logo .mark{
    width:26px;height:26px;background:var(--ochre);
    clip-path:polygon(50% 0,100% 25%,100% 75%,50% 100%,0 75%,0 25%);
    display:inline-block;
  }
  nav.primary{display:flex;gap:4px;margin-left:8px}
  nav.primary a{
    padding:9px 12px;border-radius:var(--radius-sm);
    font-size:15px;font-weight:500;color:var(--ink-70);
  }
  nav.primary a:hover{background:var(--paper-2);color:var(--ink)}
  .header-search{
    flex:1;max-width:360px;display:flex;align-items:center;
    border:1px solid var(--line);border-radius:999px;
    padding:8px 6px 8px 16px;background:var(--white);
    gap:8px;
  }
  .header-search input{
    border:0;outline:none;flex:1;font-size:14px;font-family:inherit;background:transparent;color:var(--ink);
  }
  .header-search button{
    border:0;background:var(--ink);color:var(--paper);
    width:32px;height:32px;border-radius:50%;
    display:grid;place-items:center;flex-shrink:0;
  }
  .header-actions{display:flex;align-items:center;gap:6px;margin-left:auto}
  .icon-btn{
    border:0;background:transparent;position:relative;
    width:38px;height:38px;border-radius:50%;
    display:grid;place-items:center;color:var(--ink);
  }
  .icon-btn:hover{background:var(--paper-2)}
  .badge{
    position:absolute;top:2px;right:2px;
    background:var(--ochre);color:var(--white);
    font-size:10px;font-weight:700;min-width:16px;height:16px;
    border-radius:999px;display:grid;place-items:center;padding:0 3px;
  }
  .menu-toggle{display:none}

  @media (max-width:920px){
    nav.primary{display:none}
    .header-search{display:none}
    .menu-toggle{display:grid}
  }

  /* Mobile drawer nav */
  #mobileNav{
    position:fixed;inset:0;background:rgba(28,35,31,.5);z-index:80;
    display:none;
  }
  #mobileNav.open{display:block}
  .mobile-panel{
    position:absolute;top:0;left:0;bottom:0;width:82%;max-width:340px;
    background:var(--paper);padding:20px;overflow-y:auto;
    display:flex;flex-direction:column;gap:18px;
  }
  .mobile-panel .header-search{max-width:none}
  .mobile-panel nav a{
    display:block;padding:12px 4px;font-size:17px;border-bottom:1px solid var(--line);font-weight:500;
  }

  /* ---------- Hero ---------- */
  .hero{
    padding:56px 0 64px;
  }
  .hero-grid{
    display:grid;grid-template-columns:1.1fr 1fr;gap:56px;align-items:center;
  }
  .eyebrow-note{font-size:14px;color:var(--ink-45);margin-bottom:14px}
  .hero h1{font-size:52px;max-width:11ch}
  .hero p.lead{margin:20px 0 28px;font-size:17px;color:var(--ink-70);max-width:44ch}
  .btn{
    display:inline-flex;align-items:center;gap:8px;
    padding:13px 22px;border-radius:var(--radius-sm);
    font-weight:600;font-size:15px;border:1px solid transparent;
  }
  .btn-primary{background:var(--ink);color:var(--paper)}
  .btn-primary:hover{background:#000}
  .btn-outline{border-color:var(--ink);color:var(--ink)}
  .btn-outline:hover{background:var(--ink);color:var(--paper)}
  .hero-actions{display:flex;gap:12px;flex-wrap:wrap}
  .hero-art{
    position:relative;
  }
  .hero-art img{
    width:100%;height:420px;object-fit:cover;border-radius:2px;
  }
  .price-tag{
    position:absolute;bottom:22px;left:-14px;
    background:var(--ink);color:var(--paper);
    padding:10px 18px 10px 26px;font-size:14px;font-weight:600;
    clip-path:polygon(16px 0,100% 0,100% 100%,16px 100%,0 50%);
    box-shadow:0 10px 24px rgba(0,0,0,.18);
  }
  .price-tag small{display:block;font-weight:400;opacity:.75;font-size:11px}

  @media (max-width:860px){
    .hero-grid{grid-template-columns:1fr;gap:32px}
    .hero h1{font-size:38px;max-width:none}
    .hero-art img{height:260px}
  }

  /* ---------- Section shell ---------- */
  .section{padding:56px 0}
  .section-head{
    display:flex;justify-content:space-between;align-items:flex-end;
    gap:20px;margin-bottom:28px;flex-wrap:wrap;
  }
  .section-head h2{font-size:30px}
  .section-head p{margin:8px 0 0;color:var(--ink-45);font-size:15px}

  /* ---------- Categories ---------- */
  .cat-scroll{
    display:flex;gap:14px;overflow-x:auto;padding-bottom:6px;
    scrollbar-width:thin;
  }
  .cat-card{
    flex:0 0 190px;position:relative;height:150px;border-radius:2px;overflow:hidden;
    border:1px solid var(--line);
  }
  .cat-card img{width:100%;height:100%;object-fit:cover}
  .cat-card .label{
    position:absolute;left:0;right:0;bottom:0;
    background:linear-gradient(0deg,rgba(0,0,0,.65),transparent);
    color:#fff;padding:12px 14px 10px;font-weight:600;font-size:15px;
  }
  .cat-card{cursor:pointer;background:none;text-align:left;padding:0}

  /* ---------- Filter bar ---------- */
  .filter-bar{
    display:flex;gap:10px;flex-wrap:wrap;align-items:center;margin-bottom:22px;
  }
  .filter-bar select{
    padding:9px 12px;border:1px solid var(--line);border-radius:var(--radius-sm);
    background:var(--white);font-family:inherit;font-size:14px;color:var(--ink);
  }
  .chip{
    padding:8px 14px;border-radius:999px;border:1px solid var(--line);
    background:var(--white);font-size:13px;font-weight:500;color:var(--ink-70);
  }
  .chip.active{background:var(--ink);color:var(--paper);border-color:var(--ink)}
  .filter-count{margin-left:auto;font-size:13px;color:var(--ink-45)}

  /* ---------- Products ---------- */
  .products{display:grid;grid-template-columns:repeat(4,1fr);gap:20px}
  .product{
    background:var(--white);border:1px solid var(--line);
    display:flex;flex-direction:column;
  }
  .product-img{position:relative;aspect-ratio:1/1;overflow:hidden;background:var(--paper-2)}
  .product-img img{width:100%;height:100%;object-fit:cover}
  .product .tag{
    position:absolute;top:10px;left:0;
    background:var(--ink);color:var(--paper);font-size:12px;font-weight:700;
    padding:5px 10px 5px 14px;
    clip-path:polygon(10px 0,100% 0,100% 100%,10px 100%,0 50%);
  }
  .product .tag.sale{background:var(--red)}
  .wish{
    position:absolute;top:8px;right:8px;width:32px;height:32px;border-radius:50%;
    background:rgba(255,255,255,.9);border:0;display:grid;place-items:center;
  }
  .wish.active svg{fill:var(--red);stroke:var(--red)}
  .product-body{padding:14px 14px 6px;display:flex;flex-direction:column;gap:6px;flex:1}
  .product-cat{font-size:12px;color:var(--ink-45);text-transform:lowercase}
  .product h5{font-size:15px;font-weight:600;margin:0}
  .stars{color:var(--ochre);font-size:13px;letter-spacing:1px}
  .stars .count{color:var(--ink-45);font-size:12px;letter-spacing:0;margin-left:4px}
  .price-row{display:flex;align-items:baseline;gap:8px;margin-top:auto}
  .price{font-weight:700;font-size:16px}
  .old-price{color:var(--ink-45);text-decoration:line-through;font-size:13px}
  .product-footer{padding:12px 14px 14px}
  .add-btn{
    width:100%;background:var(--ink);color:var(--paper);border:0;
    padding:11px;border-radius:var(--radius-sm);font-weight:600;font-size:14px;
    display:flex;align-items:center;justify-content:center;gap:8px;
  }
  .add-btn:hover{background:#000}
  .stepper{
    display:flex;align-items:center;justify-content:space-between;
    background:var(--paper-2);border-radius:var(--radius-sm);padding:4px;
  }
  .stepper button{background:var(--white);border:1px solid var(--line);width:30px;height:30px;border-radius:var(--radius-sm);font-size:16px;font-weight:600}
  .stepper span{font-weight:700;font-size:14px}

  .empty-state{
    text-align:center;padding:56px 20px;border:1px dashed var(--line);
  }
  .empty-state h3{font-size:20px;margin-bottom:8px}
  .empty-state p{color:var(--ink-45);margin:0 0 16px}

  @media (max-width:1000px){.products{grid-template-columns:repeat(3,1fr)}}
  @media (max-width:700px){.products{grid-template-columns:repeat(2,1fr)}}
  @media (max-width:460px){.products{grid-template-columns:1fr}}

  /* ---------- Deal ---------- */
  .deal{
    background:var(--ink);color:var(--paper);
    display:grid;grid-template-columns:1fr 1fr;align-items:center;gap:0;overflow:hidden;
  }
  .deal-img{height:100%;min-height:340px;object-fit:cover}
  .deal-content{padding:44px}
  .deal-content .eyebrow-note{color:rgba(245,244,239,.55)}
  .deal-content h3{font-size:30px;color:var(--paper);margin-bottom:10px}
  .deal-content p.lead{color:rgba(245,244,239,.75);margin-bottom:22px}
  .countdown{display:flex;gap:16px;margin-bottom:24px}
  .countdown div{text-align:left}
  .countdown .num{font-family:'Fraunces',serif;font-size:28px;font-weight:600;display:block;line-height:1}
  .countdown .unit{font-size:11px;color:rgba(245,244,239,.55)}
  .deal-price{display:flex;align-items:baseline;gap:10px;margin-bottom:22px}
  .deal-price .price{font-size:30px;color:var(--paper)}
  .deal-price .old-price{color:rgba(245,244,239,.5)}
  .stock-note{font-size:13px;color:rgba(245,244,239,.6);margin-top:-14px;margin-bottom:22px}
  .deal .btn-primary{background:var(--ochre);color:var(--ink)}
  .deal .btn-primary:hover{background:#cf8e2b}

  @media (max-width:820px){
    .deal{grid-template-columns:1fr}
    .deal-img{min-height:220px}
  }

  /* ---------- Testimonials ---------- */
  .testimonials{display:grid;grid-template-columns:repeat(3,1fr);gap:20px}
  .testimonial{background:var(--white);border:1px solid var(--line);padding:26px}
  .quote-mark{font-family:'Fraunces',serif;font-size:40px;color:var(--ochre);line-height:.5;display:block;margin-bottom:10px}
  .testimonial p{font-size:15px;color:var(--ink-70);margin:0 0 18px}
  .testimonial .who{display:flex;align-items:center;gap:10px}
  .testimonial img{width:38px;height:38px;border-radius:50%;object-fit:cover}
  .testimonial .name{font-weight:600;font-size:14px}
  .testimonial .role{font-size:12px;color:var(--ink-45)}
  @media (max-width:820px){.testimonials{grid-template-columns:1fr}}

  /* ---------- Newsletter ---------- */
  .newsletter{background:var(--paper-2);padding:52px;text-align:center;border:1px solid var(--line)}
  .newsletter h3{font-size:26px;margin-bottom:8px}
  .newsletter p{color:var(--ink-70);margin:0 0 22px}
  .newsletter form{display:flex;justify-content:center;gap:10px;flex-wrap:wrap}
  .newsletter input{
    padding:12px 16px;border:1px solid var(--line);border-radius:var(--radius-sm);
    width:300px;max-width:100%;font-family:inherit;font-size:14px;
  }
  .form-msg{margin-top:12px;font-size:14px;min-height:20px}
  .form-msg.error{color:var(--red)}
  .form-msg.ok{color:#3F6B45}

  /* ---------- Footer ---------- */
  footer{border-top:1px solid var(--line);padding:44px 0 28px;margin-top:20px}
  .footer-grid{display:flex;flex-wrap:wrap;gap:40px;justify-content:space-between}
  .footer-brand p{color:var(--ink-45);font-size:14px;max-width:280px;margin-top:10px}
  .footer-cols{display:flex;gap:56px;flex-wrap:wrap}
  .footer-col h4{font-size:14px;margin-bottom:12px}
  .footer-col a{display:block;color:var(--ink-45);font-size:14px;padding:5px 0}
  .footer-col a:hover{color:var(--ink)}
  .footer-bottom{margin-top:32px;padding-top:20px;border-top:1px solid var(--line);
    display:flex;justify-content:space-between;color:var(--ink-45);font-size:13px;flex-wrap:wrap;gap:10px}

  /* ---------- Cart drawer ---------- */
  #cartOverlay{
    position:fixed;inset:0;background:rgba(28,35,31,.5);z-index:90;display:none;
  }
  #cartOverlay.open{display:block}
  .cart-drawer{
    position:absolute;top:0;right:0;bottom:0;width:100%;max-width:400px;
    background:var(--paper);display:flex;flex-direction:column;
  }
  .cart-head{
    display:flex;justify-content:space-between;align-items:center;
    padding:20px;border-bottom:1px solid var(--line);
  }
  .cart-head h3{font-size:20px}
  .cart-items{flex:1;overflow-y:auto;padding:14px 20px}
  .cart-item{display:flex;gap:12px;padding:14px 0;border-bottom:1px solid var(--line)}
  .cart-item img{width:64px;height:64px;object-fit:cover;flex-shrink:0}
  .cart-item .info{flex:1;display:flex;flex-direction:column;gap:6px}
  .cart-item .title-row{display:flex;justify-content:space-between;gap:8px}
  .cart-item .title-row h5{font-size:14px;margin:0;font-weight:600}
  .cart-item .remove{background:none;border:0;color:var(--ink-45);font-size:13px;text-decoration:underline}
  .cart-item .stepper{width:96px}
  .cart-foot{border-top:1px solid var(--line);padding:20px}
  .cart-subtotal{display:flex;justify-content:space-between;font-weight:700;font-size:16px;margin-bottom:14px}
  .cart-foot .btn{width:100%;justify-content:center}
  .cart-note{font-size:12px;color:var(--ink-45);margin-top:10px;text-align:center}
</style>
</head>
<body>

<header>
  <div class="topbar">Free shipping on orders over $75 — no code needed</div>
  <div class="wrap header-row">
    <button class="icon-btn menu-toggle" id="menuToggle" aria-label="Open menu" aria-expanded="false">
      <svg width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M3 5h14M3 10h14M3 15h14" stroke="currentColor" stroke-width="1.6" stroke-linecap="round"/></svg>
    </button>

    <a class="logo" href="#top"><span class="mark"></span>Foundry</a>

    <nav class="primary" aria-label="Primary">
      <a href="#products">Shop</a>
      <a href="#categories">Categories</a>
      <a href="#deal">Deals</a>
      <a href="#about">About</a>
    </nav>

    <div class="header-search" role="search">
      <input type="search" id="searchInput" placeholder="Search products or categories" aria-label="Search products">
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
      <a class="logo" href="#top"><span class="mark"></span>Foundry</a>
      <button class="icon-btn" id="mobileClose" aria-label="Close menu">
        <svg width="18" height="18" viewBox="0 0 20 20"><path d="M4 4l12 12M16 4L4 16" stroke="currentColor" stroke-width="1.6" stroke-linecap="round"/></svg>
      </button>
    </div>
    <div class="header-search"><input type="search" id="mobileSearchInput" placeholder="Search products"><button id="mobileSearchBtn">Go</button></div>
    <nav>
      <a href="#products">Shop</a>
      <a href="#categories">Categories</a>
      <a href="#deal">Deals</a>
      <a href="#about">About</a>
    </nav>
  </div>
</div>

<main id="top">
  <section class="hero">
    <div class="wrap hero-grid">
      <div>
        <div class="eyebrow-note">Curated goods, since day one</div>
        <h1>Well-made things, plainly sold.</h1>
        <p class="lead">A small shop for things that last — chosen carefully, priced fairly, and shipped fast. No gimmicks, just good gear.</p>
        <div class="hero-actions">
          <a class="btn btn-primary" href="#products">Shop new arrivals</a>
          <a class="btn btn-outline" href="#deal">See today's deal</a>
        </div>
      </div>
      <div class="hero-art">
        <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=1000&q=80" alt="Camera and everyday carry items arranged on a desk">
        <div class="price-tag">From $79<small>free returns, 30 days</small></div>
      </div>
    </div>
  </section>

  <section class="section" id="categories">
    <div class="wrap">
      <div class="section-head">
        <div><h2>Find what you need</h2><p>Six departments, no fluff.</p></div>
      </div>
      <div class="cat-scroll" id="categoriesGrid"></div>
    </div>
  </section>

  <section class="section" id="products">
    <div class="wrap">
      <div class="section-head">
        <div><h2>Popular right now</h2><p>Based on orders from the last 7 days.</p></div>
      </div>
      <div class="filter-bar">
        <button class="chip active" data-cat="all">All</button>
        <button class="chip" data-cat="phones">Phones</button>
        <button class="chip" data-cat="laptops">Laptops</button>
        <button class="chip" data-cat="clothing">Clothing</button>
        <button class="chip" data-cat="gadgets">Gadgets</button>
        <button class="chip" data-cat="footwear">Footwear</button>
        <button class="chip" data-cat="accessories">Accessories</button>
        <select id="sortSelect" aria-label="Sort products">
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

  <section class="section" id="deal">
    <div class="wrap">
      <div class="deal">
        <img class="deal-img" src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=80" alt="MacBook Air on a table">
        <div class="deal-content">
          <div class="eyebrow-note">Today's one deal</div>
          <h3>MacBook Air M2</h3>
          <p class="lead">Thin, light and quiet — the one to buy if you want a laptop that just works.</p>
          <div class="countdown" id="countdown">
            <div><span class="num" id="dealDays">0</span><span class="unit">days</span></div>
            <div><span class="num" id="dealHours">00</span><span class="unit">hours</span></div>
            <div><span class="num" id="dealMinutes">00</span><span class="unit">minutes</span></div>
            <div><span class="num" id="dealSeconds">00</span><span class="unit">seconds</span></div>
          </div>
          <div class="deal-price"><span class="price">$999</span><span class="old-price">$1,199</span></div>
          <p class="stock-note">12 left at this price.</p>
          <button class="btn btn-primary" id="buyDeal">Add to cart</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section" id="about">
    <div class="wrap">
      <div class="section-head"><div><h2>From people who've ordered</h2></div></div>
      <div class="testimonials">
        <div class="testimonial">
          <span class="quote-mark">&ldquo;</span>
          <p>Shipping was fast and support actually answered my email same-day. The product held up better than I expected.</p>
          <div class="who">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="">
            <div><div class="name">Ava Martin</div><div class="role">Verified buyer</div></div>
          </div>
        </div>
        <div class="testimonial">
          <span class="quote-mark">&ldquo;</span>
          <p>Good range without the endless scrolling most stores make you do. Checkout took under a minute.</p>
          <div class="who">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="">
            <div><div class="name">Michael Lee</div><div class="role">Repeat customer</div></div>
          </div>
        </div>
        <div class="testimonial">
          <span class="quote-mark">&ldquo;</span>
          <p>Prices are honest and the deal-of-the-day section has actually saved me money twice now.</p>
          <div class="who">
            <img src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&w=80&q=80" alt="">
            <div><div class="name">Priya Nair</div><div class="role">Verified buyer</div></div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="wrap">
      <div class="newsletter">
        <h3>Get one email a week.</h3>
        <p>New arrivals and real discounts. No spam, unsubscribe anytime.</p>
        <form id="newsletterForm">
          <input type="email" id="newsletterEmail" placeholder="you@example.com" aria-label="Email address" required>
          <button class="btn btn-primary" type="submit">Sign up</button>
        </form>
        <div class="form-msg" id="newsletterMsg" role="status"></div>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="wrap">
    <div class="footer-grid">
      <div class="footer-brand">
        <a class="logo" href="#top"><span class="mark"></span>Foundry</a>
        <p>A shop for things that last, run by people who use what they sell.</p>
      </div>
      <div class="footer-cols">
        <div class="footer-col">
          <h4>Shop</h4>
          <a href="#products">All products</a>
          <a href="#categories">Categories</a>
          <a href="#deal">Today's deal</a>
        </div>
        <div class="footer-col">
          <h4>Help</h4>
          <a href="#">Shipping & returns</a>
          <a href="#">Track an order</a>
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
      <span>© <span id="year"></span> Foundry. All rights reserved.</span>
      <span>Made for people who read the whole product page.</span>
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

  const CATEGORIES = [
    { id:'phones', name:'Phones', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=500&q=80' },
    { id:'laptops', name:'Laptops', img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=500&q=80' },
    { id:'clothing', name:'Clothing', img:'https://images.unsplash.com/photo-1520975954732-35dd22299614?auto=format&fit=crop&w=500&q=80' },
    { id:'gadgets', name:'Gadgets', img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=500&q=80' },
    { id:'footwear', name:'Footwear', img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=500&q=80' },
    { id:'accessories', name:'Accessories', img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=500&q=80' }
  ];

  const PRODUCTS = [
    { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, tag:'New', category:'phones', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80' },
    { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, category:'laptops', img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80' },
    { id:3, title:'Apple Watch Series 8', price:349, oldPrice:399, rating:5, reviews:214, tag:'-13%', sale:true, category:'accessories', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80' },
    { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, category:'footwear', img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80' },
    { id:5, title:'Sony A7 IV Camera', price:2499, rating:5, reviews:42, category:'gadgets', img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80' },
    { id:6, title:'Wool Overshirt', price:120, rating:5, reviews:189, category:'clothing', img:'https://images.unsplash.com/photo-1516826957135-700dedea698c?auto=format&fit=crop&w=600&q=80' },
    { id:7, title:'Canvas Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, tag:'-20%', sale:true, category:'accessories', img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80' },
    { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, category:'gadgets', img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80' }
  ];

  const state = { category:'all', query:'', sort:'popular', cart:{}, wishlist:new Set() };

  const $ = (sel, ctx=document) => ctx.querySelector(sel);
  const $$ = (sel, ctx=document) => Array.from(ctx.querySelectorAll(sel));
  const money = n => '$' + n.toLocaleString();
  const escapeHtml = s => String(s).replace(/[&<>"']/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));

  // ---------- Categories ----------
  function renderCategories(){
    const grid = $('#categoriesGrid');
    grid.innerHTML = CATEGORIES.map(c => `
      <button class="cat-card" data-cat="${c.id}" aria-label="Shop ${escapeHtml(c.name)}">
        <img src="${c.img}" alt="">
        <span class="label">${escapeHtml(c.name)}</span>
      </button>
    `).join('');
    $$('.cat-card', grid).forEach(btn => btn.addEventListener('click', () => {
      setCategory(btn.dataset.cat);
      document.getElementById('products').scrollIntoView({behavior:'smooth', block:'start'});
    }));
  }

  // ---------- Products ----------
  function getVisibleProducts(){
    let list = PRODUCTS.slice();
    if (state.category !== 'all') list = list.filter(p => p.category === state.category);
    if (state.query) {
      const q = state.query.toLowerCase();
      list = list.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
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
    $('#filterCount').textContent = list.length + (list.length===1 ? ' item' : ' items');

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

  // ---------- Cart drawer ----------
  function updateCartUI(){
    const ids = Object.keys(state.cart);
    const totalQty = ids.reduce((sum,id)=>sum+state.cart[id],0);
    $('#cartCount').textContent = totalQty;

    const itemsEl = $('#cartItems');
    if (!ids.length){
      itemsEl.innerHTML = `<div class="empty-state"><h3>Your cart is empty</h3><p>Add something you'll actually use.</p></div>`;
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

  // ---------- Search / filters ----------
  function applySearch(value){
    state.query = value;
    renderProducts();
  }

  // ---------- Mobile nav ----------
  function openMobileNav(){
    $('#mobileNav').classList.add('open');
    $('#menuToggle').setAttribute('aria-expanded','true');
  }
  function closeMobileNav(){
    $('#mobileNav').classList.remove('open');
    $('#menuToggle').setAttribute('aria-expanded','false');
  }

  // ---------- Countdown ----------
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

  // ---------- Events ----------
  function init(){
    renderCategories();
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
      changeQty(2, 1); // MacBook Pro id used as stand-in demo product for the deal
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
