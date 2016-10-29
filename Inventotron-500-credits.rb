require 'squib'
require 'pp'

Squib::Deck.new(cards: 3, width: "8.9cm", height: "5.9cm") do

  front_text = '<span font_desc="Futura T OT Book 70">C</span>ARDS FOR INVENTING DAFT IDEAS.

  <span font_desc="Futura T OT Book 70">B</span>Y RICHARD SEWELL, LIBBY MILLER, JOHN HAWKES-REED AND BRISTOL HACKSPACE'

  new_names = [front_text, front_text, front_text]
  new_colours_text = ["#335145","#792D00","#324A5F"]
  new_colours_background = ["#FEFFE8", "#FEFFE8", "#FEFFE8"]
  fonts = ["Futura T OT Book 50", "Futura T OT Book 50","Futura T OT Book 50"]
  subs = ["INSTRUCTIONS","INSTRUCTIONS","INSTRUCTIONS"]

  bleed  = "0.5cm"

  background color: new_colours_background
  text str: new_names,
        #hint: :red,
        markup: true,
        x: bleed, y: bleed,
        width: "7.9cm", height: "4.5cm",
        color: new_colours_text, font: fonts,
        align: :center, valign: 'MIDDLE'

#  text str: subs,
#        x: bleed, y: "5cm",
#        width: "7.9cm", height: "0.1cm",
#        color: new_colours_text, font: 'Futura T OT Book 30',
#        align: :center, valign: 'BOTTOM'

  save prefix: 'credits_', format: :png

end
