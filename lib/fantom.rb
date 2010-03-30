module FantomControls
  module Helpers
    def fantom_block_for(groups, content=nil, &block)
      if block_given?
        content_tag(:span, :class => "fantom " + groups.to_a.map{|g| "fantom_access_group_" + g.to_s}.join(" "), &block)
      elsif !content.nil?
        content_tag(:span, content, :class => "fantom " + groups.to_a.map{|g| "fantom_access_group_" + g.to_s}.join(" "))
      else
        nil
      end
    end
  end

  module Controller
    def fantom_groups groups
      cookies[:fantom_access_groups] = groups.to_a.map{|g| g.to_s}.join(",")
    end
  end
end
