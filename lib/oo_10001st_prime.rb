# Implement your object-oriented solution here!
class Prime
    attr_accessor :nth_element
    @@prime_array = [2,3,5,7,11,13,17,19,23,29]

    def initialize(nth_element)
        @nth_element = nth_element
    end

    def number()
        if @nth_element <= @@prime_array.length
            @@prime_array[@nth_element -1]
        else
            upper_limit = @nth_element * 15
            is_prime_array = Array (2..(upper_limit))
            i = 2
            while(i < Math.sqrt(upper_limit))
                if(is_prime_array[i-2])
                    j = i ** 2
                    while(j < upper_limit)
                        is_prime_array[j - 2] = 0
                        j += i
                    end
                end
                i += 1
            end
            @@prime_array = is_prime_array.select {|isPrime| isPrime != 0}

            @@prime_array[@nth_element - 1]
        end
    end
end