do ->
  month = document.getElementById 'month-checkbox'

  chrome.storage.local.get 'showMonth', (items) ->
    month.checked = !!items.showMonth

  month.onchange = (event) ->
    chrome.storage.local.set { showMonth: event.target.checked } , () ->
      console.log('saved')
  