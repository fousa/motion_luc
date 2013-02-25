class UILabel
  def fit
    if text.nil?
      self.frame = CGRect.new(self.frame.origin, CGSizeZero)
    else
      self.frame = CGRect.new(self.frame.origin, CGSize.new(self.text.sizeWithFont(self.font, constrainedToSize:CGSize.new(9999, self.frame.size.height)).width, self.frame.size.height))
    end
  end
end