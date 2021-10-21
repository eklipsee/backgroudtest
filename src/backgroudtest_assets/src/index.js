import { backgroudtest } from "../../declarations/backgroudtest";

document.getElementById("clickMeBtn").addEventListener("click", async () => {
  const name = document.getElementById("name").value.toString();
  // Interact with backgroudtest actor, calling the greet method
  const greeting = await backgroudtest.greet(name);

  document.getElementById("greeting").innerText = greeting;
});
