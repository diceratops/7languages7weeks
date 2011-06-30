plays(welch, vocals).
plays(thile, mandolin).
plays(douglas, dobro).
plays(riggs, mandolin).
plays(dawg, banjo).
plays(artie, guitar).
plays(dirk, guitar).
plays(hendrix, guitar).
plays(steve, bass).

genre(welch, oldtimey).
genre(thile, bluegrass).
genre(riggs, itm).
genre(douglas, bluegrass).
genre(douglas, rock).
genre(steve, bluegrass).
genre(riggs, bluegrass).
genre(artie, gospel).
genre(dawg, bluegrass).
genre(dirk, alternative).
genre(hendrix, rock).

plays_instrument(X, Y) :- plays(X, Y).

plays_genre(X, Z) :- genre(X, Z).

instrument_genre(Y, Z) :- genre(X, Z), plays(X, Y).



//There's an issue here! If you ask for (Instrument, bluegrass), you get returned mandolin twice! I'm not sure how to fix this yet, but i'm hoping to be illuminated in a few chapters down the road.
