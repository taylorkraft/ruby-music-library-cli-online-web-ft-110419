module Concerns

  module InstanceMethods

    def save
      self.class.all << self
    end

  end

  module Findable

  def find_by_name(name)
    self.all.find do |object|
        object.name == name
    end
  end

  def find_or_create_by_name(name)
  self.find_by_name(name) || self.create(name)
  end
end

end
