# Implement your procedural solution here!



def prime_number_for(nth_element)
    upper_limit = nth_element * 15
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
    prime_array = is_prime_array.select {|isPrime| isPrime != 0}

    prime_array[nth_element - 1]
end
