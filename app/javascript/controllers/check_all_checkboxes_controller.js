import{ Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [`checkbox`]
  connect(){
  }

 checkAll(event) {
  this.checkboxTargets.forEach((target) => {
    target.checked = event.currentTarget.checked
  })
 }
}
