-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.BClosed.Variant1174a40635dc2e6fbf55ddd7c85994e5ea99b83bbb2d1c6e92810ea5d1248e47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1174a40635dc2e6fbf55ddd7c85994e5ea99b83bbb2d1c6e92810ea5d1248e47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.BClosed.Variant1174a40635dc2e6fbf55ddd7c85994e5ea99b83bbb2d1c6e92810ea5d1248e47","mathematical_subject":"Logic.ProofTheory","original_sha256":"1174a40635dc2e6fbf55ddd7c85994e5ea99b83bbb2d1c6e92810ea5d1248e47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Atomize/Formal/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Atomize.Formal.CompileEval

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


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.BClosed.Variant1174a40635dc2e6fbf55ddd7c85994e5ea99b83bbb2d1c6e92810ea5d1248e47

namespace Atomize.Formal

universe u

/--
**Type-enforced invariant:** Every represented constant is in the caller-fixed
boundary or the presentation's primitive set.

**Boundary cases:** The predicate may be false; compilation to unrestricted
`TreePlan` remains available, but `CompB` is then unavailable.

**Architectural problem:** Boundary-only claims must not relabel internal
references after inspecting a derivation.
**Important data and indices:** `boundary`, `K`, exact root `J`, and the
derivation's finite constant set determine the proposition.
**Layer boundary:** This is local set containment, not global closure or trust.
**Worked example:** The private fixture is closed only after fixing a boundary
that contains `Project.helper`.
**Used by:** `CompB`, `BTreePlan`, and `eval_compB`.
**Proof idea:** Require every reference to occur in boundary or primitive sets.
**Equality notion:** Membership and subset use exact finite-set equality.
**Validation consequence:** A proof certifies the supplied boundary relation,
not the boundary's derivation-independent correctness.
-/
def BClosed
    {K : KernelPresentation.{u}} {J : K.Judgment}
    (boundary : Finset K.ConstantName)
    (derivation : RawDer K J) : Prop :=
  letI := K.constantNameDecidableEq
  derivation.constantReferences ⊆ boundary ∪ K.primitiveConstants

/--
**Architectural problem:** Keep boundary-only plans distinct from unrestricted
local plans.

**Important data and indices:** The subtype retains `K`, fixed `boundary`, exact
root `J`, and a subset witness over evaluated references.

**Used by:** `CompB` is the only M1a constructor from a raw derivation.

**Type-enforced invariant:** The subtype witness fixes the same boundary and
root judgment as its plan.
**Layer boundary:** This is a restricted local tree, not a linked global plan.
**Worked example:** The private restricted fixture retains its internal name
under the explicitly fixed boundary.
**Proof idea:** Pair a `TreePlan K J` with its reference-subset proof.
**Equality notion:** Values use subtype equality over exact plan syntax and the
closure proposition.
**Boundary cases:** An empty boundary permits only primitives and no other names.
**Validation consequence:** Construction exposes, but does not independently
justify, the selected boundary.
-/
def BTreePlan
    (K : KernelPresentation.{u})
    (boundary : Finset K.ConstantName)
    (J : K.Judgment) :=
  {plan : TreePlan K J //
    letI := K.constantNameDecidableEq
    plan.constantReferences ⊆ boundary ∪ K.primitiveConstants}

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

end Atomize.Formal
