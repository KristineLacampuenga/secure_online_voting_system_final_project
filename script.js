var modal = document.getElementById('id01');

function closeModal() {
  modal.style.display = 'none';
}

function togglePasswordVisibility() {
  var passwordInput = document.getElementById("password");
  var eyeIcon = document.getElementById("eye-icon");

  if (passwordInput.type === "password") {
    passwordInput.type = "text";
    eyeIcon.src = "bg-image/open-eye.png";
  } else {
    passwordInput.type = "password";
    eyeIcon.src = "bg-image/close-eye.png";
  }
}

document.addEventListener('DOMContentLoaded', function () {
  var emailInput = document.getElementById('email');
  var passwordInput = document.getElementById("password");
  var rememberMeCheckbox = document.getElementById('rememberMe');

  emailInput.addEventListener('focus', function () {
    this.style.borderColor = '#ff0000';
  });
  emailInput.addEventListener('blur', function () {
    if (this.value.trim() === '') {
      this.style.borderColor = '';
    }
  });

  passwordInput.addEventListener('focus', function () {
    this.style.borderColor = '#ff0000';
  });
  passwordInput.addEventListener('blur', function () {
    if (this.value.trim() === '') {
      this.style.borderColor = '';
    }
  });

  passwordInput.addEventListener('input', function () {
    if (this.value.trim() !== "") {
      this.classList.add("filled");
    } else {
      this.classList.remove("filled");
    }
  });

  if (localStorage.getItem('rememberMe') === 'true') {
    emailInput.value = localStorage.getItem('email');
    rememberMeCheckbox.checked = true;
  }

  document.getElementById('loginForm').addEventListener('submit', function (event) {
    if (!validateForm()) {
      event.preventDefault();
      return;
    }

    if (rememberMeCheckbox.checked) {
      localStorage.setItem('email', emailInput.value);
      localStorage.setItem('rememberMe', 'true');
    } else {
      localStorage.removeItem('email');
      localStorage.removeItem('rememberMe');
    }
  });
});

function checkInputValidity(inputId) {
  var input = document.getElementsByName(inputId)[0];
  var errorDiv = document.getElementById(inputId + '-error');

  if (input.value === "" || (errorDiv && errorDiv.innerHTML !== "")) {
    input.classList.add("red-placeholder");
  } else {
    input.classList.remove("red-placeholder");
  }
}

const sliderWrapper = document.getElementById('slider-wrapper');
const slides = document.querySelectorAll('.slide');
let index = 0;

setInterval(() => {
  index = (index + 1) % slides.length;
  sliderWrapper.style.transform = `translateX(-${index * 100}%)`;
}, 5000);

function validateForm() {
  checkInputValidity('email');
  checkInputValidity('password');

  return (!document.getElementsByName('email')[0].classList.contains("red-placeholder") &&
    !document.getElementsByName('password')[0].classList.contains("red-placeholder"));
}

let scrollIndex = 0;
let slideWidth = 0;

function startScrollingSlideshow() {
  const container = document.querySelector(".slideshow-container");
  const slides = document.querySelectorAll(".slide-img");

  if (slides.length === 0) return;

  function updateSlideWidth() {
    slideWidth = container.clientWidth;
  }

  updateSlideWidth();
  window.addEventListener("resize", updateSlideWidth);

  setInterval(() => {
    scrollIndex = (scrollIndex + 1) % slides.length;
    container.scrollTo({
      left: scrollIndex * slideWidth,
      behavior: "smooth"
    });
  }, 3000);
}

document.addEventListener("DOMContentLoaded", startScrollingSlideshow);
