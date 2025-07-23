//#title Boolean logic

// the assertion is statically checking a boolean expression that is about a boolean implication.
// Run dafny on this file. See where it fails. Fix it.

lemma BooleanLogic()
{
    assert false ==> true;
}

// S O L U T I O N
// "If true, then false", is a false implication.
// some valid (logically true) implications are:
// true ==> true
// false ==> false
// false ==> true
