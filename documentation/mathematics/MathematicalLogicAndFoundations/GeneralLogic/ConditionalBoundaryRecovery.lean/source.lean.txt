/-
ConditionalBoundaryRecovery — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 1174a40635dc2e6fbf55ddd7c85994e5ea99b83bbb2d1c6e92810ea5d1248e47
Organized SHA-256: 618e916ad682b16d939dfebf0cdef7b25fb29fee1ce86aa149acdc0601474fd3
PMD: 510.0.040 proof theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact original-provider conditional CompB and full boundary/K/J/derivation/closed recovery equation and proof. Original CompileEval provider identities remain; new360 outputs are not substituted. -/

import Atomize.Formal.CompileEval

import GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ScopeIndexedStructuralReification.Variant1174a40635dc2e6f.FixedBoundaryReferenceData

/-!
# Boundary-closed plans

**Architectural problem:** A local proof plan may legitimately refer to
project-internal declarations, while a boundary-only certificate must not hide
such references by retrospectively calling them trusted inputs.

**Important data and indices:** `BClosed boundary derivation` compares the exact
constant-reference set with the fixed `boundary` plus presentation-declared
kernel primitives.  `BTreePlan K boundary J` stores a plan and that restriction.

**Type-enforced invariant:** `CompB` requires closure evidence for the original
derivation.  There is no total constructor that silently enlarges `boundary`
after inspecting the derivation.

**Layer boundary:** `BClosed` is local reference accounting, not the later exact
declaration closure/frontier, linked global graph, or validation receipt.

**Worked example:** The private `restrictedPlan` fixture in `Examples.lean`
admits `Project.helper` only because the example's boundary was fixed to contain
that name.  The unrestricted plan retains the same internal reference regardless.

**Used by:** A later linked-boundary layer can consume `BTreePlan` only after it
has independently certified its boundary.  M1a uses it solely for the corrected
conditional boundary result.

**Proof idea:** `constantReferences_comp` says compilation preserves the exact
reference set, so the input subset proof transports directly to the plan.

**Equality notion:** Boundary membership is `Finset` membership and subset
inclusion; recovery remains propositional equality of represented syntax.

**Boundary cases:** An empty boundary accepts only presentation primitives and
derivations with no other constants.  A boundary-only leaf is still a normal
empty-premise rule leaf, not a manufactured proof of an internal declaration.

**Validation consequence:** `eval_compB` validates conditional structural
recovery.  It does not prove that the chosen boundary is derivation-independent
or certified by a concrete Lean environment.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ScopeIndexedStructuralReification.Variant1174a40635dc2e6f

open Atomize.Formal

universe u

/--
**Proof idea:** Compile structurally, then transport `closed` through exact
constant-reference preservation.

**Validation consequence:** The function cannot manufacture closure for an
arbitrary derivation; its final argument is mandatory.

**Architectural problem:** Restriction must be conditional on original
derivation closure rather than inferred after compilation.
**Important data and indices:** The fixed boundary, `K`, exact root `J`, input
derivation, and closure witness all occur in the type.
**Type-enforced invariant:** No result is constructible through this function
without the `BClosed` argument.
**Layer boundary:** This compiles a local tree only; it does not link declarations.
**Worked example:** The private restricted fixture supplies its explicit proof.
**Used by:** `eval_compB` and later boundary consumers.
**Equality notion:** The stored plan is exact `Comp derivation`; proof fields are
closure evidence rather than plan content.
**Boundary cases:** A false closure predicate makes the function unavailable.
-/
def CompB
    {K : KernelPresentation.{u}} {J : K.Judgment}
    (boundary : Finset K.ConstantName)
    (derivation : RawDer K J)
    (closed : BClosed boundary derivation) :
    BTreePlan K boundary J := by
  refine ⟨Comp derivation, ?_⟩
  simpa [BClosed] using closed

/--
**Worked example:** Evaluating the private `restrictedPlan` fixture from
`Examples.lean` returns the original internal-constant derivation.

**Equality notion:** Propositional equality of represented derivation syntax.

**Boundary cases:** The proof still relies on the supplied `closed` witness; it
does not certify how the boundary was selected.

**Architectural problem:** Boundary restriction must preserve the same recovery
guarantee as unrestricted compilation.
**Important data and indices:** Both sides share `K`, `J`, boundary, derivation,
and the explicit closure witness.
**Type-enforced invariant:** `CompB` stores a `TreePlan K J` made by `Comp`.
**Layer boundary:** Recovery is abstract syntax equality, not concrete replay.
**Used by:** The M1a axiom audit and downstream restricted-plan consumers.
**Proof idea:** Apply unrestricted `eval_comp` to the subtype's plan projection.
**Validation consequence:** The theorem proves conditional structural recovery
only and grants no authority to boundary selection or external evidence.
-/
@[simp]
theorem eval_compB
    {K : KernelPresentation.{u}} {J : K.Judgment}
    (boundary : Finset K.ConstantName)
    (derivation : RawDer K J)
    (closed : BClosed boundary derivation) :
    Eval (CompB boundary derivation closed).1 = derivation :=
  eval_comp derivation


end GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ScopeIndexedStructuralReification.Variant1174a40635dc2e6f
