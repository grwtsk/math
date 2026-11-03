# Scoped transitivity applications: a bounded Lean.Expr-to-context check

Local attribution: grwtsk contributors. Authored mathematical source review, 2026-11-02.

## Abstract

The existing [constant-spine recognizer](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/LeanExprConstantSpine.lean)
only admitted closed arguments; it could not inspect a theorem application
with local hypotheses. The new
[ScopedNatLeTransExpression.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/ScopedNatLeTransExpression.lean)
adds a deliberately restricted source class: exactly the actual
`Nat.le_trans` constant, three local `Nat` indices and two local proof
arguments. Its indexed syntactic witness retains all five ordered arguments
and the exact original `Lean.Expr`. An environment-dependent `Lean.MetaM`
observer checks argument types and the genuine result proposition in the
current local context, rejecting all other source shapes.

This is not automatic, general theorem-application extraction and is not
a kernel acceptance certificate. The typed finite-rule counterpart already
exists in `ScopedOrderExample.orderTransitivity`; an object-level
`Expr`-to-dependent-proof reflection theorem remains unsupplied.

## 1. Source identities and exact supported grammar

The parent source is the published
[LeanExprConstantSpine.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/LeanExprConstantSpine.lean),
Git blob `1f30c4f428a110f4d574abdfc6ee463e3f35cf75`.
Its consumer is the genuine proof-bearing
[InstantiatedRuleCertificates.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/InstantiatedRuleCertificates.lean),
Git blob `8a947b13ef0f4fdca9127620d11a99870d4b121a`.

The pinned Lean toolchain is `leanprover/lean4:v4.34.1`.
The actual upstream source identities consulted are:

- [`src/Init/Prelude.lean` at v4.34.1](https://github.com/leanprover/lean4/blob/v4.34.1/src/Init/Prelude.lean), Git blob `66af67237683d3c7f8230bcf473c0871e67749a2`. Its declaration is `Nat.le_trans {n m k : Nat} : n ≤ m → m ≤ k → n ≤ k`.
- [`src/Lean/Expr.lean` at v4.34.1](https://github.com/leanprover/lean4/blob/v4.34.1/src/Lean/Expr.lean), Git blob `6aeb819ba60e92ed5f325b2f594f3ed610845e38`, for `Expr.const`, `Expr.app`, `mkConst`, `mkApp5` and `Expr.hasMVar`.
- [`src/Lean/Meta/Basic.lean` at v4.34.1](https://github.com/leanprover/lean4/blob/v4.34.1/src/Lean/Meta/Basic.lean), Git blob `e207f8f137bda69488be8424896fd82bad6cca8d`, for `withLocalDeclD`, `inferType` and `isDefEq`.
- [`src/Lean/Meta/Check.lean` at v4.34.1](https://github.com/leanprover/lean4/blob/v4.34.1/src/Lean/Meta/Check.lean), Git blob `3796de18422be472bddb3d8e6e7710ede519f4c7`, for `isTypeCorrect`.

Exactly **five** applications of `Expr.app` are accepted, headed by
`Expr.const ``Nat.le_trans []` (an empty universe-level list).
This declaration is monomorphic; no other constant or universe
instantiation is accepted. The arguments `a,b,c,hab,hbc` must be `Expr.fvar`
occurrences belonging to the actual current elaboration context, not
metavariables or invented global facts. The checker never claims the
free-variable IDs identify specific Git source lines.

## 2. Mathematical construction

`NatLeTransExprSpine source` is indexed by the *original* expression.
Its `source_eq` field states the exact five-argument reconstruction:

```
source = mkApp5 (mkConst ``Nat.le_trans) a b c hab hbc.
```

`parseNatLeTransExpr` constructs this witness only when it sees the
matching nested application syntax, exact declaration name, and empty
universe list. The source-level candidate
`natLeTransExpr_shape_roundtrip` covers an expressly constructed term.
The negative cases reject missing proof arguments, extra applications,
a different constant head and nonempty universe arguments. The parser
does not normalize the expression or reinterpret metadata wrappers.

`inspectScopedNatLeTrans` next checks, in `Lean.MetaM`, that the original
source has no unresolved metavariables and passes
`Lean.Meta.isTypeCorrect`. It then obtains all six actual types and
rejects any unresolved metavariable in the results. The subsequent
definitional comparisons check

```text
type(a)   ≡ Nat
type(b)   ≡ Nat
type(c)   ≡ Nat
type(hab) ≡ Nat.le a b
type(hbc) ≡ Nat.le b c
type(source) ≡ Nat.le a c
```

Thus parameter identity is preserved through the **same** local
`a,b,c` expressions in every premise and conclusion. A proof for
unrelated `a',b',c'` cannot pass unless the corresponding propositions
are definitionally equal in the actual elaboration environment. Two
local variables need not be distinct; equality of their underlying
types or propositions does not change the required proof obligations.

`inspectFreshScopedNatLeTrans` is a *source-level MetaM probe* that
introduces three local natural-number variables and two local
hypotheses using `withLocalDeclD`, constructs the actual
`Nat.le_trans` application and requests its checked observation.
Its presence in the source is not evidence that this MetaM computation
was executed successfully.

## 3. Consumer, proof comparison and return

The mathematical consumer is the previously authored
`ScopedOrderExample.orderTransitivity (a b c)`, with its
`InstantiatedApplication` premise list
`[premiseAB, premiseBC]` and `Meaning a b c`.
`scopedNatLeTrans_rule_exact` records that this list and conclusion
are unchanged. `scopedNatLeTrans_typed_return` uses the original
proof-bearing finite query to return `a ≤ c` from actual `a ≤ b`
and `b ≤ c`; it reuses `Nat.le_trans` and is **not a second
independent proof**.

The raw `Lean.Expr` observation and the typed
`InstantiatedApplication` are deliberately separate objects.
A successful MetaM type observation does **not** construct a Lean
proof value by itself. The still-open bridge must compare an
elaborated proof term and its source environment to the actual typed
`Nat.le_trans` consequence, including local-context abstraction and
reconstruction of binder substitutions. Textual names and source claims
do not discharge that bridge.

This narrower local-family construction makes no claim of new number
theory, a minimum proof, a general theorem extractor, an AI discovery
gain, or a SAT complexity result.

## 4. Verification and hostile controls

Mathematical status: **SOURCE_PROOF_CANDIDATE**.
Lean compilation, fresh kernel replay, imported/global axiom audit,
MetaM observer execution and source-bound environment verification:
**NOT_RUN**. No successful native check was observed. The authored
proof and static source inspection are not kernel evidence.

The standalone mathematical guards are intentionally severe.
The parser rejects partial application (a missing proof), a sixth
argument, the wrong declaration and an unexpected universe argument.
The MetaM layer rejects malformed local-context terms, unsolved
metavariables, non-local arguments, ill-typed applications and
incorrect premise/result types. A raw syntactically identical
`Nat.le_trans` application with swapped incompatible premise
variables does not pass an actual type check. An `Expr` representing
a proof that is irrelevant to this fixed source class is **unsupported**,
not mathematically disproved.

The authoring environment has no locally available Lean/Lake binary.
No new Noe verifier, GitHub workflow, scheduler or remote proof execution
was dispatched. The publication verification issue records the exact
source and dependencies, plus the commands needed in an authorized
external checker.

## 5. Next obligation

Construct and verify a **context-abstraction/reification theorem** for
this restricted family. Starting from the checked
`NatLeTransExprSpine` observation and a pinned Lean environment,
abstract the five local variables in their original dependent order;
match the actual instantiated `Nat.le_trans` theorem type; retain
the proof term; and prove a typed comparison against the corresponding
`InstantiatedApplication` with exactly two jointly required premises.

Do not infer a typed mathematical proof directly from a `MetaM`
observation. A native elaboration and fresh kernel audit of the entire
import closure is an independent prerequisite before acceptance.
Coordinate with [math issue #1612](https://github.com/grwtsk/math/issues/1612),
[math issue #1606](https://github.com/grwtsk/math/issues/1606)
and [Noeaaeue #406](https://github.com/grwtsk/noeaaeue/issues/406).
