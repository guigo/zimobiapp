module PagesHelper
  def page_links_partial_path
    if user_signed_in?
      "pages/options/home_signed_in_links"
    else
      "pages/options/home_on_signed_in_links"
    end
  end
end
