require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'https://www.fredrlevinerealestate.com/'
SitemapGenerator::Sitemap.create do
  add '/', :changefreq => 'weekly', :priority => 0.9
  add '/about', :changefreq => 'weekly'
  add '/services', :changefreq => 'weekly'
  add '/packages', :changefreq => 'weekly'
  add '/blog', :changefreq => 'weekly'

end
SitemapGenerator::Sitemap.ping_search_engines # Not needed if you use the rake tasks