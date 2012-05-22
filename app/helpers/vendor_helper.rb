module VendorHelper
  def gravatar_for(vendor, options = { :size => 50 })
    gravatar_image_tag(vendor.email.downcase, :alt => vendor.name,
                                            :class => 'gravatar',
                                            :gravatar => options)
  end
end
