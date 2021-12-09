const delete_card = () => {
  const cards = document.querySelectorAll(".card-search"  )
  cards.forEach((card) => {
    const trashBtn = card.querySelector(".my-trash")
    if (trashBtn == null) {
      return
    }
    trashBtn.addEventListener("click", () => {
      card.classList.add('translate-card')
      setTimeout(() => {
        card.classList.add('space-card')
        card.classList.remove('py-4')
      }, 200)

      setTimeout(() => {
        card.remove();
      }, 300)
    })
  })

}

export { delete_card };
