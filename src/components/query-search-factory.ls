# console.log 'window:', window
console.log 'query-search-factory: window.f6aTwFrontend:', window.f6aTwFrontend
CONFIG = window.f6aTwFrontend.CONFIG

cached-data =
  data: {}
  text: ''
  update-time: new Date!

angular.module 'f6aTwFrontend'
  .factory 'querySearch', <[ $resource ]> ++ ($resource) ->
    get-update-time: ->
      cached-data.update-time

    get-data: ->
      cached-data.data.data
      
    query: (text, success-f) ->
      if cached-data.query-text == text
        return cached-data.data

      cached-data.text = text

      url = 'http://' + CONFIG.BACKEND_HOST + '/api/query?str=' + text + '&limit=10'

      console.log 'url:', url

      query-success = (the-data) ->
        cached-data.data = the-data
        cached-data.update-time = new Date!
        console.log 'cached-data.update-time:', cached-data.update-time, cached-data.update-time.get-time!
        if success-f
          success-f the-data

      query-data = $resource url

      query-data.get query-success

      cached-data.data
