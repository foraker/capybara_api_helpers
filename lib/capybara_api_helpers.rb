require "capybara_api_helpers/version"

module CapybaraApiHelpers
  def hit_api(path, parameters = {}, method = :get)
    path = ["/", path, ".json"].join

    if method == :get
      visit([path, parameters.to_query].compact.join('?'))
    else
      page.driver.submit(method, path, parameters)
    end

    JSON.parse(page.body) rescue page.body
  end

  def post_api(path, parameters = {})
    hit_api(path, parameters, :post)
  end

  def put_api(path, parameters = {})
    hit_api(path, parameters, :put)
  end
end
