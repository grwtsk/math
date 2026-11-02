# Fiber lifting: when noninjective finite inference admits reverse transport

Local attribution: grwtsk contributors. Mathematical source-candidate review, 2026-11-02.
Initial inspected Math source: `grwtsk/math@a82ea53e2e7683cfb06f53f7cb293571398c6155`.

## Abstract

A finite source inference rule may be represented by a many-to-one map of
its atoms. Existing `derivable_forward_under_map` proves that a valid
source derivation always maps to a derivation of its target image. The
converse is false when two source atoms collapse to one target atom:
a target fact can certify the image of a different source atom that was
not a source fact or source-derivable goal. This increment identifies
**sufficient source-fiber lifting conditions** on the original facts and
rules, and supplies a source-level reverse derivability theorem and a
two-way exact goal-query theorem under those conditions.

The construction uses the existing inductive `Derivable`,
`derivable_sound` and `decideSourceGoalPruned_eq_true_iff`; it does
not replace the inference engine, assume an inverse atom map, infer a
Lean proof from a raw expression or claim SAT/runtime complexity.
All new Lean declarations are **SOURCE_PROOF_CANDIDATE** pending native
compilation, fresh kernel replay and transitive axiom auditing.

## 1. Exact statement and assumptions

Fix source atoms `α`, target atoms `β`, an arbitrary map
`f : α → β`, finite source facts `F : List α`, and finite
conjunctive rules `R : List (Rule α)`. The original
[forward transport](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/NoninjectiveNatLeTransTransport.lean)
maps an entire rule

\[
(P=[p_1,\ldots,p_n],c)\longmapsto
(f(P)=[f(p_1),\ldots,f(p_n)],f(c)).
\]

No premise is split into an alternative rule. In the new
[FiniteFiberLiftedInference.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/FiniteFiberLiftedInference.lean)
the structure `FiberLiftable f R F` has precisely two proof fields.

**Fact lifting.** For every `a,p : α`,
if `p ∈ F` and `f(p)=f(a)`, then `a ∈ F`.
This is saturation of the original facts along every represented
atom fiber; a source fact's image alone is insufficient.

**Rule lifting.** For every `r ∈ R` and every source atom `a`
with `f(a)=f(r.conclusion)`, there must exist an **actual**
`r' ∈ R` with `r'.conclusion=a` such that each individual
premise `p' ∈ r'.premises` has a companion `p∈r.premises`
with `f(p)=f(p')`. This direction is chosen to transport a proof
of the mapped original joint premise list into a proof of the
lifted rule's **entire** joint premise list. It is a substantive
source condition, not a similarity or provenance assertion.

The reverse theorem candidate is exactly

\[
\operatorname{Derivable}(f(R),f(F),f(a))
\ \Longrightarrow\ \operatorname{Derivable}(R,F,a)
\]

under those two `FiberLiftable` assumptions. Combining it with
the unconditional existing forward theorem yields the equivalence
`derivable_iff_mapped_of_fiber_liftable`. These hypotheses are
sufficient, not asserted necessary for every individual goal.

## 2. Complete proof roadmap and mathematical return

The reverse proof does not try to invert `f`. Define a target
predicate

\[
H(y)\;:\!\iff\;\forall x\in\alpha,\ f(x)=y
\Longrightarrow \operatorname{Derivable}(R,F,x).
\]

Fact lifting shows that **every** mapped fact satisfies `H`.
For a mapped rule, choose the actual originating rule `r∈R`.
For each source preimage `x` of its target conclusion, rule lifting
supplies a source rule `r'` concluding `x`. Every premise of
`r'` is covered by an image of an actual premise of `r`.
The assumption that every mapped premise satisfies `H` proves
all premises of `r'` are source-derivable. The existing
`Derivable.application` therefore yields `Derivable(R,F,x)`.
This proves `ClosedUnder` for `H`. The pre-existing
`derivable_sound` transports any target derivation to `H`;
choosing the original preimage `a` recovers the source result.

The theorem `derivable_constant_on_fibers` then proves that
the source derivability predicate is itself invariant across
a fiber, but **only** under the lifting hypotheses.

The consumer
`decideGoalPruned_iff_mapped_of_fiber_liftable` uses the two
existing `decideSourceGoalPruned_eq_true_iff` theorems, one for
each complete finite atom inventory, to show exact agreement of
Boolean answers at a goal `a` for which both the source goal
predicate and the target predicate select `f(a)`. No implicit
coverage of all repository rules or of omitted theorem applications
is claimed. A target false result remains **relative to its full
supplied rule/fact list**.

