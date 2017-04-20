$ ->
  Position.init()

@Position =
  init: ->
    this.buildMapFromMarkerHash()

  buildMapFromMarkerHash: (elem_id, zoom, markers_hash) ->
    handler = Gmaps.build('Google')

    handler.buildMap {
      provider: {}
      internal:
        id: elem_id
    }, ->
      markers = handler.addMarkers markers_hash
      handler.bounds.extendWith markers
      handler.fitMapToBounds()
      window.map = handler.getMap()
      map.setZoom zoom

