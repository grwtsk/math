# Proof-carrying instantiation: a finite inference-to-proposition bridge

Local attribution: grwtsk contributors. Authored source-candidate note, 2026-11-02.

## The mathematical problem

The existing [finite goal pruning](finite-goal-pruning-2026-11-02.md)
has an exact answer-preservation candidate: for a supplied finite list of
instantiated rules and facts, a source-derived dependency graph supports
goal restriction without changing the `Derivable` answer. However,
`Derivable` is a syntactic relation. A positive answer for an arbitrary
uninterpreted rule inventory is not a theorem about the proposition whose
name was used for an atom. A rule may simply encode an invalid implication.

The new [proof-carrying source](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/InstantiatedRuleCertificates.lean)
adds a separate, typed semantic bridge. It uses the existing closure and
restriction model rather than introducing another inference engine.

## Exact objects and statement

Fix a type of atoms `α` and one interpretation `Meaning : α → Prop`.
An `InstantiatedApplication α Meaning` contains:

- an existing `Rule α`, whose finite premise list denotes **all**
  necessary premises;
- a Lean proof field
  `(∀ p, p ∈ rule.premises → Meaning p) → Meaning rule.conclusion`;
- an optional `SourceClaim` holding repository, revision, path, and
  declaration **strings**, with no authentication status.

An `InstantiatedFact α Meaning` contains an atom and evidence of its
`Meaning`. The erasure functions `eraseApplications` and `eraseFacts`
forget proof fields for the *existing* finite inference query. The
`mem_eraseApplications_iff` and `mem_eraseFacts_iff` declarations
identify an exact originating occurrence for each projected item, not just
a plausible similarity link.

The central theorem candidate, `decideInstantiatedGoal_sound`, has the
following precise reading. Given a complete finite atom inventory `V`,
a list `A` of proof-bearing applications and a list `F` of
proof-bearing facts under the **same** interpretation, and any decidable
goal predicate `G`, if `G(g)` then

```text
decideSourceGoalPruned V (eraseApplications A) (eraseFacts F) G g = true
  → Meaning g.
```

The Boolean query is not an authority source: the proof first uses
`decideSourceGoalPruned_eq_true_iff` to obtain `Derivable` in the
erased inventory, then applies `erasedDerivable_sound` with
`erasedFacts_sound` and `erasedApplications_closed`. The latter
lemmas are established from the *attached Lean evidence*, not from names.

This is a forward *soundness* transport; it does **not** claim that every
true `Meaning g` is derivable from the selected inventory.

## Scoped actual-theorem example

`ScopedOrderExample` enumerates the four atoms `Bool × Bool`.
For arbitrary natural numbers `a,b,c`, its single interpretation assigns
three atoms to `a ≤ b`, `b ≤ c` and `a ≤ c`, respectively. The
`orderTransitivity` certificate actually calls `Nat.le_trans`,
at the same `a,b,c`. Facts `factAB` and `factBC` contain their
proof terms under that same dependent interpretation. A mismatched family
of fact certificates cannot be silently included without changing the
required type or providing an explicit comparison.

The source supplies `query_true` for two actual premises and then
`query_proves_transitivity`, returning `a ≤ c` from the query.
This is an example of **faithful instantiation**, not an independent
alternative proof of transitivity.

As a hostile case, set `a=1,b=2,c=0`. The first fact
`1 ≤ 2` has a proof, but `2 ≤ 0` does not, and `1 ≤ 0`
is false. `missing_premise_rejected` uses the general
`decideInstantiatedGoal_false_of_not` to prevent a true query result
from being manufactured by a proof-bearing, single-fact inventory.
An unseeded cycle or an OR-flattened conjunction cannot bypass the
typed semantic bridge.

## Source-comparison and trust boundaries

| Layer | What this increment supplies | What it does not supply |
| --- | --- | --- |
| Typed application | A proof from **all** exact interpreted premises to conclusion | Automatic extraction from arbitrary Lean elaborated syntax |
| List projection | Each erased rule/fact has a matching proof-bearing origin | Verification that optional source-identity strings describe the origin accurately |
| Finite query | Positive query implies the actual interpreted proposition | Truth from a negative query; completeness for omitted rules or atoms |
| Instantiation | One explicit use of `Nat.le_trans` with parameters in the interpretation type | General dependent theorem application reification, unification, or quantifier-scope extraction |
| Evidence | A source candidate and reproducible Git blobs | Native compilation, fresh kernel replay, axiom audit, independent analytic review, performance measurement |

A claimed repository path, Git revision, or declaration name is **untrusted
data**, even if well-formed. Source-content retrieval and a
kernel-checked elaboration/source correspondence must still connect
that text to the concrete theorem term. The current example's
`SourceClaim` is absent rather than inventing an external pin.
This file and its dependencies are source-pinned by the publication
commit and the tracking issue, not by self-certifying string fields.

The old [joint-premise source](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/JointPremiseInference.lean),
the [finite forward closure](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/FiniteJointPremiseClosure.lean)
and the [finite goal-pruning source](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/FiniteGoalPrunedClosure.lean)
remain unchanged. Existing manuscript proof claims and prior validation
records retain their original scope.

Compilation, fresh kernel checking, and transitive axiom audit for the new
unit and selected dependency closure: **NOT_RUN**. No Lean executable or
Noe-managed checker was invoked in this increment. Neither theorem-level
novelty nor runtime advantage is asserted; the proof uses elementary
inductive soundness and actual constructor evidence.

## Exact next obligation

Construct an **elaboration-bound expression extractor** for a deliberately
limited class of actual Lean theorem applications. It must expose exact
binder instantiations, source environment and declaration identity, universe
levels, local context, all instantiated premises, and the elaborated proof
term; a checked comparison must map these to `InstantiatedApplication`
without inventing missing premises or silently widening quantifiers.
Prove soundness on the accepted finite source class, retain rejected or
unsupported applications explicitly, and audit at the exact dependent
source revision. This is not accomplished by attaching `SourceClaim`.

This bounded increment is tracked alongside the
[structural-intelligence programme](https://github.com/grwtsk/noeaaeue/issues/406)
and [goal-pruning verification issue](https://github.com/grwtsk/math/issues/1604).
The exact new source commit/blob and passive verification target are recorded
in its follow-up GitHub issue. Source publication does not dispatch execution.
