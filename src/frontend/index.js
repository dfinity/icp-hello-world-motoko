import { backend } from "declarations/backend";

document.querySelector("form").addEventListener("submit", async (e) => {
  e.preventDefault();
  const button = e.target.querySelector("button");
  const name = document.getElementById("name").value.toString();

  button.setAttribute("disabled", true);
  // Interact with backend actor, calling the greet method
  const greeting = await backend.greet(name);
  button.removeAttribute("disabled");

  document.getElementById("greeting").innerText = greeting;
  return false;
});
