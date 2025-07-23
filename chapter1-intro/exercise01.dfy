// Lemmas and assertions

  //  In Dafny, an assert checks whether a condition is always true (a mathematical truth)
  // -> otherwise, the verifier will raise an error.
  // This boolean expression is about (mathematical) literal integers.
  // Run dafny on this file. See where it fails. Fix it.

lemma IntegerOrdering()
{
  // assert /*{*/ 5 < 3 /*}*/;
  assert 3 < 5;
}


// S O L U T I O N
// Dafny correctly fails to verify the assertion because it's checking if 5 < 3 is always true, and it’s not.
// to make the lemma pass verification, replace the incorrect assertion with a true one.
