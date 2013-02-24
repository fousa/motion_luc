class Object
  def localize(key)
    BubbleWrap.localized_string(key, key)
  end
end