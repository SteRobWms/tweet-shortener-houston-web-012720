require 'pry'

def dictionary(word)
    lookup = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    }
    if lookup[word.downcase]
        return lookup[word.downcase]
    end
end

def word_substituter(tweet)
    tweet.split(" ").map do |word|
        if dictionary(word).nil?
            word
        else
            dictionary(word)
        end
    end.join(" ")
end

def bulk_tweet_shortener(tweet_arr)
    tweet_arr.map{|tweet| puts (word_substituter(tweet))}
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    else tweet
    end
end

def shortened_tweet_truncator(tweet)
    chirp = word_substituter(tweet)
    if chirp.length > 140
        chirp = chirp.slice(0...140)
    end
    chirp
end