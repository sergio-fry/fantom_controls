# Include hook code here
require 'fantom'

ActionView::Base.send(:include, FantomControls::Helpers)
ActionController::Base.send(:include, FantomControls::Controller)
