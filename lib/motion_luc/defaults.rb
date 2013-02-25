class Defaults
  def self.instance
    Dispatch.once { @instance ||= Defaults.new }
    @instance
  end

  DEFAULT_KEYS.each do |key|
    define_method "#{key}=", do |new_value|
      set_key("#{key}", value:new_value)
    end

    define_method "#{key}" do
      get_key("#{key}")
    end

    define_method "#{key}?" do
      value = get_key("#{key}")
      !value.nil? and !value.empty?
    end
  end

  protected

  def defaults
    @defaults ||= App.user_cache
  end

  def set_key(key, value:value)
    if value.nil?
      defaults.removeObjectForKey(key)
    else
      defaults[key] = value
    end
    defaults.synchronize
  end

  def get_key(key)
    defaults.synchronize
    defaults[key]
  end
end