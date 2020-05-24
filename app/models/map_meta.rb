class MapMeta
  attr_reader :establishments

  def initialize(establishments)
    @establishments = establishments
  end

  def center
    [
      establishments.map(&:longitude).minmax.sum / 2,
      establishments.map(&:latitude).minmax.sum / 2
    ]
  end

  def zoom
    long_min, long_max = establishments.map(&:longitude).minmax
    long = long_max - long_min
    long_zoom = - 14 / 180 * long + 14
    lat_min, lat_max = establishments.map(&:latitude).minmax
    lat = lat_max - lat_min
    lat_zoom = - 14 / 360 * lat + 14
    [long_zoom, lat_zoom].min
  end
end
