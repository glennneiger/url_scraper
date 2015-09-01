require 'open-uri'
require 'coderay'

class WelcomeController < ApplicationController
protect_from_forgery

  def index
  end

  def show
    parsed_url = Nokogiri::HTML(open(params["url"]))
    @buttons = make_buttons(parsed_url.xpath("*"))
    @doc = CodeRay.scan(parsed_url.to_html, :html).html(:line_numbers => :table, :css => :class).html_safe
  end

  private

  def make_buttons(tag_list)
    summary = {}
    summary.default = 0
    tag_list.each {|node| summary = find_nodes(node, summary)}
    summary.each {|key, value| "#{key}: #{value}"}
    summary
  end

  def find_nodes(node, summary)
    if node.element?
        summary[node.name] = summary[node.name] + 1
    end
    node.children.each {|node_child| summary = find_nodes(node_child, summary)}
    summary
  end
end
