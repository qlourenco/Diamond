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
        card.style.height = '0px'
      }, 500)

      setTimeout(() => {
        card.remove();
      }, 2000)
    })
  })

}

export { delete_card };
