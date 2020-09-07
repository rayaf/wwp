module TagsHelper
  def tags_com_link texto
    texto.gsub(/#\w+\b/){|tag| link_to tag, "/tags/#{tag.delete('#')}"}.html_safe
  end
end
