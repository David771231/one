<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Nexus · modern commerce</title>
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
      background: #fafcfd;
      color: #0a1e2f;
      line-height: 1.5;
    }

    /* smooth containers */
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* --- header / navigation --- */
    .navbar {
      background: rgba(255, 255, 255, 0.9);
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.03);
      position: sticky;
      top: 0;
      z-index: 50;
      padding: 14px 0;
    }

    .navbar .container {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px 18px;
    }

    .logo {
      font-weight: 700;
      font-size: 1.6rem;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .logo i {
      color: #2d7aff;
      font-size: 1.8rem;
    }

    .logo span {
      background: linear-gradient(135deg, #0a1e2f, #2d7aff);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 8px;
      list-style: none;
    }

    .nav-links a {
      text-decoration: none;
      color: #1e2f3f;
      font-weight: 500;
      padding: 8px 14px;
      border-radius: 40px;
      font-size: 0.95rem;
      transition: all 0.2s;
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .nav-links a:hover,
    .nav-links a.active {
      background: #eef4ff;
      color: #2d7aff;
    }

    .nav-links a i {
      font-size: 1rem;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .search-wrapper {
      position: relative;
      display: flex;
      align-items: center;
      background: #f2f6fc;
      border-radius: 40px;
      padding: 0 16px;
      transition: 0.2s;
      border: 1px solid transparent;
    }

    .search-wrapper:focus-within {
      background: #ffffff;
      border-color: #2d7aff;
      box-shadow: 0 0 0 4px rgba(45, 122, 255, 0.12);
    }

    .search-wrapper i {
      color: #7a8b9f;
      font-size: 1rem;
    }

    .search-wrapper input {
      border: none;
      background: transparent;
      padding: 10px 12px;
      font-size: 0.95rem;
      outline: none;
      width: 180px;
      color: #0a1e2f;
    }

    .search-wrapper input::placeholder {
      color: #9aabbc;
    }

    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.25rem;
      color: #1e2f3f;
      cursor: pointer;
      padding: 6px 8px;
      border-radius: 30px;
      transition: 0.2s;
      position: relative;
    }

    .icon-btn:hover {
      background: #eef4ff;
      color: #2d7aff;
    }

    .cart-badge {
      background: #2d7aff;
      color: white;
      font-size: 0.65rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      position: absolute;
      top: -4px;
      right: -6px;
      box-shadow: 0 4px 8px rgba(45, 122, 255, 0.3);
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.8rem;
      color: #0a1e2f;
      cursor: pointer;
    }

    /* --- hero --- */
    .hero {
      padding: 48px 0 56px;
      background: linear-gradient(145deg, #f0f7ff 0%, #ffffff 100%);
      border-radius: 0 0 48px 48px;
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
      font-size: 2.8rem;
      font-weight: 700;
      letter-spacing: -0.03em;
      line-height: 1.2;
      margin-bottom: 16px;
    }

    .hero-text h1 i {
      color: #2d7aff;
    }

    .hero-text p {
      color: #3f5368;
      font-size: 1.1rem;
      max-width: 480px;
      margin-bottom: 28px;
    }

    .btn-group {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }

    .btn {
      border: none;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      cursor: pointer;
      transition: all 0.25s;
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: white;
      color: #0a1e2f;
      box-shadow: 0 2px 8px rgba(0, 0, 0, 0.02);
    }

    .btn-primary {
      background: #0a1e2f;
      color: white;
      box-shadow: 0 8px 20px rgba(10, 30, 47, 0.12);
    }

    .btn-primary:hover {
      background: #1a2e3f;
      transform: translateY(-2px);
      box-shadow: 0 12px 28px rgba(10, 30, 47, 0.2);
    }

    .btn-outline {
      background: transparent;
      border: 1.5px solid #d0ddee;
    }

    .btn-outline:hover {
      border-color: #2d7aff;
      background: rgba(45, 122, 255, 0.04);
    }

    .hero-image {
      flex: 1 1 300px;
      display: flex;
      justify-content: center;
    }

    .hero-image img {
      width: 100%;
      max-width: 400px;
      border-radius: 32px;
      box-shadow: 0 32px 64px -20px rgba(0, 20, 40, 0.2);
    }

    /* --- section titles --- */
    .section-title {
      font-size: 1.8rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      margin-bottom: 6px;
    }

    .section-sub {
      color: #5d7184;
      margin-bottom: 28px;
    }

    .section {
      padding: 48px 0 32px;
    }

    /* categories */
    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 18px;
    }

    .category-card {
      background: white;
      padding: 24px 12px;
      border-radius: 28px;
      text-align: center;
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.02);
      border: 1px solid #edf2f9;
      transition: all 0.25s;
      cursor: pointer;
    }

    .category-card:hover {
      transform: translateY(-6px);
      border-color: #2d7aff;
      box-shadow: 0 12px 28px -8px rgba(45, 122, 255, 0.12);
    }

    .category-card i {
      font-size: 2.2rem;
      color: #2d7aff;
      background: #eef4ff;
      padding: 12px;
      border-radius: 60px;
      margin-bottom: 10px;
    }

    .category-card h4 {
      font-weight: 600;
      font-size: 1rem;
    }

    /* products */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
      gap: 24px;
    }

    .product-card {
      background: white;
      border-radius: 28px;
      overflow: hidden;
      transition: all 0.25s;
      border: 1px solid #edf2f9;
      display: flex;
      flex-direction: column;
    }

    .product-card:hover {
      transform: translateY(-6px);
      border-color: #dbe6f5;
      box-shadow: 0 20px 40px -12px rgba(0, 0, 0, 0.06);
    }

    .product-img {
      width: 100%;
      height: 210px;
      object-fit: cover;
      background: #f5f9ff;
    }

    .product-body {
      padding: 16px 16px 12px;
      flex: 1;
    }

    .product-body h5 {
      font-weight: 600;
      font-size: 1.05rem;
      margin-bottom: 4px;
    }

    .product-category {
      font-size: 0.8rem;
      color: #7a8b9f;
      text-transform: uppercase;
      letter-spacing: 0.03em;
    }

    .product-price {
      display: flex;
      align-items: center;
      gap: 10px;
      margin: 8px 0 4px;
    }

    .price-current {
      font-weight: 700;
      font-size: 1.25rem;
    }

    .price-old {
      color: #8f9fb2;
      text-decoration: line-through;
      font-size: 0.9rem;
    }

    .product-rating {
      color: #f5b342;
      font-size: 0.9rem;
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
      background: #0a1e2f;
      color: white;
      border: none;
      padding: 10px 0;
      border-radius: 40px;
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
      background: #1a2e3f;
    }

    .btn-wish {
      background: transparent;
      border: 1px solid #e2eaf5;
      padding: 10px 14px;
      border-radius: 40px;
      cursor: pointer;
      transition: 0.2s;
    }

    .btn-wish:hover {
      background: #fef2f2;
      border-color: #f87171;
      color: #dc2626;
    }

    /* flash sale */
    .flash-sale {
      background: linear-gradient(135deg, #0a1e2f 0%, #1b3a5c 100%);
      border-radius: 40px;
      padding: 32px 40px;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 30px;
    }

    .flash-sale .sale-info {
      flex: 1 1 220px;
    }

    .flash-sale .sale-info h3 {
      font-size: 2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
    }

    .flash-sale .sale-info p {
      opacity: 0.7;
      margin: 8px 0 16px;
    }

    .timer-box {
      display: flex;
      gap: 12px;
    }

    .time-unit {
      background: rgba(255, 255, 255, 0.06);
      backdrop-filter: blur(4px);
      padding: 10px 16px;
      border-radius: 20px;
      text-align: center;
      min-width: 68px;
      border: 1px solid rgba(255, 255, 255, 0.05);
    }

    .time-unit .num {
      font-size: 2rem;
      font-weight: 700;
      line-height: 1;
    }

    .time-unit .label {
      font-size: 0.7rem;
      opacity: 0.6;
      letter-spacing: 0.06em;
    }

    .sale-product {
      display: flex;
      align-items: center;
      gap: 20px;
      flex: 1 1 240px;
      background: rgba(255, 255, 255, 0.04);
      border-radius: 32px;
      padding: 8px 16px 8px 8px;
      backdrop-filter: blur(4px);
    }

    .sale-product img {
      width: 80px;
      height: 80px;
      border-radius: 24px;
      object-fit: cover;
    }

    .sale-product .info {
      flex: 1;
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

    /* testimonials */
    .testimonial-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
      gap: 24px;
    }

    .testimonial-card {
      background: white;
      padding: 24px;
      border-radius: 32px;
      border: 1px solid #edf2f9;
    }

    .testimonial-card .stars {
      color: #f5b342;
      margin-bottom: 6px;
    }

    .testimonial-card p {
      font-size: 0.95rem;
      color: #1e2f3f;
      margin: 8px 0 12px;
    }

    .testimonial-card .user {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .testimonial-card .user img {
      width: 40px;
      height: 40px;
      border-radius: 60px;
      object-fit: cover;
    }

    .testimonial-card .user .name {
      font-weight: 600;
      font-size: 0.9rem;
    }

    .testimonial-card .user .handle {
      color: #7a8b9f;
      font-size: 0.8rem;
    }

    /* newsletter */
    .newsletter-section {
      background: #f0f7ff;
      border-radius: 40px;
      padding: 40px 32px;
      text-align: center;
    }

    .newsletter-section h3 {
      font-size: 1.8rem;
      font-weight: 700;
      margin-bottom: 6px;
    }

    .newsletter-section p {
      color: #3f5368;
      margin-bottom: 20px;
    }

    .newsletter-form {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 12px;
      max-width: 500px;
      margin: 0 auto;
    }

    .newsletter-form input {
      flex: 1;
      min-width: 200px;
      padding: 14px 20px;
      border-radius: 60px;
      border: none;
      outline: 2px solid transparent;
      background: white;
      font-size: 1rem;
      box-shadow: 0 2px 12px rgba(0, 0, 0, 0.02);
    }

    .newsletter-form input:focus {
      outline-color: #2d7aff;
    }

    .newsletter-form .btn {
      background: #0a1e2f;
      color: white;
    }

    /* footer */
    .footer {
      margin-top: 40px;
      padding: 32px 0 24px;
      border-top: 1px solid #e7edf6;
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
      color: #5d7184;
      text-decoration: none;
      font-size: 0.9rem;
    }

    .footer-links a:hover {
      color: #0a1e2f;
    }

    .copy {
      width: 100%;
      text-align: center;
      color: #7a8b9f;
      font-size: 0.85rem;
      margin-top: 16px;
    }

    /* mobile */
    @media (max-width: 820px) {
      .nav-links {
        display: none;
        flex-direction: column;
        background: white;
        width: 100%;
        padding: 20px 0;
        border-radius: 24px;
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.02);
      }

      .nav-links.open {
        display: flex;
      }

      .mobile-toggle {
        display: block;
      }

      .search-wrapper input {
        width: 120px;
      }

      .hero-text h1 {
        font-size: 2.2rem;
      }

      .flash-sale {
        flex-direction: column;
        align-items: stretch;
        padding: 24px;
      }

      .sale-product {
        flex-wrap: wrap;
      }
    }

    @media (max-width: 480px) {
      .header-actions .icon-btn:not(.cart-btn) {
        display: none;
      }

      .hero-text h1 {
        font-size: 1.8rem;
      }

      .product-grid {
        grid-template-columns: 1fr 1fr;
        gap: 14px;
      }
    }
  </style>
</head>
<body>

<!-- NAVIGATION -->
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
      <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
    </ul>

    <div class="header-actions">
      <div class="search-wrapper">
        <i class="fas fa-search"></i>
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

<main>
  <!-- HERO -->
  <section class="hero">
    <div class="container hero-content">
      <div class="hero-text">
        <h1>New <i>arrivals</i> <br />for your <span style="color:#2d7aff;">modern</span> life</h1>
        <p>Discover curated style, tech, and essentials — with free delivery on your first order.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn btn-outline" id="exploreDealsBtn"><i class="fas fa-clock"></i> Flash deals</button>
        </div>
      </div>
      <div class="hero-image">
        <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=600&q=80" alt="hero" />
      </div>
    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories">
    <div class="container">
      <h2 class="section-title">Shop by category</h2>
      <p class="section-sub">Find exactly what you need, fast.</p>
      <div class="category-grid" id="categoryGrid"></div>
    </div>
  </section>

  <!-- PRODUCTS -->
  <section class="section" id="products">
    <div class="container">
      <h2 class="section-title">Trending now</h2>
      <p class="section-sub">Popular picks based on recent activity.</p>
      <div class="product-grid" id="productGrid"></div>
    </div>
  </section>

  <!-- DEAL / FLASH SALE -->
  <section class="section" id="deals">
    <div class="container">
      <div class="flash-sale">
        <div class="sale-info">
          <h3><i class="fas fa-bolt" style="color:#facc15;"></i> Flash sale</h3>
          <p>Limited-time offers, don't miss out.</p>
          <div class="timer-box" id="timerBox">
            <div class="time-unit"><span class="num" id="dealDays">0</span><div class="label">Days</div></div>
            <div class="time-unit"><span class="num" id="dealHours">00</span><div class="label">Hours</div></div>
            <div class="time-unit"><span class="num" id="dealMinutes">00</span><div class="label">Min</div></div>
            <div class="time-unit"><span class="num" id="dealSeconds">00</span><div class="label">Sec</div></div>
          </div>
        </div>
        <div class="sale-product">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=200&q=80" alt="MacBook Air" />
          <div class="info">
            <div class="name">MacBook Air M2</div>
            <div><span class="price">$999</span><span class="old">$1,199</span></div>
            <button class="btn btn-primary" style="margin-top:8px;padding:6px 18px;background:#2d7aff;" id="buyDealBtn"><i class="fas fa-cart-plus"></i> Add</button>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section class="section">
    <div class="container">
      <h2 class="section-title">Trusted by shoppers</h2>
      <p class="section-sub">What our community says.</p>
      <div class="testimonial-grid" id="testimonialGrid">
        <!-- injected -->
      </div>
    </div>
  </section>

  <!-- NEWSLETTER -->
  <section class="section">
    <div class="container">
      <div class="newsletter-section">
        <h3>Never miss a drop</h3>
        <p>Subscribe for exclusive access and early deals.</p>
        <form class="newsletter-form" id="newsletterForm">
          <input type="email" placeholder="Your email" id="newsletterEmail" required />
          <button class="btn" type="submit"><i class="fas fa-paper-plane"></i> Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:12px;font-weight:500;display:none;"></div>
      </div>
    </div>
  </section>
</main>

<!-- FOOTER -->
<footer class="container footer">
  <div>
    <div class="brand"><i class="fas fa-cube" style="color:#2d7aff;"></i> nexus</div>
    <div style="color:#5d7184;font-size:0.9rem;margin-top:8px;">Modern commerce, simplified.</div>
    <div style="display:flex;gap:12px;margin-top:12px;">
      <a href="#"><i class="fab fa-twitter" style="color:#5d7184;"></i></a>
      <a href="#"><i class="fab fa-instagram" style="color:#5d7184;"></i></a>
      <a href="#"><i class="fab fa-youtube" style="color:#5d7184;"></i></a>
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
      { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'Accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, oldPrice: null, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'Footwear' },
      { id: 5, title: 'Sony A7 IV Camera', price: 2499, oldPrice: null, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'Gadgets' },
      { id: 6, title: 'Chanel No. 5', price: 120, oldPrice: null, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'Accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'Accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, oldPrice: null, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'Gadgets' }
    ];

    // ---------- RENDER ----------
    const categoryGrid = document.getElementById('categoryGrid');
    const productGrid = document.getElementById('productGrid');
    const cartCountEl = document.getElementById('cartCount');
    let cartCount = 0;

    function renderCategories() {
      categoryGrid.innerHTML = categories.map(c => `
        <div class="category-card" data-cat="${c.name}">
          <i class="fas ${c.icon}"></i>
          <h4>${c.name}</h4>
        </div>
      `).join('');
      // click filter
      categoryGrid.querySelectorAll('.category-card').forEach(el => {
        el.addEventListener('click', function() {
          const catName = this.dataset.cat;
          const searchInput = document.getElementById('searchInput');
          searchInput.value = catName;
          filterProducts(catName);
        });
      });
    }

    function renderProducts(list) {
      productGrid.innerHTML = list.map(p => {
        const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        return `
          <div class="product-card">
            <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy" />
            <div class="product-body">
              <h5>${p.title}</h5>
              <div class="product-category">${p.category}</div>
              <div class="product-price">
                <span class="price-current">$${p.price.toLocaleString()}</span>
                ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
              </div>
              <div class="product-rating">${stars} <span style="color:#7a8b9f;font-size:0.75rem;">(${p.reviews})</span></div>
            </div>
            <div class="product-footer">
              <button class="btn-add" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
              <button class="btn-wish"><i class="far fa-heart"></i></button>
            </div>
          </div>
        `;
      }).join('');

      // add to cart
      productGrid.querySelectorAll('.btn-add').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          const id = Number(this.dataset.id);
          addToCart(id);
        });
      });
    }

    function addToCart(id) {
      const product = products.find(p => p.id === id);
      if (!product) return;
      cartCount++;
      cartCountEl.textContent = cartCount;
      // feedback
      const btn = productGrid.querySelector(`.btn-add[data-id="${id}"]`);
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = '<i class="fas fa-check"></i> Added';
        btn.style.background = '#2d7aff';
        setTimeout(() => {
          btn.innerHTML = orig;
          btn.style.background = '';
        }, 1200);
      }
    }

    function filterProducts(query) {
      const q = query.trim().toLowerCase();
      if (!q) {
        renderProducts(products);
        return;
      }
      const filtered = products.filter(p =>
        p.title.toLowerCase().includes(q) ||
        p.category.toLowerCase().includes(q)
      );
      renderProducts(filtered);
    }

    // ---------- SEARCH ----------
    const searchInput = document.getElementById('searchInput');
    searchInput.addEventListener('input', (e) => filterProducts(e.target.value));
    searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

    // ---------- DEAL TIMER ----------
    function startTimer() {
      const now = Date.now();
      const target = now + (25 * 3600 * 
