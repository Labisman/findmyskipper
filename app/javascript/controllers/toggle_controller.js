import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["table", "togglableElement", "togglefutureElement"]
  connect() {
  }
  fire() {
    this.togglableElementTarget.classList.toggle("d-none");
    this.togglefutureElementTarget.classList.add("d-none");
    // this.tableElementTarget.classList.add("visible");
    console.log("hello")
  }
  future() {
    this.togglefutureElementTarget.classList.toggle("d-none");
    this.togglableElementTarget.classList.add("d-none");
    // this.tableElementTarget.classList.add("visible");
  }
}
