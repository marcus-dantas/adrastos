
const container = document.querySelector('.moving-container');
const movingItem = document.querySelector('.moving-item');
const signin = document.querySelector('.signin');
const signup = document.querySelector('.signup');

// Hover Sign in
signin.addEventListener("mouseenter", function (event) {
   movingItem.classList.remove("moved");
});

signin.addEventListener("mouseleave", function (event) {
  signin.classList.remove("updated");
  signup.classList.remove("updated");
});

// Hover Sign up
signup.addEventListener("mouseenter", function (event) {
  movingItem.classList.add("moved");
  signup.classList.add("updated");
  signin.classList.add("updated");
});

signup.addEventListener("mouseleave", function (event) {
  signin.classList.remove("updated");
  signup.classList.remove("updated");
});

// Reset behaviour
container.addEventListener("mouseleave", function (event) {
   movingItem.classList.remove("moved");
   signin.classList.remove("updated");
   signup.classList.remove("updated");
});