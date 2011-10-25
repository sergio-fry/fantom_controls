module FantomControls
  module Helpers
    def fantom_block_for(groups, content=nil, &block)
      if block_given?
        content_tag(:noindex) do
          content_tag(:span, :class => "fantom " + groups.to_a.map{|g| "fantom_access_group_" + g.to_s}.join(" "), &block)
        end
      elsif !content.nil?
        content_tag(:noindex) do
          content_tag(:span, content, :class => "fantom " + groups.to_a.map{|g| "fantom_access_group_" + g.to_s}.join(" "))
        end
      else
        nil
      end
    end
  end

  module Controller
    def fantom_groups groups, expires=nil
      cookies[:fantom_access_groups] = {:value => groups.to_a.map{|g| g.to_s}.join(","), :expires => expires}
    end
  end
end
