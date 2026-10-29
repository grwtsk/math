/-
Exact local-context endpoint subtype and its supplied equality projection
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d45d46498501b83972354dacb3c2b07ed50afc07161016454a029b6de0125aae
Organized SHA-256: 8ba4392116300741b6cff1d47c8fdb2fdb066208f3b8f06dc427d6aecfda9f8b
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- The complete At context subtype and @[simp] localContext_at preserve every abstract type/index and exact judgment.2 proof. This certifies only propositional equality of the stored abstract endpoint; no concrete adapter or elaboration test is supplied. -/

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.ScopedJudgmentData.Variantd45d46498501b839.ClaimAndScopeRecords

/-!
# Scope-indexed abstract judgments

**Architectural problem:** A term such as `x` is meaningful only together with
the telescope that declares `x`, and a universe-polymorphic expression is
meaningful only together with its universe parameters.  Recording an expression
alone would therefore let a later proof-plan node forget the scope in which it
was checked.

**Important data and indices:** A `Claim` distinguishes formation of a type
from typing of a term.  A `ScopedJudgment` then records the universe context,
the ordered local context (the abstract presentation's telescope), and that
claim.  `ScopedJudgment.At Γ` is the dependent view used when an operation must
accept a judgment from exactly the represented local context `Γ`.

**Type-enforced invariant:** Derivations and plans are indexed by the complete
`ScopedJudgment` value supplied by the presentation.  Context transport uses
`At Γ`, so a morphism whose source is `Γ` cannot be applied to a value packaged
at a different source context.

**Layer boundary:** The local context is abstract here.  A future pinned Lean
adapter must represent binder order, binder types, let values, binder metadata,
local instances, and dependencies faithfully.  This module is neither a Lean
frontend trace nor a claim that these three fields exhaust Lean's internal
state.

**Worked example:** A presentation of `P → P` may put `P` in a root universe
context, extend the local telescope by one binder for the body variable, and
type the body variable in that extended context.  The conclusion returns to
the root telescope.  `Examples.lean` makes this distinction concrete.

**Proof idea:** There is no semantic proof hidden in this data definition.  The
later structural theorems exploit the record as an exact type index, while
`At Γ` adds an equality witness when an endpoint-specific operation needs one.

**Boundary cases:** The empty local context represents a closed telescope, not
an absence of universe information.  A locally introduced binder is not a
root-telescope variable and must not be counted as one merely because both are
represented by variable leaves.

**Validation consequence:** Successful construction establishes only that the
abstract indices line up.  It does not establish that the record came from the
pinned Lean frontend or that its context representation is adapter-complete.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.ScopedJudgmentData.Variantd45d46498501b839

universe u v w

namespace ScopedJudgment

/--
**Architectural problem:** A context morphism indexed by source `Γ` must not
accept an arbitrary judgment whose stored local context happens to be ignored.

**Important data and indices:** `At Γ` pairs a full scoped judgment with a proof
that its `localContext` is exactly `Γ`.

**Type-enforced invariant:** A value of `At Γ` cannot be passed where `At Δ` is
required unless Lean can establish the relevant equality of context indices.

**Used by:** `KernelPresentation.actJudgment` uses this family at both endpoints
to make wrong-source transport fail during elaboration.

**Boundary cases:** At the empty telescope, the equality witness is still
present; no special unscoped case is introduced.

**Layer boundary:** `At` constrains the abstract local-context field; it does
not construct or validate a Lean `LocalContext`.

**Worked example:** A value at `[]` cannot be passed to an action requiring
source `[99]` in the private compile-fail fixture.

**Proof idea:** The subtype equality is carried with the judgment.

**Equality notion:** Membership uses propositional equality of context values.

**Validation consequence:** Elaboration rejects mismatched abstract endpoints,
while concrete adapter fidelity remains a separate obligation.
-/
def At
    {UniverseContext : Type u}
    {LocalContext : Type v}
    {Expr : Type w}
    (context : LocalContext) :=
  {judgment : ScopedJudgment UniverseContext LocalContext Expr //
    judgment.localContext = context}

/--
**Type-enforced invariant:** Projecting a judgment packaged at `context`
recovers exactly that local-context endpoint.

**Used by:** Endpoint-sensitive adapter proofs may rewrite the stored context
without unpacking the subtype witness manually.

**Architectural problem:** Endpoint proofs should expose their scope invariant
without duplicating subtype elimination.

**Important data and indices:** The input is indexed by `context` and contains
a full scoped judgment plus its equality witness.

**Layer boundary:** The theorem concerns only the abstract subtype projection.

**Worked example:** Applying it to `closedRootJudgmentAt` returns `[]`.

**Proof idea:** The result is exactly the subtype's second projection.

**Equality notion:** The conclusion is propositional equality of local contexts.

**Boundary cases:** It also applies when `context` is empty.

**Validation consequence:** The theorem certifies endpoint retention, not the
origin or completeness of a concrete context representation.
-/
@[simp]
theorem localContext_at
    {UniverseContext : Type u}
    {LocalContext : Type v}
    {Expr : Type w}
    {context : LocalContext}
    (judgment : At (UniverseContext := UniverseContext)
      (LocalContext := LocalContext) (Expr := Expr) context) :
    judgment.1.localContext = context :=
  judgment.2

end ScopedJudgment

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.ScopedJudgmentData.Variantd45d46498501b839
