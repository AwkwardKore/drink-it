module BeersHelper
  def brewery_id_select
    names = Brewery.all
      breweries_all = []

      names.each do |t|
        breweries_all << [t.name, t.id]

      end
      breweries_all
  end

  def style_id_select
    names = Style.all
      styles_all = []

      names.each do |t|
        styles_all << [t.name, t.id]

      end
      styles_all
  end
end
