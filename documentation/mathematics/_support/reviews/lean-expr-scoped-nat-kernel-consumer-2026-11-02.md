# Literal Nat.le_trans: from a scoped Meta expression to an actual proof goal

Local attribution: **grwtsk contributors**. Date: 2026-11-02.
Source candidate, not a Lean execution receipt.

## Exact consumer and source identity

The mathematical consumer is the already published checked-application sofic
network, not an arbitrary theorem or a new inference engine. The old proof
admission gap was that `observeAndAbstractScopedNatLeTrans` returned a Meta-level
closed expression without supplying it to a theorem that the Lean kernel had to
check. This increment adds the narrowest meaningful *proof-producing* consumer:
source code whose proof of `1 ≤ 3` is furnished by the **actual Meta-emitted
expression**, with no fallback proof.

The preexisting original object and preserved dependencies are:

- `grwtsk/math@4d95ef99d3088e238471bd01c743fd4aa5e848be`,
  `LeanExprScopedNatLeTransClosure.lean`, blob
  `7540baea68d078f5b10b63b99ded3dd9c9d59ba3`. `observeAndAbstractScopedNatLeTrans`
  recognizes original `Nat.le_trans` application arguments and original `FVarId`s,
  checks their real local context, then performs `mkLambdaFVars` and checks the
  resulting closed proof type and definitional reapplication. It is a MetaM
  **observer**, not an accepted kernel proof or source authentication.
- `LeanExprNatLeTransReification.lean`, blob
  `76f4c23f368a7cb0cdddaf7333f09c159750106f`: exact syntactic
  `Nat.le_trans` expression and real two-premise semantic rule.
- `CheckedApplicationSoficBridge.lean`, blob
  `7cf8b5905fae6cd828b3dc65145529635cc605e2`: certified paths require both
  genuine proposition witnesses and retain the signed observation and allowance.
- `DefectEnrichedSoficLanguage.lean`, blob
  `f0436ae18dd786e312a4966b27b2edc51e3d7fa1`: exact telescoping signed
  path return; candidate/admissible edges have no admission authority.

The new subject module lives alongside the other proof-theory and constructive
mathematics sources, in their established declaration namespace. It imports the
previous scoped observer but does not edit it, change root imports, modify the
Lean/Mathlib lock, install a runner or assume an unproved general extractor.
Native source-checking target: pinned Lean `v4.34.1`, Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612` (verify at final immutable
publication commit). The source Git blob and publication commit are recorded in
the passive verification issue after guarded publication.

## Principal argument, exact expression, and new gate

The input term has exact supported syntax, not a textual theorem name:

```
Nat.le_trans (1 : Nat) (2 : Nat) (3 : Nat)
  (Expr.fvar h12Id) (Expr.fvar h23Id)
```

with `h12 : 1≤2` and `h23 : 2≤3` in the actual local context. The original
Meta observer demands distinct IDs and the *complete* matching local premises;
`mkLambdaFVars` closes precisely those two IDs and returns an expression of type
`(1≤2) → (2≤3) → (1≤3)`. On reopening with the same original fvars, the
expression is definitionally equal to the original application. None of these
Meta conditions alone constitutes kernel verification.

The new tactic `emit_checked_scoped_nat_trans_123` first finds the exact local
hypotheses by their identifiers in the goal's actual `LocalContext`. It passes
the original expressions to the previous observer, rejects a failed result,
reapplies the emitted *original* `closedProof`, checks the reopened term's full
Meta typing and definitional target type, then **assigns that emitted term to the
Lean theorem goal**. It has no `sorry`, no `unsafe` replacement, no
`Classical.choice` witness constructor, no fallback to a fresh `Nat.le_trans`
term, and no meta-to-proposition axiom. Two concrete declarations consume it:

```
theorem emitted_scoped_nat_trans_123
    (h12 : (1:Nat)≤2) (h23 : (2:Nat)≤3) : (1:Nat)≤3 := by
  emit_checked_scoped_nat_trans_123

