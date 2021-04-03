SELECT fst.name AS 'from', snd.name AS 'to' FROM flights
LEFT JOIN cities AS fst ON flights.from = fst.label
LEFT JOIN cities AS snd ON flights.to = snd.label;