$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'spob_browser_detector/detector'
require 'spob_browser_detector/rails/view_helpers'

module SpobBrowserDetector
  VERSION = '1.0.2'
end

ActionView::Base.send( :include, SpobBrowserDetector::Rails::ViewHelpers ) if defined?( ActionView )
