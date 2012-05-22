module PassesHelper

def video_embed_tag(link)
  id = link.split('/').last

        return "<iframe width='853' 
                        height='505' 
                        src='http://www.youtube.com/embed/#{id}' 
                        frameborder='0' 
                        allowfullscreen>
                </iframe>"
end
end
