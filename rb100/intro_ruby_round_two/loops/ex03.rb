# Launch School - Intro to Ruby
# loops - ex03.rb
# Answered On 07/22/2020


# def add_one(start)
#     start - 1
# end

# p add_one(6)
# p add_one(5)
# p add_one(4)
# p add_one(3)
# p add_one(2)


# def minus_one(start)
#     puts start
#     if start > 0
#       minus_one(start - 1)
#     end 
# end
# p minus_one(5)


def minus_one(number)
    if number <= 0
        puts number
    else
        puts number
        minus_one(number - 1)
    end 
end

minus_one(5)