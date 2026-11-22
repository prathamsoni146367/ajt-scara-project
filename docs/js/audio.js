document.addEventListener('DOMContentLoaded', function () {
  var bgmAudio = document.getElementById('bgmAudio');
  if (!bgmAudio) return;

  bgmAudio.volume = 0.35;

  function startMusic() {
    bgmAudio.play().catch(function () {});
  }

  startMusic();

  ['click', 'keydown', 'touchstart', 'scroll'].forEach(function (evt) {
    document.addEventListener(evt, function once() {
      startMusic();
      document.removeEventListener(evt, once);
    }, { once: true });
  });
});
