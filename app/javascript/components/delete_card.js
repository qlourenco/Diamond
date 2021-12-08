const delete_card = () => {
  const delete_icon = document.querySelector('.my-trash')
  const card = document.querySelector('.card-search')
  // console.log(card)
  // console.log(delete_icon)
  delete_icon.addEventListener('click', remove_card_search)

  const remove_card_search = () => {
    card.remove()
  }
};


export { delete_card };
