import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["entries", "pagination"]

  scroll() {
    let body = document.body,
        html = document.documentElement,
        height = Math.max(body.scrollHeight, body.offsetHeight, html.clientHeight, html.scrollHeight, html.offsetHeight)

    if (window.pageYOffset >= height - window.innerHeight) {
      this.loadMore()
    }
  }

  loadMore() {
    let next_page = this.paginationTarget.querySelector("a[rel=next]")
    if (next_page == null) {
      return
    }

    Rails.ajax({
      type: 'GET',
      url: next_page.href,
      dataType: 'json',
      success: (data) => {
        this.entriesTarget.insertAdjacentHTML('beforeend', data.entries)
        this.paginationTarget.innerHTML = data.pagination
      }
    })
  }
}