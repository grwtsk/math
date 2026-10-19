import LeanRecursorContracts
open Lean LeanRecursorContracts

/- Synthetic mutations are never inserted as kernel declarations. -/
run_cmd do
  let env ← getEnv
  let some (.recInfo original) := env.find? `Nat.rec | throwError "RECURSOR_FIXTURE_MISSING"
  let some first := original.rules.head? | throwError "RULE_FIXTURE_MISSING"
  let check (condition : Bool) : IO Unit := do
    if !condition then throw <| IO.userError "RECURSOR_CONTROL_FAILED"
  let x := Expr.forallE `x (.sort .zero) (.bvar 0) .default
  let y := Expr.forallE `y (.sort .zero) (.bvar 0) .default
  let a := Expr.forallE `x (.sort .zero) (.bvar 0) .implicit
  let rule := { first with rhs := x }
  let left := { original with type := x, rules := [rule] }
  let changes : Array RecursorVal := #[
    { left with name := `Different },{ left with levelParams := [`Different] },
    { left with type := y },{ left with type := a },{ left with all := [] },
    { left with numParams := left.numParams+1 },{ left with numIndices := left.numIndices+1 },
    { left with numMotives := left.numMotives+1 },{ left with numMinors := left.numMinors+1 },
    { left with rules := [] },{ left with rules := [rule,rule] },
    { left with rules := [{rule with ctor := `Different}] },
    { left with rules := [{rule with nfields := rule.nfields+1}] },
    { left with rules := [{rule with rhs := y}] },{ left with rules := [{rule with rhs := a}] },
    { left with k := !left.k },{ left with isUnsafe := !left.isUnsafe }]
  let mut cases := 0
  liftM <| check (sameRecursor left left && sameRule rule rule)
  cases := cases+1
  for changed in changes do
    liftM <| check (!sameRecursor left changed)
    cases := cases+1
  liftM <| check (x == y && x == a && !x.equal y && !x.equal a)
  cases := cases+1
  liftM <| check (original.rules.length == 2 && !sameRecursor original {original with rules := original.rules.reverse})
  cases := cases+1
  liftM <| check ((association env `Nat original).isOk)
  cases := cases+1
  for changed in #[{original with numParams := original.numParams+1},
      {original with numIndices := original.numIndices+1},{original with all := []},
      {original with rules := original.rules.reverse},{original with rules := []},
      {original with type := .sort .zero},
      {original with numMotives := original.numMotives+1, numMinors := original.numMinors-1},
      {original with rules := [{first with nfields := first.nfields+1}] ++ original.rules.tail}] do
    liftM <| check (!(association env `Nat changed).isOk)
    cases := cases+1
  liftM <| check (!(association env `PProd original).isOk)
  cases := cases+1
  liftM <| IO.println s!"NATIVE_RECURSOR_CONTRACT_CONTROLS:{cases}"