-- The same two original hypotheses also yield the existing
-- one-letter certified quantitative word and its signed bound.
theorem emitted_proof_and_certified_sofic_return ...
```

If this Lean module actually compiles and the proof is accepted by Lean's normal
kernel boundary, the theorem's proof term has been checked **relative to the
pinned compiler, imports, and axioms**. That would show much more than an
`isSome` Meta observation. Fresh source-bound independent kernel replay,
transitive axiom inspection and environment/source authentication remain
separate acceptance facets. No such check has been run in this authoring host.

## Source-faithful sofic correspondence

The second theorem retains both original `h12` and `h23` in one shared local
context. Its left conjunct is discharged by the emitted expression, while the
right conjunct constructs a certified **lower-relation** path with those same
typed local witnesses and invokes `AppliedWord.exists_quantitative_return`.
For the real readout `O(n)=(n:ℝ)` this is the original signed difference
`O(1)-O(3)=-2`, accompanied by a nonnegative allowance. This is **not** a
claim that an arbitrary `Lean.Expr` has been reflected to a proposition;
there is a concrete theorem with concrete premises and an explicit program
that submits the expression for normal theorem checking.

The application is a re-use of the ordinary theorem `Nat.le_trans` with a
new machine-checkable handoff contract. No new number-theoretic theorem,
Navier--Stokes regularity result, Riemann hypothesis proof or measured AI
improvement follows. The result answers the operational/mathematical question:
*can the exact Meta-emitted proof be the term checked by the kernel in a normal
source theorem?* The source is prepared to test that question, but the answer
requires an actual compilation/replay receipt.

## Failure cases and review

- Wrong source head, reordered arguments, nonliteral parameters and extra
  applications fail the preexisting exact syntax recognizer.
- Missing `h12` or `h23` in the current theorem context fails the tactic;
  there is no search for a convenient alternative assumption.
- Swapped local assumptions, incorrect proposition types, unbound FVarIds,
  repeated FVarId, source metavariables or escaping free variables cause the
  Meta observer to return `none`.
- Even if an observed term passes `Meta.inferType`, the gate calls
  `Meta.isTypeCorrect`; the full proof is **assigned** to a normal Lean theorem
  so the eventual kernel has a proof term to check.
- Candidate/admissible search edges remain untrusted. The certified sofic word
  is built from the actual typed premises, never a Git label or graph score.
- The `run_meta` positive and repeated-variable negative gates execute only
  *if the source is actually elaborated by Lean*. As authored text they are not
  evidence of successful Meta execution.
- The tactic is restricted to literal `1,2,3` and two named local hypotheses.
  It does not claim a generic elaborated-expression extractor, checked Git
  source-provenance mapping, all-local-context transport, nor semantic validity
  of arbitrary theorem applications. Extending the grammar must preserve its
  complete binder and type identities.

A separate finite Python reference check enumerates small Nat transitions,
path defects and hostile candidate-only shortcuts, and performs static
source-shape checks. This tests elementary model implications, **not** the Lean
module, `run_meta`, kernel acceptance or Python↔Lean refinement. Its output is
retained only as an external local diagnostic, not a source proof certificate.

## Evidence and next bound

Current host has no `lean`, `lake`, `elan` or local Noe managed checkout, so
there is **no authorized native replay receipt in this turn**. Compilation,
Meta evaluation, source-bound kernel replay, expected-type check and transitive
axiom audit: **NOT_RUN**. Git publication, if completed, establishes only
source custody, not proof acceptance.

The next *single* obligation is a managed, pinned Lean execution of this new
module with a receipt that names the two theorem declarations and records:
`run_meta` fixtures, the actually emitted `closedProof` expression and its
expected type, compilation of both concrete theorems (no `sorryAx`), transitive
axiom audit, fresh replay and host restoration. If `run_meta` or the tactic
fails, retain exact error logs and repair source without reducing the guards.
Only after that result may the corresponding theorem application be considered
for a source-authenticated, certification-aware Noe graph extractor.
