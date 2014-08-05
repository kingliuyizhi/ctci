# Write a method to count the number of 2s that appear in all the numbers between 0 and n (inclusive).

class CountTwo

  # Brute force
  def self.count(n)
    c = 0
    (2..n).each do |d|
      c += count_helper(d)
    end
    c
  end

  private
  def self.count_helper(n)
    c = 0
    until n == 0
      c += 1 if n % 10 == 2
      n /= 10
    end
    c
  end

end