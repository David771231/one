<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Nexus · 3D e‑commerce</title>
  <!-- Google Font & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: #f6faff;
      color: #0b1e2e;
      line-height: 1.5;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- GLASS NAVIGATION ----- */
    .navbar {
      background: rgba(255, 255, 255, 0.75);
      backdrop-filter: blur(14px) saturate(180%);
      -webkit-backdrop-filter: blur(14px) saturate(180%);
      border-bottom: 1px solid rgba(255, 255, 255, 0.3);
      position: sticky;
      top: 0;
      z-index: 60;
      padding: 12px 0;
    }

    .navbar .container {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 10px 16px;
    }

    .logo {
      font-weight: 700;
      font-size: 1.7rem;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .logo i {
      color: #2b6eff;
      font-size: 2rem;
      filter: drop-shadow(0 4px 8px rgba(43, 110, 255, 0.2));
    }

    .logo span {
      background: linear-gradient(145deg, #0b1e2e, #2b6eff);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 6px;
      list-style: none;
    }

    .nav-links a {
      text-decoration: none;
      color: #1a2f42;
      font-weight: 500;
      padding: 8px 16px;
      border-radius: 40px;
      font-size: 0.95rem;
      transition: all 0.2s;
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .nav-links a:hover,
    .nav-links a.active {
      background: rgba(43, 110, 255, 0.08);
      color: #2b6eff;
      box-shadow: 0 2px 8px rgba(43, 110, 255, 0.04);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .search-wrapper {
      display: flex;
      align-items: center;
      background: rgba(255, 255, 255, 0.6);
      backdrop-filter: blur(4px);
      border-radius: 60px;
      padding: 0 16px;
      border: 1px solid rgba(255, 255, 255, 0.6);
      transition: 0.25s;
    }

    .search-wrapper:focus-within {
      background: white;
      border-color: #2b6eff;
      box-shadow: 0 0 0 4px rgba(43, 110, 255, 0.12);
    }

    .search-wrapper i {
      color: #6d839b;
    }

    .search-wrapper input {
      border: none;
      background: transparent;
      padding: 10px 12px;
      font-size: 0.95rem;
      outline: none;
      width: 160px;
      color: #0b1e2e;
    }

    .search-wrapper input::placeholder {
      color: #9aafc4;
    }

    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.25rem;
      color: #1a2f42;
      cursor: pointer;
      padding: 8px 10px;
      border-radius: 40px;
      transition: 0.2s;
      position: relative;
    }

    .icon-btn:hover {
      background: rgba(43, 110, 255, 0.06);
      color: #2b6eff;
    }

    .cart-badge {
      background: #2b6eff;
      color: white;
      font-size: 0.6rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      position: absolute;
      top: -2px;
      right: -2px;
      box-shadow: 0 6px 12px rgba(43, 110, 255, 0.3);
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.7rem;
      color: #0b1e2e;
      cursor: pointer;
    }

    /* ----- HERO with 3D DEPTH ----- */
    .hero {
      padding: 40px 0 56px;
      background: radial-gradient(circle at 70% 30%, #e9f0ff 0%, #f6faff 80%);
      border-radius: 0 0 56px 56px;
    }

    .hero-content {
      display: flex;
      align-items: center;
      gap: 40px;
      flex-wrap: wrap;
    }

    .hero-text {
      flex: 1 1 340px;
    }

    .hero-text h1 {
      font-size: 3rem;
      font-weight: 700;
      letter-spacing: -0.03em;
      line-height: 1.15;
      margin-bottom: 16px;
    }

    .hero-text h1 i {
      color: #2b6eff;
      filter: drop-shadow(0 4px 12px rgba(43, 110, 255, 0.2));
    }

    .hero-text p {
      color: #3f586e;
      font-size: 1.1rem;
      max-width: 460px;
      margin-bottom: 28px;
    }

    .btn-group {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }

    .btn {
      border: none;
      padding: 14px 30px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      cursor: pointer;
      transition: all 0.25s;
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: white;
      color: #0b1e2e;
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.02);
    }

    .btn-primary {
      background: #0b1e2e;
      color: white;
      box-shadow: 0 12px 28px -8px rgba(11, 30, 46, 0.2);
    }

    .btn-primary:hover {
      background: #1a3044;
      transform: translateY(-3px);
      box-shadow: 0 20px 40px -10px rgba(11, 30, 46, 0.25);
    }

    .btn-outline {
      background: transparent;
      border: 1.5px solid rgba(43, 110, 255, 0.15);
    }

    .btn-outline:hover {
      border-color: #2b6eff;
      background: rgba(43, 110, 255, 0.04);
    }

    /* 3D IMAGE CARD */
    .hero-image {
      flex: 1 1 280px;
      display: flex;
      justify-content: center;
      perspective: 1000px;
    }

    .hero-image .card-3d {
      width: 100%;
      max-width: 380px;
      aspect-ratio: 1/1;
      border-radius: 40px;
      background: linear-gradient(145deg, #ffffff, #f0f6ff);
      box-shadow: 0 32px 64px -20px rgba(0, 20, 40, 0.25), 0 0 0 1px rgba(255, 255, 255, 0.6);
      transform: rotateY(-6deg) rotateX(4deg) scale(1);
      transition: transform 0.3s ease;
      display: flex;
      align-items: center;
      justify-content: center;
      overflow: hidden;
      padding: 20px;
    }

    .hero-image .card-3d:hover {
      transform: rotateY(-2deg) rotateX(2deg) scale(1.02);
    }

    .hero-image .card-3d img {
      width: 100%;
      height: 100%;
      object-fit: contain;
      filter: drop-shadow(0 20px 40px rgba(0, 0, 0, 0.1));
      transition: 0.3s;
    }

    /* ----- SECTIONS ----- */
    .section-title {
      font-size: 2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      margin-bottom: 4px;
    }
    .section-sub {
      color: #5d768d;
      margin-bottom: 28px;
    }
    .section {
      padding: 48px 0 32px;
    }

    /* CATEGORIES 3D CARDS */
    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 20px;
    }

    .category-card {
      background: white;
      padding: 24px 12px;
      border-radius: 32px;
      text-align: center;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.02);
      border: 1px solid #eaf0fa;
      transition: all 0.25s;
      cursor: pointer;
      transform: perspective(800px) rotateX(0) rotateY(0);
      backdrop-filter: blur(2px);
    }

    .category-card:hover {
      transform: perspective(800px) rotateX(2deg) rotateY(4deg) translateY(-6px);
      border-color: #2b6eff;
      box-shadow: 0 20px 40px -12px rgba(43, 110, 255, 0.15);
    }

    .category-card i {
      font-size: 2.4rem;
      color: #2b6eff;
      background: #eef4ff;
      padding: 14px;
      border-radius: 60px;
      margin-bottom: 12px;
      box-shadow: 0 8px 16px -8px rgba(43, 110, 255, 0.08);
    }
    .category-card h4 {
      font-weight: 600;
    }

    /* PRODUCTS with 3D IMAGE */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 28px;
    }

    .product-card {
      background: white;
      border-radius: 32px;
      overflow: hidden;
      transition: all 0.3s cubic-bezier(0.2, 0, 0, 1);
      border: 1px solid #eaf0fa;
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.02);
      transform: perspective(1000px) rotateX(0) rotateY(0);
      display: flex;
      flex-direction: column;
    }

    .product-card:hover {
      transform: perspective(1000px) rotateX(1.5deg) rotateY(3deg) translateY(-8px);
      border-color: #d6e3ff;
      box-shadow: 0 24px 48px -16px rgba(43, 110, 255, 0.12);
    }

    .product-img-wrapper {
      padding: 12px 12px 0;
      background: #f6faff;
      border-radius: 28px 28px 0 0;
    }

    .product-img {
      width: 100%;
      aspect-ratio: 1/1;
      object-fit: contain;
      border-radius: 24px;
      background: #ffffff;
      transition: 0.4s ease;
      filter: drop-shadow(0 12px 20px rgba(0, 0, 0, 0.04));
    }

    .product-card:hover .product-img {
      transform: scale(1.02) rotate(-1deg);
      filter: drop-shadow(0 20px 32px rgba(43, 110, 255, 0.08));
    }

    .product-body {
      padding: 16px 16px 8px;
      flex: 1;
    }

    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 2px;
    }

    .product-category {
      font-size: 0.75rem;
      color: #7a94ab;
      text-transform: uppercase;
      letter-spacing: 0.04em;
    }

    .product-price {
      display: flex;
      align-items: center;
      gap: 10px;
      margin: 8px 0 4px;
    }
    .price-current {
      font-weight: 700;
      font-size: 1.2rem;
    }
    .price-old {
      color: #94aec5;
      text-decoration: line-through;
      font-size: 0.85rem;
    }
    .product-rating {
      color: #f5b342;
      font-size: 0.85rem;
      letter-spacing: 2px;
    }

    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 10px;
      align-items: center;
    }

    .btn-add {
      flex: 1;
      background: #0b1e2e;
      color: white;
      border: none;
      padding: 12px 0;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.9rem;
      cursor: pointer;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }

    .btn-add:hover {
      background: #1a3044;
      transform: scale(0.97);
    }

    .btn-wish {
      background: transparent;
      border: 1px solid #e2ecf8;
      padding: 10px 14px;
      border-radius: 60px;
      cursor: pointer;
      transition: 0.2s;
    }

    .btn-wish:hover {
      background: #fef2f2;
      border-color: #f87171;
      color: #dc2626;
    }

    /* FLASH SALE 3D */
    .flash-sale {
      background: linear-gradient(145deg, #0b1e2e, #1a3a5a);
      border-radius: 48px;
      padding: 32px 36px;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 32px;
      box-shadow: 0 32px 64px -20px rgba(11, 30, 46, 0.3);
    }

    .sale-info h3 {
      font-size: 2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
    }
    .sale-info p {
      opacity: 0.7;
      margin: 4px 0 18px;
    }

    .timer-box {
      display: flex;
      gap: 12px;
    }
    .time-unit {
      background: rgba(255, 255, 255, 0.05);
      backdrop-filter: blur(6px);
      padding: 8px 14px;
      border-radius: 20px;
      text-align: center;
      min-width: 64px;
      border: 1px solid rgba(255, 255, 255, 0.04);
    }
    .time-unit .num {
      font-size: 1.8rem;
      font-weight: 700;
      line-height: 1;
    }
    .time-unit .label {
      font-size: 0.7rem;
      opacity: 0.5;
      letter-spacing: 0.04em;
    }

    .sale-product {
      display: flex;
      align-items: center;
      gap: 20px;
      flex: 1 1 220px;
      background: rgba(255, 255, 255, 0.03);
      border-radius: 40px;
      padding: 8px 16px 8px 8px;
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255, 255, 255, 0.02);
    }

    .sale-product img {
      width: 80px;
      height: 80px;
      border-radius: 28px;
      object-fit: cover;
      filter: drop-shadow(0 8px 16px rgba(0, 0, 0, 0.2));
    }

    .sale-product .info .name {
      font-weight: 600;
    }
    .sale-product .info .price {
      font-weight: 700;
      font-size: 1.2rem;
    }
    .sale-product .info .old {
      text-decoration: line-through;
      opacity: 0.4;
      font-size: 0.9rem;
      margin-left: 8px;
    }

    /* TESTIMONIALS */
    .testimonial-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
      gap: 24px;
    }
    .testimonial-card {
      background: white;
      padding: 24px;
      border-radius: 32px;
      border: 1px solid #eaf0fa;
      transition: 0.25s;
    }
    .testimonial-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 20px 32px -16px rgba(0, 0, 0, 0.04);
    }
    .testimonial-card .stars {
      color: #f5b342;
      margin-bottom: 4px;
    }
    .testimonial-card p {
      color: #1a2f42;
      margin: 8px 0 14px;
      font-size: 0.95rem;
    }
    .testimonial-card .user {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .user img {
      width: 44px;
      height: 44px;
      border-radius: 60px;
      object-fit: cover;
      filter: drop-shadow(0 4px 8px rgba(0, 0, 0, 0.02));
    }
    .testimonial-card .user .name {
      font-weight: 600;
      font-size: 0.9rem;
    }
    .testimonial-card .user .handle {
      color: #7a94ab;
      font-size: 0.8rem;
    }

    /* NEWSLETTER */
    .newsletter-section {
      background: #e9f0ff;
      border-radius: 48px;
      padding: 44px 32px;
      text-align: center;
      box-shadow: inset 0 2px 8px rgba(255, 255, 255, 0.8);
    }
    .newsletter-section h3 {
      font-size: 2rem;
      font-weight: 700;
    }
    .newsletter-section p {
      color: #3f586e;
      margin-bottom: 20px;
    }
    .newsletter-form {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 12px;
      max-width: 520px;
      margin: 0 auto;
    }
    .newsletter-form input {
      flex: 1;
      min-width: 200px;
      padding: 14px 24px;
      border-radius: 60px;
      border: none;
      outline: 2px solid transparent;
      background: white;
      font-size: 1rem;
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.02);
    }
    .newsletter-form input:focus {
      outline-color: #2b6eff;
    }

    /* FOOTER */
    .footer {
      margin-top: 40px;
      padding: 32px 0 24px;
      border-top: 1px solid #e2ecf8;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 24px;
    }
    .footer .brand {
      font-weight: 700;
      font-size: 1.2rem;
    }
    .footer-links {
      display: flex;
      gap: 40px;
    }
    .footer-links div {
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-links .title {
      font-weight: 600;
      font-size: 0.9rem;
    }
    .footer-links a {
      color: #5d768d;
      text-decoration: none;
      font-size: 0.9rem;
    }
    .footer-links a:hover {
      color: #0b1e2e;
    }
    .copy {
      width: 100%;
      text-align: center;
      color: #7a94ab;
      font-size: 0.85rem;
      margin-top: 16px;
    }

    /* responsive */
    @media (max-width: 820px) {
      .nav-links {
        display: none;
        flex-direction: column;
        background: rgba(255, 255, 255, 0.95);
        width: 100%;
        padding: 20px;
        border-radius: 32px;
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.02);
      }
      .nav-links.open {
        display: flex;
      }
      .mobile-toggle {
        display: block;
      }
      .hero-text h1 {
        font-size: 2.2rem;
      }
      .flash-sale {
        flex-direction: column;
        padding: 24px;
      }
      .sale-product {
        width: 100%;
      }
    }
    @media (max-width: 480px) {
      .header-actions .icon-btn:not(.cart-btn) {
        display: none;
      }
      .product-grid {
        grid-template-columns: 1fr 1fr;
        gap: 16px;
      }
      .hero-text h1 {
        font-size: 1.8rem;
      }
    }
  </style>
