(->
  # Background size
  bgSize = 1920
  bgSize = 1440 if innerWidth <= 1440 and innerHeight <= 1024
  bgSize = 768  if innerWidth <= 768  and innerHeight <= 768
  bgSize = 480  if innerWidth <= 480  and innerHeight <= 480

  # Me photo size
  imageSize = 1920
  imageSize = 1440 if innerWidth <= 1440
  imageSize = 768  if innerWidth <= 768
  imageSize = 480  if innerWidth <= 480

  # Choose a header background
  randomInt = Math.floor(Math.random() * 4 + 1)
  fullscreen = document.querySelector '.page-header'
  backgroundImageUrl = image_path("background-#{randomInt}@#{bgSize}.jpg")

  fullscreen.style.backgroundImage = "url('#{backgroundImageUrl}')"

  # Async load images
  meImageUrl = image_path("photo@#{imageSize}.jpg")
  document.querySelector('img.me').src = meImageUrl

  # Menu
  menuItems = document.querySelectorAll 'header > nav ul li'

  selectedMenuItem = 0
  selectedMenuItemHighlighted = true

  for item, i in menuItems
    if item.childNodes[0].attributes.href.value == document.location.hash
      selectedMenuItem = i

  update = ->
    if selectedMenuItemHighlighted
      menuItems[selectedMenuItem].classList.add 'active'
    else
      menuItems[selectedMenuItem].classList.remove 'active'

  mouseOver = (event) ->
    selectedMenuItemHighlighted = event.target.parentElement == menuItems[selectedMenuItem]
    update()

  mouseOut = ->
    selectedMenuItemHighlighted = true
    clearTimeout timeout
    timeout = setTimeout update, 300

  for item in menuItems
    item.addEventListener 'mouseover', mouseOver, false
    item.addEventListener 'mouseout',  mouseOut,  false

  timeout = null
  update()

  # Popup menu
  popupNav = document.querySelector '.popup-nav'
  trigger = popupNav.querySelector '.trigger'
  navList = popupNav.querySelector 'nav ul'

  trigger.addEventListener 'click', ->
    trigger.classList.toggle 'menu-is-open'
    navList.classList.toggle 'is-visible'

  # Make header size static
  belowFullscreen = document.querySelector '.page-body'
  height = fullscreen.offsetHeight

  if innerHeight < 700
    height = 700

  fullscreen.style.height = height + 'px'
  belowFullscreen.style.top = height + 'px'

  # Anchor smooth scrolling
  smoothScroll.init
    offset: -20
    callbackAfter: (toggle) ->
      for item, i in menuItems
        if item.childNodes[0] == toggle
          menuItems[selectedMenuItem].classList.remove 'active'
          selectedMenuItem = i
          menuItems[selectedMenuItem].classList.add 'active'

      trigger.classList.remove 'menu-is-open'
      navList.classList.remove 'is-visible'
)()
