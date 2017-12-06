defmodule Lists do

    def len([]), do: 0
    def len([_h|t]), do: 1+len(t)

    def sum_pairs([]), do: []
    def sum_pairs([h1, h2 | t]), do: [h1+h2| sum_pairs(t)]

    def even_length?([]), do: true
    def even_length?([h1|[]]), do: false
    def even_length?([h1, h2| t]), do: true && even_length?(t)
end