</head>
<body>

<!-- NAV -->
<header class="navbar">
  <div class="container">
    <div class="logo">
      <i class="fas fa-cube"></i>
      <span>nexus</span>
    </div>
    <ul class="nav-links" id="navLinks">
      <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
      <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
      <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
      <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
    </ul>
    <div class="header-actions">
      <div class="search-wrapper">
        <em class="fas fa-search"></em>
        <input type="text" id="searchInput" placeholder="Search..." />
      </div>
      <button class="icon-btn"><i class="far fa-heart"></i></button>
      <button class="icon-btn cart-btn" id="cartBtn">
        <i class="fas fa-shopping-bag"></i>
        <span class="cart-badge" id="cartCount">0</span>
      </button>
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
    </div>
  </div>
</header>

<!-- HERO with 3D image -->
<section class="hero">
  <div class="container hero-content">
    <div class="hero-text">
      <h1>Step into <i>3D</i> style</h1>
      <p>Premium picks, immersive experience — new drops every week.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-arrow-right"></i> Explore</button>
        <button class="btn btn-outline" id="exploreDealsBtn"><i class="fas fa-clock"></i> Flash sale</button>
      </div>
    </div>
    <div class="hero-image">
      <div class="card-3d">
        <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=600&q=80" alt="3D hero" />
      </div>
    </div>
  </div>
