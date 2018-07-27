p %w[first second third].map.with_index { |e, index| [e.to_sym, e[0].upcase + e[-2..-1] + " (#{index + 1})"] }.to_h
