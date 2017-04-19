# $ ->
#   $('#input-file #pictureInput').on 'change', (event) ->
#     files = event.target.files
#     image = files[0]
#     # here's the file size
#     console.log image.size
#     reader = new FileReader

#     reader.onload = (file) ->
#       img = new Image
#       console.log file
#       img.src = file.target.result
#       $('#target').html img
#       console.log 'minh hai'
#       return

#     reader.readAsDataURL image
#     return

# $(document).on 'change', ->
#   $('#input-file #pictureInput').off().on 'change', (event) ->
#     console.log 'minh hai'
#     files = event.target.files
#     image = files[0]
#     # here's the file size
#     console.log image.size
#     reader = new FileReader

#     reader.onload = (file) ->
#       img = new Image
#       console.log file
#       img.src = file.target.result
#       $('#target').html img
#       return

#     reader.readAsDataURL image
#     return
#   return