</section>

<!-- CATEGORIES -->
<section class="section" id="categories">
  <div class="container">
    <h2 class="section-title">Browse in 3D</h2>
    <p class="section-sub">Categories that pop.</p>
    <div class="category-grid" id="categoryGrid"></div>
  </div>
</section>

<!-- PRODUCTS -->
<section class="section" id="products">
  <div class="container">
    <h2 class="section-title">Trending 3D picks</h2>
    <p class="section-sub">Products with depth.</p>
    <div class="product-grid" id="productGrid"></div>
  </div>
</section>

<!-- DEAL -->
<section class="section" id="deals">
  <div class="container">
    <div class="flash-sale">
      <div class="sale-info">
        <h3><i class="fas fa-bolt" style="color:#facc15;"></i> Flash 3D</h3>
        <p>Limited time — grab it.</p>
        <div class="timer-box" id="timerBox">
          <div class="time-unit"><span class="num" id="dealDays">0</span><div class="label">Days</div></div>
          <div class="time-unit"><span class="num" id="dealHours">00</span><div class="label">Hrs</div></div>
          <div class="time-unit"><span class="num" id="dealMinutes">00</span><div class="label">Min</div></div>
          <div class="time-unit"><span class="num" id="dealSeconds">00</span><div class="label">Sec</div></div>
        </div>
      </div>
      <div class="sale-product">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=200&q=80" alt="MacBook" />
        <div class="info">
          <div class="name">MacBook Air M2</div>
          <div><span class="price">$999</span><span class="old">$1,199</span></div>
          <button class="btn btn-primary" style="margin-top:8px;padding:6px 18px;background:#2b6eff;" id="buyDealBtn"><i class="fas fa-cart-plus"></i> Add</button>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- TESTIMONIALS -->
