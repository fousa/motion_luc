class Object
    def try(*a, &b)
        __send__(*a) if respond_to?(*a)
    end
end

class NilClass
    def try(*args)
        nil
    end
end