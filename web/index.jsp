<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Scara | Elite Contracts. Legendary Assassins.</title>
<meta name="description" content="A fictional premium recruitment agency for legendary assassins. Elite contracts, elite operatives, zero mercy.">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">

<link rel="stylesheet" href="css/style.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark sticky-top" id="mainNav" aria-label="Primary">
  <div class="container">
    <a class="navbar-brand" href="index.jsp">
      <i class="bi bi-crosshair2 brand-icon" aria-hidden="true"></i>
      <span class="brand-accent">SCARA</span>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu" aria-controls="navMenu" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navMenu">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link active" href="index.jsp">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="assassins.jsp">Assassins</a></li>
        <li class="nav-item"><a class="nav-link" href="gallery.jsp">Gallery</a></li>
        <li class="nav-item"><a class="nav-link" href="faq.jsp">FAQ</a></li>
        <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
      </ul>
    </div>
  </div>
</nav>

<header class="hero-section">
  <div class="hero-bg" style="background-image:url('images/hero/hero-bg.jpg');" aria-hidden="true"></div>
  <div class="hero-overlay" aria-hidden="true"></div>
  <div class="container hero-content text-center">
    <p class="hero-eyebrow reveal">FICTIONAL &middot; ENTERTAINMENT UNIVERSE</p>
    <h1 class="hero-headline reveal">Elite Contracts. Legendary Assassins.</h1>
    <p class="hero-subheading reveal">Only the world's deadliest survive.</p>
    <div class="hero-actions reveal">
      <a href="assassins.jsp" class="btn btn-hero-primary btn-lg">Hire Assassin</a>
      <a href="assassins.jsp" class="btn btn-hero-outline btn-lg">View Roster</a>
    </div>
  </div>
  <a href="assassins.jsp" class="scroll-indicator" aria-label="Go to assassins">
    <span class="scroll-mouse"><span class="scroll-dot"></span></span>
  </a>
</header>

<section class="section-padded">
  <div class="container">
    <div class="section-heading text-center reveal">
      <p class="section-eyebrow">EXPLORE THE AGENCY</p>
      <h2 class="section-title">Start Here</h2>
      <p class="section-lede">Everything the Agency runs, split across its own page.</p>
    </div>
    <div class="row g-4">
      <div class="col-lg-3 col-md-6 reveal">
        <a href="assassins.jsp" class="index-link-card">
          <i class="bi bi-person-badge" aria-hidden="true"></i>
          <h3>Assassins</h3>
          <p>Meet the roster.</p>
        </a>
      </div>
      <div class="col-lg-3 col-md-6 reveal">
        <a href="gallery.jsp" class="index-link-card">
          <i class="bi bi-images" aria-hidden="true"></i>
          <h3>Gallery</h3>
          <p>Dossier archive.</p>
        </a>
      </div>
      <div class="col-lg-3 col-md-6 reveal">
        <a href="faq.jsp" class="index-link-card">
          <i class="bi bi-question-circle" aria-hidden="true"></i>
          <h3>FAQ</h3>
          <p>Before you apply.</p>
        </a>
      </div>
      <div class="col-lg-3 col-md-6 reveal">
        <a href="contact.jsp" class="index-link-card">
          <i class="bi bi-envelope" aria-hidden="true"></i>
          <h3>Contact</h3>
          <p>Secure channel.</p>
        </a>
      </div>
      <div class="col-lg-3 col-md-6 reveal">
        <a href="admin.jsp" class="index-link-card">
          <i class="bi bi-shield-lock" aria-hidden="true"></i>
          <h3>Admin</h3>
          <p>Staff only.</p>
        </a>
      </div>
    </div>
  </div>
</section>

