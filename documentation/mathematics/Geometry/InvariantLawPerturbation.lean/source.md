# Invariant Law Perturbation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71ca929b957dc81cb508f465f25e6052d2b9573f` · SHA-256 `d95f4d9b61e09d6d547b7da6f216b56c3b7bb04d34be5154ad4048c211242f44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ConnesBitfield.Dynamics

/-!
# Invariant-law perturbation renormalization

A uniform one-step kernel defect is converted into one global invariant-law
radius.  This theorem concerns law displacement only; trace stability is a
separate Lipschitz consequence.
-/

namespace Mathematics.ConnesBitfield

universe uSchedule

structure InvariantLawPerturbation
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    (reference :
      ScheduleKernelFamily system carrier Schedule) where
  perturbedKernel :
    Schedule → FiniteBitfieldKernel system
  perturbedInvariant : carrier.Law
  perturbedCommonInvariant :
    ∀ schedule,
      carrier.push
          (perturbedKernel schedule)
          perturbedInvariant =
        perturbedInvariant
  localDefect : ℝ≥0
  kernelDistanceLe :
    ∀ schedule law,
      carrier.wasserstein
          (carrier.push
            (perturbedKernel schedule) law)
          (carrier.push
            (reference.kernel schedule) law) ≤
        localDefect

namespace InvariantLawPerturbation

theorem displacement_recurrence
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    (perturbation :
      InvariantLawPerturbation reference) :
    carrier.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw ≤
      perturbation.localDefect +
        reference.contraction *
          carrier.wasserstein
            perturbation.perturbedInvariant
            reference.invariantLaw := by
  let schedule := reference.defaultSchedule
  calc
    carrier.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw =
      carrier.wasserstein
        (carrier.push
          (perturbation.perturbedKernel schedule)
          perturbation.perturbedInvariant)
        (carrier.push
          (reference.kernel schedule)
          reference.invariantLaw) := by
            rw [perturbation.perturbedCommonInvariant,
              reference.commonInvariant]
    _ ≤
      carrier.wasserstein
          (carrier.push
            (perturbation.perturbedKernel schedule)
            perturbation.perturbedInvariant)
          (carrier.push
            (reference.kernel schedule)
            perturbation.perturbedInvariant) +
        carrier.wasserstein
          (carrier.push
            (reference.kernel schedule)
            perturbation.perturbedInvariant)
          (carrier.push
            (reference.kernel schedule)
            reference.invariantLaw) := by
              simpa
                  [carrier.wasserstein_eq_nndist]
                using
                  nndist_triangle
                    (carrier.push
                      (perturbation.perturbedKernel
                        schedule)
                      perturbation.perturbedInvariant)
                    (carrier.push
                      (reference.kernel schedule)
                      perturbation.perturbedInvariant)
                    (carrier.push
                      (reference.kernel schedule)
                      reference.invariantLaw)
    _ ≤
      perturbation.localDefect +
        reference.contraction *
          carrier.wasserstein
            perturbation.perturbedInvariant
            reference.invariantLaw :=
      add_le_add
        (perturbation.kernelDistanceLe
          schedule perturbation.perturbedInvariant)
        (reference.uniformlyWassersteinContractive
          schedule
          perturbation.perturbedInvariant
          reference.invariantLaw)

/--
The deterministic global residual radius.  The real-valued statement avoids
hiding the positivity requirement in truncated nonnegative-real subtraction.
-/
theorem invariant_law_perturbation_bound
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    (perturbation :
      InvariantLawPerturbation reference) :
    (carrier.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw : ℝ) ≤
      (perturbation.localDefect : ℝ) /
        (1 - (reference.contraction : ℝ)) := by
  have recurrenceReal :
      (carrier.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw : ℝ) ≤
      (perturbation.localDefect : ℝ) +
        (reference.contraction : ℝ) *
          (carrier.wasserstein
            perturbation.perturbedInvariant
            reference.invariantLaw : ℝ) := by
    exact_mod_cast perturbation.displacement_recurrence
  have contractionReal :
      (reference.contraction : ℝ) < 1 := by
    exact_mod_cast reference.contraction_lt_one
  have denominatorPositive :
      0 < 1 - (reference.contraction : ℝ) :=
    sub_pos.mpr contractionReal
  apply (le_div_iff₀ denominatorPositive).2
  nlinarith

end InvariantLawPerturbation

end Mathematics.ConnesBitfield
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93c2d9c2d8106b0a273df9254d77f8bb3db11238846df539313778f635b352b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/InvariantLawPerturbation/Variantd95f4d9b61e09d6d547b7da6f216b56c3b7bb04d34be5154ad4048c211242f44.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
