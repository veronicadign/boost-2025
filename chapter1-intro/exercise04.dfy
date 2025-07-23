//#title Predicates

// A common thing you'll want is a function with a boolean result.
ghost function AtLeastTwiceAsBigFunction(a:int, b:int) : bool
{
  a >= 2*b
}

// It's so fantastically common that there's a shorthand for it: `predicate`.
ghost predicate AtLeastTwiceAsBigPredicate(a:int, b:int)
{
  a >= 2*b
}

ghost function Double(a:int) : int
{
  2 * a
}

lemma TheseTwoPredicatesAreEquivalent(x:int, y:int)
{
  assert AtLeastTwiceAsBigFunction(x, y) == AtLeastTwiceAsBigPredicate(x, y);
}

// Add a 'requires' precondition to make this lemma verify.
// Keep it as simple as possible (e.g. avoid named predicates).
lemma FourTimesIsPrettyBig(x:int)
  // assert AtLeastTwiceAsBigPredicate(Double(Double(x)), x);
  // this assertion means we are asserting (2 * (2 * x)) >= 2 * x
  // which simplifies to 4 * x >= 2 * x which is of course true for all x>=0
  // Dafny wants proof or assumptions (like a requires) to establish that x>=0 (precondition):
  requires x >= 0
{
  assert AtLeastTwiceAsBigPredicate(Double(Double(x)), x);
}