<section class="stats-section section-padded">
  <div class="container">
    <div class="row g-4 text-center">
      <div class="col-md-3 col-6 reveal">
        <div class="stat-counter">182</div>
        <p class="stat-counter-label">Active Contracts</p>
      </div>
      <div class="col-md-3 col-6 reveal">
        <div class="stat-counter">98%</div>
        <p class="stat-counter-label">Success Rate</p>
      </div>
      <div class="col-md-3 col-6 reveal">
        <div class="stat-counter">4210</div>
        <p class="stat-counter-label">Completed Missions</p>
      </div>
      <div class="col-md-3 col-6 reveal">
        <div class="stat-counter">57</div>
        <p class="stat-counter-label">Elite Members</p>
      </div>
    </div>
  </div>
</section>

<section class="section-padded section-alt">
  <div class="container">
    <div class="section-heading text-center reveal">
      <p class="section-eyebrow">FIELD REPORTS</p>
      <h2 class="section-title">Testimonials</h2>
    </div>

    <div id="testimonialCarousel" class="carousel slide reveal" data-bs-ride="carousel">
      <div class="carousel-inner" id="testimonialInner">
        <div class="carousel-item active">
          <div class="testimonial-card mx-auto">
            <i class="bi bi-quote quote-icon" aria-hidden="true"></i>
            <p>"The Agency delivered a specialist who finished the contract before our own security noticed the breach. Unmatched discretion."</p>
            <h4>&mdash; Client, Neo-Tokyo Syndicate</h4>
          </div>
        </div>
        <div class="carousel-item">
          <div class="testimonial-card mx-auto">
            <i class="bi bi-quote quote-icon" aria-hidden="true"></i>
            <p>"I requested the impossible. Amur Tigro made it look like a formality. I will never use another agency."</p>
            <h4>&mdash; Client, Undisclosed Cartel</h4>
          </div>
        </div>
        <div class="carousel-item">
          <div class="testimonial-card mx-auto">
            <i class="bi bi-quote quote-icon" aria-hidden="true"></i>
            <p>"Shingen's blade resolved a decade-long dispute in eleven seconds. The invoice was the only surprise."</p>
            <h4>&mdash; Client, Continental Board Member</h4>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
  </div>
</section>

<footer class="site-footer">
  <div class="container">
    <div class="row g-4">
      <div class="col-lg-4">
        <a class="navbar-brand d-inline-block mb-3" href="index.jsp">
          SCA<span class="brand-accent">RA</span>
        </a>
        <p class="footer-text">A fictional, entertainment-only universe of elite contracts and legendary assassins. Not a real service.</p>
      </div>
      <div class="col-lg-2 col-6">
        <h4>Quick Links</h4>
        <ul class="footer-links">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="assassins.jsp">Assassins</a></li>
        </ul>
      </div>
      <div class="col-lg-2 col-6">
        <h4>Agency</h4>
        <ul class="footer-links">
          <li><a href="faq.jsp">FAQ</a></li>
          <li><a href="contact.jsp">Contact</a></li>
          <li><a href="admin.jsp">Admin</a></li>
        </ul>
      </div>
      <div class="col-lg-4">
        <h4>Newsletter</h4>
        <p class="footer-text">Get notified when new contracts open. No spam, only silence.</p>
        <form class="newsletter-form" id="newsletterForm">
          <input type="email" class="form-control" placeholder="Your email" required aria-label="Email for newsletter">
          <button type="submit" class="btn btn-hero-primary">Join</button>
        </form>
      </div>
    </div>
    <hr>
    <p class="footer-copyright text-center mb-0">&copy; 2026 Scara. Fictional entertainment concept. All rights reserved. No actual assassins were harmed in the making of this site.</p>
  </div>
</footer>

<div class="toast-container position-fixed bottom-0 end-0 p-4" style="z-index:1080">
  <div id="appToast" class="toast toast-agency" role="status" aria-live="polite" aria-atomic="true">
    <div class="toast-header">
      <i class="bi bi-check-circle-fill me-2" aria-hidden="true"></i>
      <strong class="me-auto">Scara</strong>
      <button type="button" class="btn-close btn-close-white" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
    <div class="toast-body">Message received. The Agency will make contact if needed.</div>
  </div>
</div>

<audio id="bgmAudio" src="audio/bgm.mp3" loop preload="auto"></audio>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="js/audio.js"></script>
<script src="js/script.js"></script>
</body>
</html>
