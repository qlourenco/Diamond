const loaderSearch = () => {
  const btnSearch = document.getElementById('btn-search')
  const loader = document.querySelector('.content-loader')
  if (btnSearch == null) {
    return
  }
  btnSearch.addEventListener('click', () => {
    loader.style.display = 'flex'
  })
}

export { loaderSearch };
