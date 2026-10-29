/-
GenericRestrictionAndBoundaryPredicate
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 340ee1d86c16a66190d472c5c4cd8c53ccf65846bef572ae767f5735adc220e2
Organized SHA-256: 18356dc1dd59e12b63ed2e97bcce397298e72d7e571d662c22c2b2ce44ce1c43
PMD: 510.7.010.010.010 bijections (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Generic unique-scalar and validityRestrictedEquiv retain full theory and arbitrary Valid predicate. TransformationCardinalityBoundary is only the definition ¬Function.Surjective program for the complete function type; no proof of it, cardinality separation or transformation completeness is supplied. The explicit open BitMatrix.Rhetorical restores only the original imported Core short-name lookup; no new414 provider is imported. -/

import BitMatrix.Codec.SequentialPrimeSource
import BitMatrix.Rhetorical.Core
import BitMatrix.Topology.DesignatedCantor

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ExactCarrierRepresentationPackages.Variant340ee1d86c16a661.WholeTheoryAndSymbolicSource

/-!
# One invariant theory in four rhetorical modes

This module is the formal correspondence layer for the four presentations in
`docs/bit/mapping-rhetorical-systems.md`.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ExactSourceRelativeRepresentations.Variant340ee1d86c16a661


open BitMatrix.Rhetorical

/-- Every target Boolean state has exactly one scalar relative to the baseline. -/
theorem source_relative_scalar_exists_unique
    (theory : InvariantTheory)
    (target : BitMatrix.Carrier.BooleanState theory.Address) :
    ∃! scalar : theory.cantor.Scalar,
      BitMatrix.Carrier.distinguishedInterpreter
        theory.enumeration.enumerate theory.cantor theory.baseline scalar = target := by
  let equivalence := BitMatrix.Carrier.baselineEquiv
    theory.enumeration.enumerate theory.cantor theory.baseline
  refine ⟨equivalence.symm target, equivalence.apply_symm_apply target, ?_⟩
  intro scalar equal
  apply equivalence.injective
  calc
    equivalence scalar = target := equal
    _ = equivalence (equivalence.symm target) :=
      (equivalence.apply_symm_apply target).symm

/-- Restricting an equivalence to a validity predicate remains an equivalence. -/
def validityRestrictedEquiv
    (theory : InvariantTheory)
    (Valid : BitMatrix.Carrier.BooleanState theory.Address → Prop) :
    { scalar : theory.cantor.Scalar //
      Valid ((BitMatrix.Carrier.baselineEquiv
        theory.enumeration.enumerate theory.cantor theory.baseline) scalar) } ≃
    { state : BitMatrix.Carrier.BooleanState theory.Address // Valid state } where
  toFun scalar := ⟨
    (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline) scalar,
    scalar.property⟩
  invFun state := ⟨
    (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline).symm state,
    by
      rw [(BitMatrix.Carrier.baselineEquiv
        theory.enumeration.enumerate theory.cantor theory.baseline).apply_symm_apply]
      exact state.property⟩
  left_inv scalar := by
    apply Subtype.ext
    exact (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline).symm_apply_apply scalar
  right_inv state := by
    apply Subtype.ext
    exact (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline).apply_symm_apply state

/--
Formal classification of the transformation-cardinality boundary.  A proof of
this proposition for the concrete infinite carrier remains an external set-
theoretic theorem; the interface prevents it from being confused with the
state-parameterization theorem above.
-/
def TransformationCardinalityBoundary
    (theory : InvariantTheory)
    (program : theory.cantor.Scalar →
      BitMatrix.Carrier.BooleanState theory.Address →
        BitMatrix.Carrier.BooleanState theory.Address) : Prop :=
  ¬Function.Surjective program

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ExactSourceRelativeRepresentations.Variant340ee1d86c16a661
