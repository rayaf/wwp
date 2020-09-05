module TweetsHelper
  def tweet_com_tags texto
    texto.gsub(/#\w+\b/){|tag| link_to tag, "/tags/#{tag.delete('#')}"}.html_safe
  end
end
