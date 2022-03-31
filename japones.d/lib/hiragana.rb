#!/usr/bin/env ruby

# Silabario japonés

hiragana = {}
hiragana[:group1] = { a: "\u{3042}",
                      i: "\u{3044}",
                      u: "\u{3046}",
                      e: "\u{3048}",
                      o: "\u{304A}"}

hiragana[:group2] = { ka: "\u{304B}",
                      ki: "\u{304D}",
                      ku: "\u{304F}",
                      ke: "\u{3051}",
                      ko: "\u{3053}"}

puts hiragana
