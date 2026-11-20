<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact | Scara</title>
<meta name="description" content="Contact the fictional Scara agency.">

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
        <li class="nav-item"><a class="nav-link" href="assassins.jsp">Assassins</a></li>
        <li class="nav-item"><a class="nav-link" href="gallery.jsp">Gallery</a></li>
        <li class="nav-item"><a class="nav-link" href="faq.jsp">FAQ</a></li>
        <li class="nav-item"><a class="nav-link active" href="contact.jsp">Contact</a></li>
      </ul>
    </div>
  </div>
</nav>

<section class="section-padded">
  <div class="container">
    <div class="section-heading text-center reveal">
      <p class="section-eyebrow">SECURE CHANNEL</p>
      <h2 class="section-title">Contact</h2>
    </div>
    <div class="row g-4 text-center justify-content-center">
      <div class="col-md-4 reveal">
        <div class="contact-card">
          <i class="bi bi-geo-alt-fill" aria-hidden="true"></i>
          <h3>Location</h3>
          <p>Undisclosed. The Continental, Sector 9</p>
        </div>
      </div>
      <div class="col-md-4 reveal">
        <div class="contact-card">
          <i class="bi bi-envelope-lock-fill" aria-hidden="true"></i>
          <h3>Encrypted Email</h3>
          <p>contact@scara.fictional</p>
        </div>
      </div>
      <div class="col-md-4 reveal">
        <div class="contact-card">
          <i class="bi bi-telephone-fill" aria-hidden="true"></i>
          <h3>Secure Hotline</h3>
          <p>+1 (555) 000-KILL</p>
        </div>
      </div>
    </div>
    <div class="social-icons text-center mt-5 reveal">
      <a href="#" aria-label="Agency on X"><i class="bi bi-twitter-x" aria-hidden="true"></i></a>
      <a href="#" aria-label="Agency on Instagram"><i class="bi bi-instagram" aria-hidden="true"></i></a>
      <a href="#" aria-label="Agency on Discord"><i class="bi bi-discord" aria-hidden="true"></i></a>
      <a href="#" aria-label="Agency on Telegram"><i class="bi bi-telegram" aria-hidden="true"></i></a>
    </div>

    <div class="row justify-content-center mt-5">
      <div class="col-lg-7 reveal">
        <%
            String status = request.getParameter("status");
            if ("success".equals(status)) {
        %>
            <div class="alert alert-success text-center">Message sent successfully! The Agency will contact you.</div>
        <%
            } else if ("error".equals(status)) {
        %>
            <div class="alert alert-danger text-center">There was an error sending your message. Please try again.</div>
        <%
            }
        %>
        <form id="contactForm" action="ContactServlet" method="POST" class="admin-form-row">
          <div class="row g-3">
            <div class="col-md-6">
              <label for="contactName" class="form-label">Name</label>
              <input type="text" class="form-control" id="contactName" name="name" required minlength="2">
              <div class="invalid-feedback">Enter your name.</div>
            </div>
            <div class="col-md-6">
              <label for="contactEmail" class="form-label">Email</label>
              <input type="email" class="form-control" id="contactEmail" name="email" required>
              <div class="invalid-feedback">Enter a valid email address.</div>
            </div>
            <div class="col-12">
              <label for="contactMessage" class="form-label">Message</label>
              <textarea class="form-control" id="contactMessage" name="message" rows="4" required minlength="10"><%= request.getParameter("hire") != null ? "I want to hire " + request.getParameter("hire") + " for a contract." : "" %></textarea>
              <div class="invalid-feedback">Message must be at least 10 characters.</div>
            </div>
            <div class="col-12 text-center mt-2">
              <button type="submit" class="btn btn-hero-primary">Send Message</button>
            </div>
          </div>
        </form>
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
