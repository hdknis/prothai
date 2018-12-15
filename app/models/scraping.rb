class Scraping
  def self.book_genre_urls
    agent = Mechanize.new
    links = []

      current_page = agent.get("https://bookmeter.com/rankings")
      elements = current_page.search('.detail__title a')
      elements.each do |ele|
        links << ele.get_attribute('href')
      end

    links.each do |link|
       get_product('https://bookmeter.com' + link)
    end

  end

  # def self.get_book_urls(genre_link)
  #   agent = Mechanize.new
  #   genre_links = []
  #     page = agent.get(genre_link)
  #     titles = page.at('.detail__title a')
  #     puts elements
  #      titles.each do |ele|
  #       genre_links << ele.get_attribute('href')
  #     end

  #   genre_links.each do |link|
  #     puts link
  #     get_product('https://bookmeter.com/' + link)
  #   end

  # end

  def self.get_product(link)
    puts link
    agent = Mechanize.new
    page = agent.get(link)
    title = page.at('.inner__title').inner_text if page.at('.inner__title')
    image_url = page.at('.group__image img')[:src] if page.at('.group__image img')
    director = page.at('.header__authors a').inner_text if page.at('.header__authors a')
    page = page.at('.bm-details-side__item span').inner_text if page.at('.bm-details-side__item span')

    product = Product.where(title: title).first_or_initialize
    product.image_url = image_url
    product.director = director
    product.page = page
    product.save
  end
end