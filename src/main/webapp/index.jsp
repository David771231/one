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

    /* ----- GLASS NAVIGATION (multi-color accents) ----- */
    .navbar {
      background: rgba(255, 255, 255, 0.8);
      backdrop-filter: blur(14px) saturate(180%);
      -webkit-backdrop-filter: blur(14px) saturate(180%);
      border-bottom: 1px solid rgba(255, 255, 255, 0.5);
      position: sticky;
      top: 0;
      z-index: 60;
      padding: 12px 0;
      box-shadow: 0 4px 20px rgba(43, 110, 255, 0.08);
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
      filter: drop-shadow(0 4px 8px rgba(43, 110, 255, 0.25));
    }

    .logo span {
      background: linear-gradient(145deg, #0b1e2e, #2b6eff, #a855f7);
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
      background: rgba(43, 110, 255, 0.1);
      color: #2b6eff;
      box-shadow: 0 2px 8px rgba(43, 110, 255, 0.08);
    }

    /* multi-color nav icons on hover */
    .nav-links a:hover i {
      color: #a855f7;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .search-wrapper {
      display: flex;
      align-items: center;
      background: rgba(255, 255, 255, 0.7);
      backdrop-filter: blur(4px);
      border-radius: 60px;
      padding: 0 16px;
      border: 1px solid rgba(255, 255, 255, 0.8);
      transition: 0.25s;
    }

    .search-wrapper:focus-within {
      background: white;
      border-color: #2b6eff;
      box-shadow: 0 0 0 4px rgba(43, 110, 255, 0.15);
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
      background: rgba(168, 85, 247, 0.08);
      color: #a855f7;
    }

    .cart-badge {
      background: linear-gradient(145deg, #2b6eff, #a855f7);
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

    /* ----- HERO (multi-color gradient + 3D) ----- */
    .hero {
      padding: 40px 0 56px;
      background: radial-gradient(circle at 70% 30%, #e9f0ff 0%, #f6faff 80%);
      border-radius: 0 0 56px 56px;
      position: relative;
      overflow: hidden;
    }

    .hero::before {
      content: '';
      position: absolute;
      top: -30%;
      right: -10%;
      width: 400px;
      height: 400px;
      background: radial-gradient(circle, rgba(168, 85, 247, 0.12) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }

    .hero::after {
      content: '';
      position: absolute;
      bottom: -20%;
      left: -5%;
      width: 300px;
      height: 300px;
      background: radial-gradient(circle, rgba(43, 110, 255, 0.08) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }

    .hero-content {
      display: flex;
      align-items: center;
      gap: 40px;
      flex-wrap: wrap;
      position: relative;
      z-index: 1;
    }

    .hero-text {
      flex: 1 1 340px;
    }

    .hero-text h1 {
      font-size: 3.2rem;
      font-weight: 700;
      letter-spacing: -0.03em;
      line-height: 1.15;
      margin-bottom: 16px;
    }

    .hero-text h1 i {
      background: linear-gradient(145deg, #2b6eff, #a855f7, #ec4899);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      filter: drop-shadow(0 4px 12px rgba(168, 85, 247, 0.25));
      font-style: normal;
      font-weight: 800;
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
      background: linear-gradient(145deg, #0b1e2e, #1e3a5f);
      color: white;
      box-shadow: 0 12px 28px -8px rgba(43, 110, 255, 0.3);
    }

    .btn-primary:hover {
      background: linear-gradient(145deg, #1a3044, #2b6eff);
      transform: translateY(-3px);
      box-shadow: 0 20px 40px -10px rgba(43, 110, 255, 0.4);
    }

    .btn-outline {
      background: transparent;
      border: 1.5px solid rgba(168, 85, 247, 0.25);
      color: #a855f7;
    }

    .btn-outline:hover {
      border-color: #a855f7;
      background: rgba(168, 85, 247, 0.06);
      transform: translateY(-2px);
    }

    /* 3D IMAGE CARD with multi-color glow */
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
      box-shadow: 0 32px 64px -20px rgba(43, 110, 255, 0.25), 
                  0 0 0 1px rgba(255, 255, 255, 0.8),
                  0 0 40px rgba(168, 85, 247, 0.08);
      transform: rotateY(-6deg) rotateX(4deg) scale(1);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      display: flex;
      align-items: center;
      justify-content: center;
      overflow: hidden;
      padding: 20px;
    }

    .hero-image .card-3d:hover {
      transform: rotateY(-2deg) rotateX(2deg) scale(1.03);
      box-shadow: 0 40px 80px -24px rgba(168, 85, 247, 0.3), 
                  0 0 0 1px rgba(255, 255, 255, 0.9),
                  0 0 60px rgba(43, 110, 255, 0.15);
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
    .section-title i {
      background: linear-gradient(145deg, #2b6eff, #a855f7);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      margin-right: 6px;
    }
    .section-sub {
      color: #5d768d;
      margin-bottom: 28px;
    }
    .section {
      padding: 48px 0 32px;
    }

    /* CATEGORIES 3D CARDS — multi-color */
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
      position: relative;
      overflow: hidden;
    }

    .category-card::after {
      content: '';
      position: absolute;
      inset: 0;
      border-radius: 32px;
      padding: 1.5px;
      background: linear-gradient(145deg, #2b6eff, #a855f7, #ec4899);
      -webkit-mask: linear-gradient(#fff 0 0) content-box, linear-gradient(#fff 0 0);
      -webkit-mask-composite: xor;
      mask-composite: exclude;
      opacity: 0;
      transition: opacity 0.3s;
      pointer-events: none;
    }

    .category-card:hover::after {
      opacity: 1;
    }

    .category-card:hover {
      transform: perspective(800px) rotateX(2deg) rotateY(4deg) translateY(-6px);
      border-color: transparent;
      box-shadow: 0 20px 40px -12px rgba(168, 85, 247, 0.2);
    }

    .category-card i {
      font-size: 2.4rem;
      background: linear-gradient(145deg, #2b6eff, #a855f7);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      padding: 14px;
      border-radius: 60px;
      margin-bottom: 12px;
      box-shadow: 0 8px 16px -8px rgba(43, 110, 255, 0.15);
      display: inline-block;
    }

    .category-card h4 {
      font-weight: 600;
    }

    /* PRODUCTS with 3D IMAGE and colorful accents */
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
      position: relative;
    }

    .product-card::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      height: 4px;
      background: linear-gradient(90deg, #2b6eff, #a855f7, #ec4899, #f59e0b);
      opacity: 0;
      transition: opacity 0.3s;
      z-index: 2;
    }

    .product-card:hover::before {
      opacity: 1;
    }

    .product-card:hover {
      transform: perspective(1000px) rotateX(1.5deg) rotateY(3deg) translateY(-8px);
      border-color: #d6e3ff;
      box-shadow: 0 24px 48px -16px rgba(168, 85, 247, 0.15);
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
      filter: drop-shadow(0 20px 32px rgba(168, 85, 247, 0.12));
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
      background: linear-gradient(145deg, #0b1e2e, #1e3a5f);
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
      background: linear-gradient(145deg, #1a3044, #2b6eff);
      transform: scale(0.97);
      box-shadow: 0 8px 20px rgba(43, 110, 255, 0.25);
    }

    .btn-wish {
      background: transparent;
      border: 1px solid #e2ecf8;
      padding: 10px 14px;
      border-radius: 60px;
      cursor: pointer;
      transition: 0.2s;
      color: #6d839b;
    }

    .btn-wish:hover {
      background: #fdf2f8;
      border-color: #ec4899;
      color: #ec4899;
      transform: scale(1.05);
    }

    /* FLASH SALE 3D — multi-color gradient */
    .flash-sale {
      background: linear-gradient(145deg, #0b1e2e, #1a3a5a, #2b1e4a);
      border-radius: 48px;
      padding: 32px 36px;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 32px;
      box-shadow: 0 32px 64px -20px rgba(11, 30, 46, 0.4);
      position: relative;
      overflow: hidden;
    }

    .flash-sale::before {
      content: '';
      position: absolute;
      top: -50%;
      right: -10%;
      width: 300px;
      height: 300px;
      background: radial-gradient(circle, rgba(168, 85, 247, 0.2) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }

    .flash-sale::after {
      content: '';
      position: absolute;
      bottom: -40%;
      left: -5%;
      width: 250px;
      height: 250px;
      background: radial-gradient(circle, rgba(43, 110, 255, 0.15) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }

    .sale-info {
      position: relative;
      z-index: 1;
    }

    .sale-info h3 {
      font-size: 2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
    }
    .sale-info h3 i {
      color: #facc15;
    }
    .sale-info p {
      opacity: 0.8;
      margin: 4px 0 18px;
    }

    .timer-box {
      display: flex;
      gap: 12px;
    }
    .time-unit {
      background: rgba(255, 255, 255, 0.06);
      backdrop-filter: blur(6px);
      padding: 8px 14px;
      border-radius: 20px;
      text-align: center;
      min-width: 64px;
      border: 1px solid rgba(255, 255, 255, 0.08);
      transition: 0.2s;
    }
    .time-unit:hover {
      background: rgba(255, 255, 255, 0.1);
      border-color: rgba(168, 85, 247, 0.3);
    }
    .time-unit .num {
      font-size: 1.8rem;
      font-weight: 700;
      line-height: 1;
      background: linear-gradient(145deg, #ffffff, #c4b5fd);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .time-unit .label {
      font-size: 0.7rem;
      opacity: 0.6;
      letter-spacing: 0.04em;
    }

    .sale-product {
      display: flex;
      align-items: center;
      gap: 20px;
      flex: 1 1 220px;
      background: rgba(255, 255, 255, 0.04);
      border-radius: 40px;
      padding: 8px 16px 8px 8px;
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255, 255, 255, 0.06);
      position: relative;
      z-index: 1;
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
      opacity: 0.5;
      font-size: 0.9rem;
      margin-left: 8px;
    }

    .sale-product .btn-primary {
      background: linear-gradient(145deg, #2b6eff, #a855f7);
      box-shadow: 0 8px 20px rgba(43, 110, 255, 0.3);
    }

    .sale-product .btn-primary:hover {
      background: linear-gradient(145deg, #a855f7, #ec4899);
      transform: translateY(-2px) scale(1.02);
      box-shadow: 0 12px 28px rgba(168, 85, 247, 0.4);
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
      position: relative;
    }
    .testimonial-card::before {
      content: '"';
      position: absolute;
      top: 8px;
      right: 20px;
      font-size: 4rem;
      line-height: 1;
      color: rgba(168, 85, 247, 0.08);
      font-family: serif;
    }
    .testimonial-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 20px 32px -16px rgba(168, 85, 247, 0.12);
      border-color: #e9d5ff;
    }
    .testimonial-card .stars {
      color: #f5b342;
      margin-bottom: 4px;
    }
    .testimonial-card p {
      color: #1a2f42;
      margin: 8px 0 14px;
      font-size: 0.95rem;
      position: relative;
      z-index: 1;
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
      border: 2px solid #e9d5ff;
    }
    .testimonial-card .user .name {
      font-weight: 600;
      font-size: 0.9rem;
    }
    .testimonial-card .user .handle {
      color: #7a94ab;
      font-size: 0.8rem;
    }

    /* NEWSLETTER — multi-color */
    .newsletter-section {
      background: linear-gradient(145deg, #e9f0ff, #f3e8ff);
      border-radius: 48px;
      padding: 44px 32px;
      text-align: center;
      box-shadow: inset 0 2px 8px rgba(255, 255, 255, 0.8), 0 8px 32px rgba(168, 85, 247, 0.06);
      position: relative;
      overflow: hidden;
    }

    .newsletter-section::before {
      content: '';
      position: absolute;
      top: -40%;
      right: -10%;
      width: 300px;
      height: 300px;
      background: radial-gradient(circle, rgba(236, 72, 153, 0.08) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }

    .newsletter-section h3 {
      font-size: 2rem;
      font-weight: 700;
      position: relative;
      z-index: 1;
    }
    .newsletter-section p {
      color: #3f586e;
      margin-bottom: 20px;
      position: relative;
      z-index: 1;
    }
    .newsletter-form {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 12px;
      max-width: 520px;
      margin: 0 auto;
      position: relative;
      z-index: 1;
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
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.04);
    }
    .newsletter-form input:focus {
      outline-color: #a855f7;
      box-shadow: 0 0 0 4px rgba(168, 85, 247, 0.15);
    }

    .newsletter-form .btn-primary {
      background: linear-gradient(145deg, #2b6eff, #a855f7);
      box-shadow: 0 8px 20px rgba(43, 110, 255, 0.25);
    }

    .newsletter-form .btn-primary:hover {
      background: linear-gradient(145deg, #a855f7, #ec4899);
      box-shadow: 0 12px 28px rgba(168, 85, 247, 0.35);
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
    .footer .brand i {
      background: linear-gradient(145deg, #2b6eff, #a855f7);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
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
      transition: 0.2s;
    }
    .footer-links a:hover {
      color: #a855f7;
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
        background: rgba(255, 255, 255, 0.98);
        width: 100%;
        padding: 20px;
        border-radius: 32px;
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.04);
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
    <h2 class="section-title"><i class="fas fa-shapes"></i> Browse in 3D</h2>
    <p class="section-sub">Categories that pop.</p>
    <div class="category-grid" id="categoryGrid"></div>
  </div>
</section>

<!-- PRODUCTS -->
<section class="section" id="products">
  <div class="container">
    <h2 class="section-title"><i class="fas fa-chart-line"></i> Trending 3D picks</h2>
    <p class="section-sub">Products with depth.</p>
    <div class="product-grid" id="productGrid"></div>
  </div>
</section>
