import { Controller } from 'stimulus'
import { currentUserId } from '../helpers/auth'

export default class extends Controller {
    static targets = ['actions']
    static values = {
        userId: String,
    }

    connect() {
        if (document.querySelectorAll(`#${this.element.id}`).length > 1) {
            this.element.remove()
            return
        }

        this.element.scrollIntoView({ block: 'nearest' })
    }

    toggleActions() {
        if (this.hasActionsTarget && this.userIdValue === currentUserId()) {
            this.actionsTarget.classList.toggle('d-none')
        }
    }
}
