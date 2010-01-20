module Jekyll
  class Thing < Item
    def next
      pos = self.site.things.index(self)

      if pos && pos < self.site.things.length-1
        self.site.things[pos+1]
      else
        nil
      end
    end

    def previous
      pos = self.site.things.index(self)
      if pos && pos > 0
        self.site.things[pos-1]
      else
        nil
      end
    end
  end
end
