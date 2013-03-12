class SlidesController < ApplicationController
	def index
	end
	def create
=begin
		pngcount = 0
		params[:genSlides].each do |i, pngdata|
			format,data = pngdata.split(",")
			newdata = base64_url_decode(data)

			gotopath = pngcount.to_s[/^\d{5}/]

			File.open("/tmp/slide#{gotopath}.png", 'w') { |file|
				file.write(newdata)
			}

			pngcount=pngcount+1
		end

		`ffmpeg -r 1 -i /tmp/slide%05d.png /tmp/zaptalk.mp4`
=end
		redirect_to :action => "index"
	end
	def base64_url_decode(str)
		str += '=' * (4 - str.length.modulo(4))
		Base64.decode64(str.tr('-_','+/'))
	end
end
