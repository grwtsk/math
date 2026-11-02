# Two Nat.le-trans sources, one sound noninjective mathematical transport

Local attribution: grwtsk contributors. Source-candidate mathematical review,
2026-11-02. Compilation, fresh kernel replay and axiom audit are NOT_RUN.

## Abstract and mathematical problem

Two related formalization families in the current `grwtsk/math` tree
represent one instance of `Nat.le_trans` using different atom types.
[InstantiatedRuleCertificates.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/InstantiatedRuleCertificates.lean)
labels three propositions with distinct Boolean-pair tokens and one unused
token, while
[LeanExprNatLeTransReification.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/LeanExprNatLeTransReification.lean)
represents propositions by pairs of natural numbers. The
[local proof-variable bridge](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/LeanExprScopedNatLeTransClosure.lean)
then retains two actual `Lean.FVarId` occurrences of literal proof arguments.

A map between these atom types is not generally injective. Consequently the
[earlier exact-representation theorem](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/ExactInferenceTransport.lean),
which requires actual inverse laws to transfer derivability both ways, is
not directly applicable. A new
[forward-transport source](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/NoninjectiveNatLeTransTransport.lean)
establishes the weaker, correct and useful statement: **forward inference
and proof-bearing semantic soundness survive a many-to-one atom map** whose
pointwise proposition interpretation is proved. Reverse derivability does
not follow, as an explicit counterexample demonstrates.

## 1. Exact objects and statement

For fixed `a,b,c : Nat`, define the atom map

| Abstract Bool-pair label | Literal Nat-pair representation | Proposition |
| --- | --- | --- |
| `(false,false)` | `(a,b)` | `a ≤ b` |
| `(false,true)` | `(b,c)` | `b ≤ c` |
| `(true,false)` | `(a,c)` | `a ≤ c` |
| `(true,true)` | `(0,0)` | `True ↔ 0 ≤ 0` |

The map `scopedAtomToLiteralPair a b c` is meaningful even when
`a=b=c`. In that case `premiseAB` and `premiseBC` are **distinct
abstract labels** that both become the same literal pair. The theorem
`scoped_literal_map_not_injective` proves the absence of injectivity
at `(a,b,c)=(0,0,0)`.

The theorem `scopedMeaning_to_literal_iff` establishes an exact pointwise
property comparison for all four labels, including the unused label. This
hypothesis is necessary for sound semantic transport; equality or lexical
similarity of expression names would not establish it.

For arbitrary types `α,β` and any `f : α → β`,
`derivable_forward_under_map` proves

```text
Derivable(R,F,x) -> Derivable(mapRule(f,R), map(f,F), f(x)).
```

There is no injectivity assumption. This direction is valid by induction on
the actual finite proof tree: an assumption maps to an assumption; a rule
application maps to **one whole rule**, with every conjunctive premise
transported in order. This is different from splitting a conjunction
into independently sufficient clauses.

Under the pointwise semantic bridge
`∀ x, P x ↔ Q (f x)`, the definition `forwardCertificateMap`
constructs a new `InstantiatedApplication β Q` with the mapped rule
and a **real Lean consequence proof**. It erases any unauthenticated
`SourceClaim`, rather than treating a relocated or renamed term as
preserving Git provenance.

## 2. Source-specific comparison and consumer

The exact rule in the Bool-label source is

```
premises = [premiseAB, premiseBC]
conclusion = conclusionAC
```

while the literal source uses

```
premises = [(a,b), (b,c)]
conclusion = (a,c).
```

The new source constructs the proof-bearing
`scopedCertificateToLiteral a b c` by applying the generic forward
transport to the existing `ScopedOrderExample.orderTransitivity`
certificate, **not** by attributing proof authority to the theorem's
name. Its `scoped_literal_rule_exact` is an exact equality with
`literalTransRule a b c`.

The source-indexed comparisons `literal_expr_rule_agrees` and
`scoped_expr_rule_agrees` connect the mapped rule to both separately
authored `Lean.Expr` witness families. The *literal* theorem and local
proof-expression arguments remain **unconverted** to object-level Lean
proofs; their type/environment binding is still a separate obligation.