<section class="section">
  <div class="container">
    <h2 class="section-title">Real voices</h2>
    <p class="section-sub">Loved by our community.</p>
    <div class="testimonial-grid" id="testimonialGrid"></div>
  </div>
</section>

<!-- NEWSLETTER -->
<section class="section">
  <div class="container">
    <div class="newsletter-section">
      <h3>3D updates</h3>
      <p>Get the latest drops and deals.</p>
      <form class="newsletter-form" id="newsletterForm">
        <input type="email" placeholder="Your email" id="newsletterEmail" required />
        <button class="btn btn-primary" type="submit"><i class="fas fa-paper-plane"></i> Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:12px;font-weight:500;display:none;"></div>
    </div>
  </div>
</section>

<!-- FOOTER -->
<footer class="container footer">
  <div>
    <div class="brand"><i class="fas fa-cube" style="color:#2b6eff;"></i> nexus</div>
    <div style="color:#5d768d;font-size:0.9rem;">3D commerce, reimagined.</div>
    <div style="display:flex;gap:12px;margin-top:12px;">
      <a href="#"><i class="fab fa-twitter" style="color:#5d768d;"></i></a>
      <a href="#"><i class="fab fa-instagram" style="color:#5d768d;"></i></a>
      <a href="#"><i class="fab fa-youtube" style="color:#5d768d;"></i></a>
    </div>
  </div>
  <div class="footer-links">
    <div><span class="title">Company</span><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
    <div><span class="title">Support</span><a href="#">Help</a><a href="#">Returns</a><a href="#">Contact</a></div>
  </div>
  <div class="copy">© <span id="year"></span> nexus — all rights reserved.</div>
</footer>

<script>
  (function() {
    // ---------- DATA ----------
    const categories = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const products = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'Smartphones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, oldPrice: null, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'Laptops' },
      { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'Accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, oldPrice: null, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'Footwear' },
      { id: 5, title: 'Sony A7 IV', price: 2499, oldPrice: null, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'Gadgets' },
      { id: 6, title: 'Chanel No. 5', price: 120, oldPrice: null, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'Accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'Accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, oldPrice: null, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'Gadgets' }
    ];

    const testimonials = [
      { name: 'Ava Martin', handle: '@avamartin', text: 'Fast shipping, excellent support. The product exceeded my expectations!', img: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80' },
      { name: 'Michael Lee', handle: '@michaellee', text: 'Great selection and smooth checkout. Will shop again.', img: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?
