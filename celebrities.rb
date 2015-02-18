require_relative "testing_library"

celebs = ["Britney", "Miley", "Madonna", "Cher", "Bruno", "Michael"]

def how_many_celebrities(celebs)
  celebs.length
end


def name_lengths(celebs)
  celebs.map do |name|
    name.length
  end
  # celebs.map { |name| name.length}
  # celebs.map (&:length)
end


def reverse_celebrity_names(celebs)
  celebs.map do |name|
    name.reverse
  end
  # celebs.map { |name| name.reverse}
  # celebs.map (&:reverse)
end


def first_three_celebrities_with_each(celebs)
  celebs[0..2].each do |celeb|
  end
end


def first_three_celebrities_without_each(celebs)
  celebs.take(3)
  # celebs[0..2]
end


def reverse_case_celebrities_names(celebs)
  celebs.map do |name|
    name.swapcase
  end
  # celebs.map { |name| name.swapcase}
  # celebs.map (&:swapcase)

  # celebs.map do |name|
  #   name.scan(/./).map do |letter|
  #     if letter == letter.upcase
  #       letter = letter.downcase
  #     else
  #       letter = letter.upcase
  #     end
  #   end.join("")
end


def sum_of_all_celebrity_name_lengths(celebs)
  # y = celebs.map { |celebrity| celebrity.length}
  # y.inject { |sum, x| sum + x}

  celebs.reduce(0) { |acc, c| acc + c.length}
end


def celebrities_with_long_names(celebs)
  celebs.map { |celeb| celeb.length > 5}
  # celebs.map do |celeb|
  #   if celeb.length > 6
  #     true
  #   else
  #     false
  #   end
  # end
end


check("how_many_celebrities", how_many_celebrities(celebs) == 6)
check("name_lengths", name_lengths(celebs) == [7, 5, 7, 4, 5, 7])
check("reverse_celebrity_names", reverse_celebrity_names(celebs) == ["yentirB", "yeliM", "annodaM", "rehC", "onurB", "leahciM"])
check("first_three_celebrities_with_each", first_three_celebrities_with_each(celebs) == ["Britney", "Miley", "Madonna"])
check("first_three_celebrities_without_each", first_three_celebrities_without_each(celebs) == ["Britney", "Miley", "Madonna"])
check("reverse_case_celebrities_names", reverse_case_celebrities_names(celebs) == ["bRITNEY", "mILEY", "mADONNA", "cHER", "bRUNO", "mICHAEL"])
check("sum_of_all_celebrity_name_lengths", sum_of_all_celebrity_name_lengths(celebs) == 35)
check("celebrities_with_long_names", celebrities_with_long_names(celebs) == [true, false, true, false, false, true])