`literal_rule_premises_iff` identifies the whole literal premise
predicate with `a ≤ b ∧ b ≤ c`. The earlier
`scopedNatLeTrans_premises_iff` establishes the same interface for
Boolean labels. The new `scoped_literal_premises_iff` and
`scoped_literal_consequence_iff` connect the exact two-premise
conditional propositions in both directions, independently of whether
the atom map is injective.

The existing [checked-application sofic consumer](../../../../GRWTSK/Combinatorics/GraphTheory/CheckedApplicationSoficBridge.lean)
still requires **separate, actual typed witnesses** of both original
inequalities before promoting a source application to a certified lower
edge. No source parser, similarity score, or finite derivability result
manufactures those witnesses. This increment preserves that boundary.

## 3. Hostile counterexample and independent bounded checks

If `f : Bool → Unit` maps both Boolean inputs to `()`, the target
fact `f(false)` supports the target `f(true)` even though source
`true` is not derivable from the sole source fact `false` without
rules. The theorem `noninjective_reverse_derivability_is_unsound`
constructs precisely this model. It rules out an unconditional
reverse-transport theorem, not source validity or forward transport.

An **independent, ephemeral Python reference enumeration** checked all
four functions from a two-element atom set to itself, all 256 subsets
of eight rules with premise subsets of two atoms, all four initial fact
sets, and both goals: **8,192 forward-simulation implications passed**.
A separate 27-triple check for `a,b,c∈{0,1,2}` verified **108**
pointwise semantic comparisons and literal premise-list images.
The reverse-collision example was explicitly checked.

These finite tests were performed outside Lean and outside the repository.
They are not compilation, kernel checking, a proof of correspondence with
Lean execution, model performance data, or a retained Noe receipt.
They do not establish general theorem validity; that is the unexecuted
source proof candidate's intended formal claim.

## 4. Exact source identities and evidence boundary

Inspected source identities on the current `main` family:

- `NatLeTransBinderAbstraction.lean`, blob
  `6ad65213404396044c1b24cdc0873c94a9800814`
  (the prior binder-metadata correction).
- `InstantiatedRuleCertificates.lean`, blob
  `8a947b13ef0f4fdca9127620d11a99870d4b121a`.
- `LeanExprNatLeTransReification.lean`, blob
  `76f4c23f368a7cb0cdddaf7333f09c159750106f`.
- `LeanExprScopedNatLeTransClosure.lean`, blob
  `7540baea68d078f5b10b63b99ded3dd9c9d59ba3`.
- `ExactInferenceTransport.lean`, blob
  `cace7d65345cc74101902a2ac212a40680c5a9c1`.
- `CheckedApplicationSoficBridge.lean`, blob
  `7cf8b5905fae6cd828b3dc65145529635cc605e2`.

The new source and this review are pinned to their actual publication
commit and blobs by a separate passive verification issue. A name-level
connection across these files is a research lead, not an admitted theorem.

The local authoring environment has no Lean or Lake executable and no
network path to install the pinned toolchain; its GitHub tool is a source
interface, not a native proof runner. All imported and new Lean
**SOURCE_PROOF_CANDIDATE** declarations retain exact-source compilation,
fresh kernel replay, transitive axiom audit and semantic reification as
independently unresolved evidence facets. A Noe source contract may be
prepared, but none was dispatched by publishing this math increment.

## 5. Next mathematical obligation

Use the authorized Noe-managed source-bound verifier to compile the
new module and the **exact transitive imported closure** at the pinned
Lean 4.34.1 and Mathlib revisions. Inspect declaration types, replay the
kernel freshly and audit transitive axioms. In a separate term-level
test, execute the two existing `MetaM` observers and require the
original local proof `Lean.Expr` argument identities to survive
abstraction, reopening, and kernel checking.

Only after these exact-source checks is it legitimate to construct an
environment-bound expression-to-`InstantiatedApplication` refinement,
preserving every source premise witness, scope and source-identity
observation. The theorem here supplies a correct **mathematical
transport**, not a claim that such a general extractor already exists.

Track the broader programme in
[Noeaaeue #406](https://github.com/grwtsk/noeaaeue/issues/406)
and preserve the existing verification obligation in
[math #1627](https://github.com/grwtsk/math/issues/1627).
