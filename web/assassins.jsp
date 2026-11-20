<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Assassins | Scara</title>
<meta name="description" content="Meet the Scara roster of fictional elite assassins.">

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
        <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
        <li class="nav-item"><a class="nav-link active" href="assassins.jsp">Assassins</a></li>
        <li class="nav-item"><a class="nav-link" href="gallery.jsp">Gallery</a></li>
        <li class="nav-item"><a class="nav-link" href="faq.jsp">FAQ</a></li>
        <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
      </ul>
    </div>
  </div>
</nav>

<section class="section-padded">
  <div class="container">
    <div class="section-heading text-center reveal">
      <p class="section-eyebrow">THE ROSTER</p>
      <h2 class="section-title">Featured Assassins</h2>
      <p class="section-lede">Five names whispered in every underworld ledger. Verified kills. Zero witnesses.</p>
    </div>

    <div class="row g-4" id="assassinsGrid">
      <div class="col-lg-4 col-md-6 reveal">
        <article class="assassin-card">
          <div class="assassin-media">
            <img src="images/assassins/gun-yamazaki.jpg" alt="Illustrated silhouette portrait of Gun Yamazaki, Close Combat specialist" loading="lazy" width="600" height="800">
          </div>
          <div class="assassin-info">
            <h3>Gun Yamazaki</h3>
            <p class="assassin-spec">Close Combat</p>
            <div class="assassin-stats">
              <div><span class="stat-label">Kills</span><span class="stat-value">487</span></div>
              <div><span class="stat-label">Success</span><span class="stat-value">99%</span></div>
            </div>
            <div class="assassin-price"><span>Contract Fee</span><strong>$1,800,000</strong></div>
            <a href="contact.jsp?hire=Gun%20Yamazaki" class="btn btn-hero-primary btn-sm w-100">Hire Gun</a>
          </div>
        </article>
      </div>
      <div class="col-lg-4 col-md-6 reveal">
        <article class="assassin-card">
          <div class="assassin-media">
            <img src="images/assassins/Jintae-Shio.jpg" alt="Illustrated silhouette portrait of Jintae Shio, Sword Master specialist" loading="lazy" width="600" height="800">
          </div>
          <div class="assassin-info">
            <h3>Jintae Shio</h3>
            <p class="assassin-spec">Sword Master</p>
            <div class="assassin-stats">
              <div><span class="stat-label">Kills</span><span class="stat-value">512</span></div>
              <div><span class="stat-label">Success</span><span class="stat-value">98%</span></div>
            </div>
            <div class="assassin-price"><span>Contract Fee</span><strong>$2,100,000</strong></div>
            <a href="contact.jsp?hire=Jintae%20Shio" class="btn btn-hero-primary btn-sm w-100">Hire Jintae Shio</a>
          </div>
        </article>
      </div>
      <div class="col-lg-4 col-md-6 reveal">
        <article class="assassin-card">
          <div class="assassin-media">
            <img src="images/assassins/manager-kim.jpg" alt="Illustrated silhouette portrait of Manager Kim, Recon specialist" loading="lazy" width="600" height="800">
          </div>
          <div class="assassin-info">
            <h3>Manager Kim</h3>
            <p class="assassin-spec">Recon</p>
            <div class="assassin-stats">
              <div><span class="stat-label">Kills</span><span class="stat-value">204</span></div>
              <div><span class="stat-label">Success</span><span class="stat-value">100%</span></div>
            </div>
            <div class="assassin-price"><span>Contract Fee</span><strong>$950,000</strong></div>
            <a href="contact.jsp?hire=Manager%20Kim" class="btn btn-hero-primary btn-sm w-100">Hire Manager</a>
          </div>
        </article>
      </div>
      <div class="col-lg-4 col-md-6 reveal">
        <article class="assassin-card">
          <div class="assassin-media">
            <img src="images/assassins/goo-kim.webp" alt="Illustrated silhouette portrait of Goo Kim, Improvised Weapons specialist" loading="lazy" width="600" height="800">
          </div>
          <div class="assassin-info">
            <h3>Goo Kim</h3>
            <p class="assassin-spec">Improvised Weapons</p>
            <div class="assassin-stats">
              <div><span class="stat-label">Kills</span><span class="stat-value">366</span></div>
              <div><span class="stat-label">Success</span><span class="stat-value">95%</span></div>
            </div>
            <div class="assassin-price"><span>Contract Fee</span><strong>$1,200,000</strong></div>
            <a href="contact.jsp?hire=Goo%20Kim" class="btn btn-hero-primary btn-sm w-100">Hire Goo</a>
          </div>
        </article>
      </div>
      <div class="col-lg-4 col-md-6 reveal">
        <article class="assassin-card">
          <div class="assassin-media">
            <img src="images/assassins/amur-tigro.jpg" alt="Illustrated silhouette portrait of Amur Tigro, Stealth specialist" loading="lazy" width="600" height="800">
          </div>
          <div class="assassin-info">
            <h3>Amur Tigro</h3>
            <p class="assassin-spec">Stealth</p>
            <div class="assassin-stats">
              <div><span class="stat-label">Kills</span><span class="stat-value">601</span></div>
              <div><span class="stat-label">Success</span><span class="stat-value">100%</span></div>
            </div>
            <div class="assassin-price"><span>Contract Fee</span><strong>$3,200,000</strong></div>
            <a href="contact.jsp?hire=Amur%20Tigro" class="btn btn-hero-primary btn-sm w-100">Hire Amur</a>
          </div>
        </article>
      </div>
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
