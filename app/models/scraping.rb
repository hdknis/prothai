class Scraping
  def self.book_genre_urls
    agent = Mechanize.new
    links = []

      current_page = agent.get("https://www.tigermov.com/internship/")
      elements = current_page.search('.internBox__article a')
      elements.each do |ele|
        links << ele.get_attribute('href')
      end

    links.each do |link|
       get_product('https://www.tigermov.com' + link)
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
    title = page.at('.sectionBox__h1__type2').inner_text if page.at('.sectionBox__h1__type2')
    catch_copy = page.at('.detailIntro__txt').inner_text if page.at('.detailIntro__txt')
    business_content = page.at('.detailMain__article__txt').inner_text if page.at('.detailMain__article__txt')
    experience_content = page.at('.detailMain__article__txt p').inner_text if page.at('.detailMain__article__txt p')
    request_content = page.at('.detailMain__article__txt p').inner_text if page.at('.detailMain__article__txt p')
    application_requirement = page.at('.bm-details-side__item span').inner_text if page.at('.bm-details-side__item span')
    country = page.at('.sectionBox__h1__type2').inner_text if page.at('.sectionBox__h1__type2')
    city = page.at('.sectionBox__h1__type2').inner_text if page.at('.sectionBox__h1__type2')
    period = page.at('.sectionBox__h1__type2').inner_text if page.at('.sectionBox__h1__type2')
    days = page.at('.sectionBox__h1__type2').inner_text if page.at('.sectionBox__h1__type2')
    time = page.at('.sectionBox__h1__type2').inner_text if page.at('.sectionBox__h1__type2')
    allowance = page.at('.sectionBox__h1__type2').inner_text if page.at('.sectionBox__h1__type2')
    company_introduction = page.at('.sectionBox__h1__type2').inner_text if page.at('.sectionBox__h1__type2')
    company_introduction_picture = page.at('.sectionBox__h1__type2').inner_text if page.at('.sectionBox__h1__type2')
    employees_number = page.at('.sectionBox__h1__type2').inner_text if page.at('.sectionBox__h1__type2')
    language = page.at('.sectionBox__h1__type2').inner_text if page.at('.sectionBox__h1__type2')
    manager_profile = page.at('.sectionBox__h1__type2').inner_text if page.at('.sectionBox__h1__type2')

    product = Product.where(title: title).first_or_initialize
    product.catch_copy = catch_copy
    product.business_content = business_content
    product.experience_content = experience_content
    product.request_content = request_content
    product.application_requirement = application_requirement
    product.country = country
    product.city = city
    product.period = period
    product.days = days
    product.time = time
    product.allowance = allowance
    product.company_introduction = company_introduction
    product.company_introduction_picture = company_introduction_picture
    product.employees_number = employees_number
    product.language = language
    product.manager_profile = manager_profile
    product.save
  end
end