A separate `meaning_constant_on_fibers` theorem requires a
pointwise proposition comparison
`P(x) ↔ Q(f(x))` and transfers **truth** between source
atoms in a fiber. This is a different premise from
`FiberLiftable`, which transfers **derivability**: semantic
truth does not generate a missing derivation tree.

## 3. Actual failure boundary and noninjective example

The already published
`noninjective_reverse_derivability_is_unsound` uses
`Bool → Unit` with the sole source fact `false`, no source
rules and goal `true`. The target atom is derivable because
both Boolean values map to the unique unit value; the source
goal is not derivable. The new
`collapseBool_one_fact_not_liftable` identifies the precise
failed hypothesis: the fact fiber is not saturated.

Conversely `collapseBool_all_facts_liftable` supplies a
noninjective **satisfying** example: the same collapse map,
both Boolean source facts present, no rules. Noninjectivity
alone is therefore not disqualifying. A richer finite reference
fixture uses three source states with `f(0)=f(1)=0`,
`f(2)=1`, facts `[0,1]`, and two alternative rules
`[0]⇒2` and `[1]⇒2`. It satisfies both lifting conditions,
and both source and target saturations include their full
respective domains. These alternatives remain separate rules,
not incorrectly combined conjuncts.

The earlier `Nat.le_trans` Bool-label to Nat-pair map
[may collide](noninjective-nat-le-trans-transport-2026-11-02.md)
for coincident parameters. The present theorem does **not**
claim that the existing two-premise inventory automatically
satisfies fiber lifting. That would require the missing
fact/rule lifts to be established, not guessed from the truth
of `a≤b` and `b≤c`. It may fail when a pair is a known
target fact but a distinct abstract source label is not known.

## 4. Independent finite reference and trust boundary

A locally executed **non-Lean** Python finite model enumerated:
all 4 maps `{0,1}→{0,1}`, all 256 subsets of the eight
two-atom rules (two possible conclusions and four premise sets),
all four initial fact sets and both goals. Results:

- **4,096** source/target finite systems compared;
- **2,504** systems met both `FiberLiftable` conditions;
- **5,008** checked goals in those systems had exact source/target
  derivability agreement;
- **384** reverse-derivability failures occurred when the
  stated lifting conditions were **not** satisfied;
- **zero** failures of unconditional forward derivability.

The three-state alternative-rule fixture above was checked
separately and met the lifting conditions. These measurements
are exact for their **finite Python reference model**, not a
proof that the Lean source compiles, that Python refines the
Lean data structure, or that an actual AI search becomes faster.
The ephemeral test was not installed into Noe or represented
as a native kernel receipt.

The authoring environment has no Lean/Lake binary. Source-level
proof terms and the Git blob are independently auditable, but
**Lean compilation, fresh kernel replay, transitive axiom audit
and independent mathematical acceptance remain NOT_RUN/UNASSESSED**.
This source introduces no proof placeholder or special trust axiom,
but source-text scanning cannot establish an empty transitive
axiom closure.

## 5. Source identities, consumers and next obligation

Inspected original source pins (not the newly created source):

- `NoninjectiveNatLeTransTransport.lean`, blob
  `004b43ddafe549886b664d0d27587547dd7227e9`.
- `JointPremiseInference.lean`, blob
  `d662c1bed6ed017a99c9aa4f23b128d0357ff0f1`.
- `FiniteGoalPrunedClosure.lean`, blob
  `f915650ad2281144b28bfb5e5bdff16bc65a2417`.
- `InstantiatedRuleCertificates.lean`, blob
  `8a947b13ef0f4fdca9127620d11a99870d4b121a`.
- Current pinned toolchain: `leanprover/lean4:v4.34.1`.

The exact new source blob and publication commit are recorded in
its passive GitHub verification issue after publication.
No dependency upgrade, root import, taxonomy move, native runner
or proof-capsule admission is part of this increment.

Next mathematical task: compile and replay the exact published
module and its transitive imports with the authorized, pinned
Noe verification adapter. Audit axiom dependencies and the
actual theorem interfaces, including the sufficient
`FiberLiftable` obligations. Then either exhibit those
obligations for a **specific** noninjective theorem-expression
inventory or prove a goal-specific fiber lifting criterion.
The unresolved raw local `Lean.Expr` proof-argument-to-typed-witness
correspondence remains an independent proof-obligation class.

Primary programme: [Noeaaeue issue #406](https://github.com/grwtsk/noeaaeue/issues/406).
Original noninjective-source tracking: [Math issue #1631](https://github.com/grwtsk/math/issues/1631).
