<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>WatchHub — Premium Watches Store</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
<style>
  /* ===== CSS Variables ===== */
  :root {
    --primary: #2874f0;
    --primary-dark: #1a5fc7;
    --primary-light: #e8f0fe;
    --secondary: #fb641b;
    --success: #388e3c;
    --danger: #e74c3c;
    --warning: #ff9f00;
    --dark: #212121;
    --gray-900: #172337;
    --gray-800: #2c3e50;
    --gray-700: #37474f;
    --gray-600: #546e7a;
    --gray-500: #78909c;
    --gray-400: #b0bec5;
    --gray-300: #cfd8dc;
    --gray-200: #eceff1;
    --gray-100: #f5f7fa;
    --white: #ffffff;
    --shadow-sm: 0 2px 4px rgba(0,0,0,0.08);
    --shadow-md: 0 4px 12px rgba(0,0,0,0.12);
    --shadow-lg: 0 8px 24px rgba(0,0,0,0.15);
    --shadow-xl: 0 12px 40px rgba(0,0,0,0.2);
    --radius: 8px;
    --radius-lg: 12px;
    --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
    --max-width: 1440px;
  }

  /* ===== Reset ===== */
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
  html {
    scroll-behavior: smooth;
    font-size: 16px;
  }
  body {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
    background: var(--gray-100);
    color: var(--dark);
    line-height: 1.6;
    -webkit-font-smoothing: antialiased;
  }
  a {
    color: inherit;
    text-decoration: none;
  }
  button {
    font-family: inherit;
    cursor: pointer;
    border: none;
    background: none;
  }
  img {
    max-width: 100%;
    display: block;
  }
  ul {
    list-style: none;
  }
  .container {
    max-width: var(--max-width);
    margin: 0 auto;
    padding: 0 20px;
  }

  /* ===== Scrollbar ===== */
  ::-webkit-scrollbar {
    width: 6px;
    height: 6px;
  }
  ::-webkit-scrollbar-track {
    background: var(--gray-200);
  }
  ::-webkit-scrollbar-thumb {
    background: var(--primary);
    border-radius: 3px;
  }

  /* ===== Header ===== */
  .header {
    background: var(--primary);
    color: var(--white);
    position: sticky;
    top: 0;
    z-index: 1000;
    box-shadow: var(--shadow-md);
  }
  .header-top {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 12px 0;
    gap: 16px;
    flex-wrap: wrap;
  }
  .logo {
    display: flex;
    align-items: center;
    gap: 10px;
    font-size: 24px;
    font-weight: 700;
    flex-shrink: 0;
    color: var(--white);
  }
  .logo-icon {
    width: 36px;
    height: 36px;
    background: var(--white);
    border-radius: 50%;
    display: grid;
    place-items: center;
    font-size: 18px;
    color: var(--primary);
    font-weight: 800;
  }
  .logo-sub {
    font-size: 11px;
    font-weight: 300;
    opacity: 0.8;
    display: block;
    margin-top: -2px;
  }
  .logo-sub span {
    font-style: italic;
    font-weight: 500;
  }

  .search-bar {
    flex: 1;
    max-width: 540px;
    display: flex;
    background: var(--white);
    border-radius: var(--radius);
    overflow: hidden;
    box-shadow: var(--shadow-sm);
  }
  .search-bar input {
    flex: 1;
    padding: 10px 16px;
    border: none;
    outline: none;
    font-size: 14px;
    color: var(--dark);
    background: transparent;
  }
  .search-bar input::placeholder {
    color: var(--gray-500);
  }
  .search-bar button {
    padding: 10px 18px;
    background: var(--secondary);
    color: var(--white);
    font-weight: 600;
    font-size: 14px;
    display: flex;
    align-items: center;
    gap: 6px;
    transition: var(--transition);
  }
  .search-bar button:hover {
    background: #e85d1a;
  }

  .header-actions {
    display: flex;
    align-items: center;
    gap: 8px;
    flex-shrink: 0;
  }
  .header-btn {
    padding: 8px 14px;
    color: var(--white);
    font-size: 13px;
    font-weight: 500;
    border-radius: var(--radius);
    transition: var(--transition);
    display: flex;
    align-items: center;
    gap: 6px;
    background: rgba(255,255,255,0.1);
  }
  .header-btn:hover {
    background: rgba(255,255,255,0.2);
  }
  .header-btn .badge {
    background: var(--secondary);
    color: var(--white);
    font-size: 11px;
    font-weight: 700;
    padding: 0 6px;
    border-radius: 999px;
    min-width: 18px;
    text-align: center;
  }
  .header-btn.cart-btn {
    background: var(--secondary);
    padding: 8px 18px;
  }
  .header-btn.cart-btn:hover {
    background: #e85d1a;
  }

  .mobile-menu-toggle {
    display: none;
    color: var(--white);
    font-size: 24px;
    padding: 4px;
  }

  /* ===== Mobile Menu ===== */
  .mobile-menu {
    display: none;
    background: var(--white);
    padding: 16px 20px;
    border-top: 1px solid var(--gray-200);
  }
  .mobile-menu.open {
    display: block;
  }
  .mobile-menu a {
    display: block;
    padding: 10px 0;
    color: var(--gray-700);
    font-weight: 500;
    border-bottom: 1px solid var(--gray-200);
  }
  .mobile-menu a:hover {
    color: var(--primary);
  }

  /* ===== Navigation ===== */
  .nav-bar {
    background: var(--white);
    border-bottom: 1px solid var(--gray-200);
    padding: 8px 0;
    box-shadow: var(--shadow-sm);
  }
  .nav-bar ul {
    display: flex;
    gap: 4px;
    flex-wrap: wrap;
  }
  .nav-bar a {
    padding: 8px 16px;
    font-size: 14px;
    font-weight: 500;
    color: var(--gray-700);
    border-radius: var(--radius);
    transition: var(--transition);
  }
  .nav-bar a:hover {
    background: var(--primary-light);
    color: var(--primary);
  }
  .nav-bar a.active {
    background: var(--primary);
    color: var(--white);
  }

  /* ===== Hero / Banner ===== */
  .hero {
    background: linear-gradient(135deg, #1a237e 0%, #283593 50%, #0d47a1 100%);
    color: var(--white);
    padding: 40px 0 50px;
    border-radius: 0 0 30px 30px;
    margin-bottom: 24px;
    position: relative;
    overflow: hidden;
  }
  .hero::before {
    content: '';
    position: absolute;
    top: -50%;
    right: -10%;
    width: 500px;
    height: 500px;
    background: rgba(255,255,255,0.05);
    border-radius: 50%;
  }
  .hero::after {
    content: '';
    position: absolute;
    bottom: -30%;
    left: -5%;
    width: 300px;
    height: 300px;
    background: rgba(255,255,255,0.04);
    border-radius: 50%;
  }
  .hero-content {
    position: relative;
    z-index: 1;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 40px;
    align-items: center;
  }
  .hero-text h1 {
    font-size: 42px;
    font-weight: 700;
    line-height: 1.1;
    margin-bottom: 12px;
  }
  .hero-text p {
    font-size: 16px;
    opacity: 0.85;
    max-width: 440px;
    margin-bottom: 24px;
    line-height: 1.8;
  }
  .hero-text .badge-banner {
    display: inline-block;
    background: rgba(255,255,255,0.15);
    padding: 4px 14px;
    border-radius: 999px;
    font-size: 12px;
    font-weight: 500;
    margin-bottom: 12px;
    backdrop-filter: blur(4px);
  }
  .hero-buttons {
    display: flex;
    gap: 12px;
    flex-wrap: wrap;
  }
  .btn {
    padding: 12px 28px;
    border-radius: var(--radius);
    font-weight: 600;
    font-size: 14px;
    transition: var(--transition);
    display: inline-flex;
    align-items: center;
    gap: 8px;
  }
  .btn-primary {
    background: var(--secondary);
    color: var(--white);
  }
  .btn-primary:hover {
    background: #e85d1a;
    transform: translateY(-2px);
    box-shadow: var(--shadow-md);
  }
  .btn-outline {
    background: transparent;
    color: var(--white);
    border: 2px solid rgba(255,255,255,0.3);
  }
  .btn-outline:hover {
    border-color: var(--white);
    background: rgba(255,255,255,0.1);
  }
  .hero-image {
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .hero-image img {
    max-height: 300px;
    width: auto;
    border-radius: var(--radius-lg);
    box-shadow: var(--shadow-xl);
  }

  /* ===== Features Strip ===== */
  .features-strip {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 16px;
    padding: 16px 0 24px;
  }
  .feature-item {
    background: var(--white);
    padding: 16px 20px;
    border-radius: var(--radius);
    text-align: center;
    box-shadow: var(--shadow-sm);
    transition: var(--transition);
  }
  .feature-item:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow-md);
  }
  .feature-item .icon {
    font-size: 28px;
    margin-bottom: 4px;
  }
  .feature-item h4 {
    font-size: 13px;
    font-weight: 600;
    color: var(--gray-800);
  }
  .feature-item p {
    font-size: 12px;
    color: var(--gray-500);
  }

  /* ===== Section Styles ===== */
  .section {
    padding: 24px 0 36px;
  }
  .section-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 20px;
  }
  .section-header h2 {
    font-size: 24px;
    font-weight: 700;
    color: var(--gray-900);
  }
  .section-header .see-all {
    color: var(--primary);
    font-weight: 600;
    font-size: 14px;
  }
  .section-header .see-all:hover {
    text-decoration: underline;
  }

  /* ===== Category Cards ===== */
  .categories-grid {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    gap: 16px;
  }
  .category-card {
    background: var(--white);
    border-radius: var(--radius);
    padding: 20px 12px;
    text-align: center;
    box-shadow: var(--shadow-sm);
    transition: var(--transition);
    cursor: pointer;
    border: 2px solid transparent;
  }
  .category-card:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow-md);
    border-color: var(--primary);
  }
  .category-card .icon {
    font-size: 32px;
    margin-bottom: 6px;
  }
  .category-card h4 {
    font-size: 13px;
    font-weight: 600;
    color: var(--gray-800);
  }
  .category-card p {
    font-size: 11px;
    color: var(--gray-500);
  }

  /* ===== Filter Bar ===== */
  .filter-bar {
    display: flex;
    gap: 12px;
    flex-wrap: wrap;
    align-items: center;
    background: var(--white);
    padding: 14px 20px;
    border-radius: var(--radius);
    box-shadow: var(--shadow-sm);
    margin-bottom: 24px;
  }
  .filter-bar .filter-group {
    display: flex;
    gap: 6px;
    flex-wrap: wrap;
  }
  .filter-btn {
    padding: 6px 16px;
    border-radius: 999px;
    font-size: 13px;
    font-weight: 500;
    color: var(--gray-600);
    background: var(--gray-200);
    transition: var(--transition);
  }
  .filter-btn:hover {
    background: var(--primary-light);
    color: var(--primary);
  }
  .filter-btn.active {
    background: var(--primary);
    color: var(--white);
  }
  .filter-bar .sort-select {
    margin-left: auto;
    padding: 6px 12px;
    border: 1px solid var(--gray-300);
    border-radius: var(--radius);
    font-size: 13px;
    background: var(--white);
    color: var(--gray-700);
    font-weight: 500;
  }
  .filter-bar .result-count {
    font-size: 13px;
    color: var(--gray-500);
    margin-left: 8px;
  }

  /* ===== Products Grid ===== */
  .products-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 20px;
  }
  .product-card {
    background: var(--white);
    border-radius: var(--radius);
    overflow: hidden;
    box-shadow: var(--shadow-sm);
    transition: var(--transition);
    position: relative;
  }
  .product-card:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow-lg);
  }
  .product-card .image-wrap {
    position: relative;
    padding-top: 100%;
    background: var(--gray-100);
    overflow: hidden;
  }
  .product-card .image-wrap img {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: var(--transition);
  }
  .product-card:hover .image-wrap img {
    transform: scale(1.05);
  }
  .product-card .badge-tag {
    position: absolute;
    top: 10px;
    left: 10px;
    background: var(--success);
    color: var(--white);
    font-size: 11px;
    font-weight: 700;
    padding: 2px 10px;
    border-radius: 999px;
  }
  .product-card .badge-tag.sale {
    background: var(--danger);
  }
  .product-card .badge-tag.new {
    background: var(--primary);
  }
  .product-card .wishlist-btn {
    position: absolute;
    top: 10px;
    right: 10px;
    width: 34px;
    height: 34px;
    border-radius: 50%;
    background: var(--white);
    display: grid;
    place-items: center;
    box-shadow: var(--shadow-sm);
    transition: var(--transition);
    font-size: 18px;
  }
  .product-card .wishlist-btn:hover {
    transform: scale(1.1);
  }
  .product-card .wishlist-btn.active {
    background: var(--danger);
    color: var(--white);
  }

  .product-card .details {
    padding: 14px 16px 16px;
  }
  .product-card .details .brand {
    font-size: 12px;
    color: var(--gray-500);
    font-weight: 500;
    text-transform: uppercase;
    letter-spacing: 0.5px;
  }
  .product-card .details .title {
    font-size: 15px;
    font-weight: 600;
    color: var(--gray-800);
    margin: 2px 0 4px;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
  }
  .product-card .details .title a:hover {
    color: var(--primary);
  }
  .product-card .details .rating {
    display: flex;
    align-items: center;
    gap: 6px;
    font-size: 13px;
    color: var(--gray-600);
  }
  .product-card .details .rating .stars {
    color: var(--warning);
    font-weight: 600;
  }
  .product-card .details .price-row {
    display: flex;
    align-items: baseline;
    gap: 8px;
    margin-top: 4px;
  }
  .product-card .details .price-row .current {
    font-size: 20px;
    font-weight: 700;
    color: var(--gray-900);
  }
  .product-card .details .price-row .original {
    font-size: 14px;
    color: var(--gray-500);
    text-decoration: line-through;
  }
  .product-card .details .price-row .discount {
    font-size: 14px;
    color: var(--success);
    font-weight: 600;
  }
  .product-card .details .offer-tag {
    font-size: 12px;
    color: var(--success);
    font-weight: 500;
    margin-top: 4px;
  }

  .product-card .add-btn {
    width: 100%;
    padding: 10px;
    background: var(--primary);
    color: var(--white);
    font-weight: 600;
    font-size: 14px;
    border: none;
    border-radius: var(--radius);
    transition: var(--transition);
    margin-top: 8px;
  }
  .product-card .add-btn:hover {
    background: var(--primary-dark);
  }
  .product-card .add-btn.in-cart {
    background: var(--success);
  }
  .product-card .add-btn.in-cart:hover {
    background: #2e7d32;
  }

  /* ===== Deal Section ===== */
  .deal-section {
    background: linear-gradient(135deg, #1a237e, #0d47a1);
    color: var(--white);
    border-radius: var(--radius-lg);
    padding: 40px 48px;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 40px;
    align-items: center;
    margin: 24px 0;
  }
  .deal-section .deal-content h2 {
    font-size: 28px;
    font-weight: 700;
    margin-bottom: 8px;
  }
  .deal-section .deal-content p {
    opacity: 0.8;
    margin-bottom: 16px;
  }
  .deal-section .deal-content .deal-price {
    display: flex;
    align-items: baseline;
    gap: 12px;
    margin-bottom: 16px;
  }
  .deal-section .deal-content .deal-price .current {
    font-size: 32px;
    font-weight: 700;
  }
  .deal-section .deal-content .deal-price .original {
    font-size: 18px;
    text-decoration: line-through;
    opacity: 0.6;
  }
  .deal-section .deal-content .deal-price .discount {
    font-size: 18px;
    font-weight: 700;
    color: #ffd54f;
  }

  .countdown {
    display: flex;
    gap: 16px;
    margin: 12px 0 20px;
  }
  .countdown .unit {
    background: rgba(255,255,255,0.15);
    padding: 8px 14px;
    border-radius: var(--radius);
    text-align: center;
    min-width: 60px;
  }
  .countdown .unit .num {
    font-size: 28px;
    font-weight: 700;
    display: block;
    font-variant-numeric: tabular-nums;
  }
  .countdown .unit .label {
    font-size: 11px;
    text-transform: uppercase;
    opacity: 0.6;
  }

  .deal-section .deal-image img {
    width: 100%;
    max-height: 300px;
    object-fit: contain;
    border-radius: var(--radius);
  }

  /* ===== Testimonials ===== */
  .testimonials-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
  }
  .testimonial-card {
    background: var(--white);
    padding: 24px;
    border-radius: var(--radius);
    box-shadow: var(--shadow-sm);
  }
  .testimonial-card .quote {
    font-size: 14px;
    color: var(--gray-600);
    line-height: 1.8;
    margin-bottom: 12px;
    font-style: italic;
  }
  .testimonial-card .user {
    display: flex;
    align-items: center;
    gap: 12px;
  }
  .testimonial-card .user img {
    width: 44px;
    height: 44px;
    border-radius: 50%;
    object-fit: cover;
  }
  .testimonial-card .user .name {
    font-weight: 600;
    font-size: 14px;
  }
  .testimonial-card .user .role {
    font-size: 12px;
    color: var(--gray-500);
  }
  .testimonial-card .stars {
    color: var(--warning);
    font-size: 14px;
    margin-bottom: 4px;
  }

  /* ===== Newsletter ===== */
  .newsletter-section {
    background: var(--white);
    padding: 40px;
    border-radius: var(--radius-lg);
    text-align: center;
    box-shadow: var(--shadow-sm);
    margin: 24px 0;
  }
  .newsletter-section h3 {
    font-size: 24px;
    font-weight: 700;
    color: var(--gray-900);
  }
  .newsletter-section p {
    color: var(--gray-500);
    margin: 4px 0 20px;
  }
  .newsletter-section form {
    display: flex;
    justify-content: center;
    gap: 12px;
    flex-wrap: wrap;
    max-width: 500px;
    margin: 0 auto;
  }
  .newsletter-section input {
    flex: 1;
    min-width: 200px;
    padding: 12px 18px;
    border: 2px solid var(--gray-300);
    border-radius: var(--radius);
    font-size: 14px;
    transition: var(--transition);
  }
  .newsletter-section input:focus {
    border-color: var(--primary);
    outline: none;
  }
  .newsletter-section .form-msg {
    margin-top: 8px;
    font-weight: 500;
  }
  .newsletter-section .form-msg.error {
    color: var(--danger);
  }
  .newsletter-section .form-msg.success {
    color: var(--success);
  }

  /* ===== Footer ===== */
  .footer {
    background: var(--gray-900);
    color: var(--gray-400);
    padding: 48px 0 24px;
    margin-top: 32px;
  }
  .footer-grid {
    display: grid;
    grid-template-columns: 2fr 1fr 1fr 1fr;
    gap: 40px;
    padding-bottom: 32px;
    border-bottom: 1px solid rgba(255,255,255,0.08);
  }
  .footer-brand .logo {
    color: var(--white);
    font-size: 22px;
  }
  .footer-brand p {
    font-size: 14px;
    max-width: 320px;
    margin-top: 8px;
    line-height: 1.8;
  }
  .footer-col h4 {
    color: var(--white);
    font-size: 15px;
    font-weight: 600;
    margin-bottom: 12px;
  }
  .footer-col a {
    display: block;
    font-size: 14px;
    padding: 4px 0;
    transition: var(--transition);
  }
  .footer-col a:hover {
    color: var(--white);
  }
  .footer-bottom {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding-top: 20px;
    font-size: 13px;
    flex-wrap: wrap;
    gap: 12px;
  }
  .footer-bottom .payment-icons {
    display: flex;
    gap: 8px;
    font-size: 20px;
  }

  /* ===== Cart Drawer ===== */
  .cart-overlay {
    position: fixed;
    inset: 0;
    background: rgba(0,0,0,0.5);
    z-index: 2000;
    display: none;
    backdrop-filter: blur(4px);
  }
  .cart-overlay.open {
    display: block;
  }
  .cart-drawer {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    width: 100%;
    max-width: 420px;
    background: var(--white);
    display: flex;
    flex-direction: column;
    animation: slideIn 0.3s ease;
  }
  @keyframes slideIn {
    from {
      transform: translateX(100%);
    }
    to {
      transform: translateX(0);
    }
  }
  .cart-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 20px 24px;
    border-bottom: 1px solid var(--gray-200);
  }
  .cart-header h3 {
    font-size: 20px;
    font-weight: 700;
  }
  .cart-header .close-btn {
    font-size: 24px;
    color: var(--gray-500);
    padding: 4px;
  }
  .cart-header .close-btn:hover {
    color: var(--dark);
  }
  .cart-items {
    flex: 1;
    overflow-y: auto;
    padding: 16px 24px;
  }
  .cart-item {
    display: flex;
    gap: 14px;
    padding: 12px 0;
    border-bottom: 1px solid var(--gray-200);
  }
  .cart-item img {
    width: 72px;
    height: 72px;
    object-fit: cover;
    border-radius: var(--radius);
  }
  .cart-item .info {
    flex: 1;
  }
  .cart-item .info .title {
    font-weight: 600;
    font-size: 14px;
  }
  .cart-item .info .price {
    font-weight: 700;
    color: var(--gray-900);
  }
  .cart-item .info .qty-control {
    display: flex;
    align-items: center;
    gap: 8px;
    margin-top: 4px;
  }
  .cart-item .info .qty-control button {
    width: 28px;
    height: 28px;
    border-radius: 50%;
    background: var(--gray-200);
    font-weight: 700;
    transition: var(--transition);
  }
  .cart-item .info .qty-control button:hover {
    background: var(--gray-300);
  }
  .cart-item .info .qty-control span {
    font-weight: 600;
    min-width: 20px;
    text-align: center;
  }
  .cart-item .info .remove-btn {
    font-size: 12px;
    color: var(--gray-500);
    margin-top: 4px;
  }
  .cart-item .info .remove-btn:hover {
    color: var(--danger);
  }
  .cart-empty {
    text-align: center;
    padding: 60px 0;
  }
  .cart-empty .icon {
    font-size: 48px;
    margin-bottom: 12px;
  }
  .cart-empty h4 {
    font-size: 18px;
    color: var(--gray-700);
  }
  .cart-empty p {
    color: var(--gray-500);
  }
  .cart-footer {
    padding: 20px 24px;
    border-top: 1px solid var(--gray-200);
    background: var(--gray-100);
  }
  .cart-footer .subtotal {
    display: flex;
    justify-content: space-between;
    font-size: 18px;
    font-weight: 700;
    margin-bottom: 12px;
  }
  .cart-footer .checkout-btn {
    width: 100%;
    padding: 14px;
    background: var(--secondary);
    color: var(--white);
    font-weight: 700;
    font-size: 16px;
    border-radius: var(--radius);
    transition: var(--transition);
  }
  .cart-footer .checkout-btn:hover {
    background: #e85d1a;
  }
  .cart-footer .note {
    font-size: 12px;
    color: var(--gray-500);
    text-align: center;
    margin-top: 8px;
  }

  /* ===== Toast ===== */
  .toast {
    position: fixed;
    bottom: 24px;
    right: 24px;
    background: var(--gray-900);
    color: var(--white);
    padding: 14px 24px;
    border-radius: var(--radius);
    box-shadow: var(--shadow-lg);
    z-index: 3000;
    opacity: 0;
    transform: translateY(20px);
    transition: all 0.3s ease;
  }
  .toast.show {
    opacity: 1;
    transform: translateY(0);
  }

  /* ===== Responsive ===== */
  @media (max-width: 1024px) {
    .products-grid {
      grid-template-columns: repeat(3, 1fr);
    }
    .categories-grid {
      grid-template-columns: repeat(4, 1fr);
    }
    .deal-section {
      grid-template-columns: 1fr;
      text-align: center;
      padding: 32px;
    }
    .deal-section .deal-content .deal-price {
      justify-content: center;
    }
    .countdown {
      justify-content: center;
    }
  }
  @media (max-width: 768px) {
    .search-bar {
      max-width: 100%;
      order: 3;
      flex: 1 1 100%;
    }
    .header-top {
      gap: 8px;
    }
    .header-actions .header-btn span {
      display: none;
    }
    .hero-content {
      grid-template-columns: 1fr;
      text-align: center;
    }
    .hero-text h1 {
      font-size: 28px;
    }
    .hero-text p {
      margin: 0 auto 20px;
    }
    .hero-buttons {
      justify-content: center;
    }
    .hero-image img {
      max-height: 200px;
    }
    .features-strip {
      grid-template-columns: repeat(2, 1fr);
    }
    .products-grid {
      grid-template-columns: repeat(2, 1fr);
    }
    .categories-grid {
      grid-template-columns: repeat(3, 1fr);
    }
    .testimonials-grid {
      grid-template-columns: 1fr;
    }
    .footer-grid {
      grid-template-columns: 1fr;
      gap: 24px;
    }
    .footer-bottom {
      flex-direction: column;
      text-align: center;
    }
    .nav-bar ul {
      justify-content: center;
    }
    .nav-bar a {
      font-size: 12px;
      padding: 6px 12px;
    }
    .filter-bar {
      flex-direction: column;
      align-items: stretch;
    }
    .filter-bar .sort-select {
      margin-left: 0;
    }
    .filter-bar .filter-group {
      justify-content: center;
    }
    .mobile-menu-toggle {
      display: block;
    }
    .deal-section .deal-image img {
      max-height: 200px;
    }
  }
  @media (max-width: 480px) {
    .products-grid {
      grid-template-columns: 1fr 1fr;
      gap: 12px;
    }
    .categories-grid {
      grid-template-columns: repeat(2, 1fr);
    }
    .product-card .details {
      padding: 10px 12px 12px;
    }
    .product-card .details .title {
      font-size: 13px;
    }
    .product-card .details .price-row .current {
      font-size: 16px;
    }
    .container {
      padding: 0 12px;
    }
    .hero {
      padding: 24px 0 32px;
    }
    .countdown .unit {
      min-width: 44px;
      padding: 6px 10px;
    }
    .countdown .unit .num {
      font-size: 20px;
    }
  }
</style>
</head>
<body>

<!-- ===== Header ===== -->
<header class="header">
  <div class="container">
    <div class="header-top">
      <div class="logo">
        <span class="logo-icon">⌚</span>
        <div>
          WatchHub
          <small class="logo-sub">Premium <span>Watches</span></small>
        </div>
      </div>

      <div class="search-bar">
        <input type="search" id="searchInput" placeholder="Search for watches, brands, categories..." aria-label="Search">
        <button id="searchBtn">🔍
