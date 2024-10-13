# lib/sinatra_social_share_button.rb
require 'sinatra'

module SinatraSocialShareButton
  class << self
    attr_accessor :config

    def configure
      yield self.config ||= Config.new
    end
  end

  class Config
    attr_accessor :allow_sites

    def initialize
      @allow_sites = %w[twitter facebook weibo qq douban google_bookmark
                        pinterest email linkedin wechat vkontakte
                        xing reddit hacker_news telegram odnoklassniki
                        whatsapp_app whatsapp_web]
    end
  end

  module Helpers
    def social_share_button_tag(title, url, _options = {})
      allowed_sites = SinatraSocialShareButton.config.allow_sites
      html = "<div class='social-share-button'>"
      allowed_sites.each do |site|
        share_url = generate_share_url(site, url, title)
        html += "<a href='#{share_url}' target='_blank' class='share-button #{site}'>Share on #{site.capitalize}</a>"
      end
      html += '</div>'
      html
    end

    private

    def generate_share_url(site, url, title)
      case site
      when 'twitter'
        "https://twitter.com/share?url=#{url}&text=#{title}"
      when 'facebook'
        "https://www.facebook.com/sharer/sharer.php?u=#{url}"
      when 'pinterest'
        "https://pinterest.com/pin/create/button/?url=#{url}&description=#{title}"
      when 'linkedin'
        "https://www.linkedin.com/shareArticle?mini=true&url=#{url}&title=#{title}"
      else
        '#'
      end
    end
  end
end
