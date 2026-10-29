import Mathematics.Homology.LocalSystem

/-!
# Monodromy-compatible fiber Gram fields

The base here is the lifted base on which the loop group acts.  Covariance is
stated directly as preservation of the bilinear form, avoiding coordinate
ambiguity in inverse-transpose formulas.
-/

namespace Mathematics.Homology

universe u

noncomputable section

/-- A positive fiber metric equivariant under integral monodromy. -/
structure FiberGramField
    (LiftedBase : Type u)
    (Loop : Type*) [Group Loop] [MulAction Loop LiftedBase]
    (rank : Nat)
    (localSystem : IntegralLocalSystem Loop rank) where
  gram : GramField LiftedBase (RealFiber rank)
  monodromyIsometric :
    ∀ loop base left right,
      (gram (loop • base)).form
          (localSystem.realMonodromy loop left)
          (localSystem.realMonodromy loop right) =
        (gram base).form left right
  metricDigest : Digest
  metricCertificate : ObjectAddress

/--
The exceptional parallel case: one constant Gram form is preserved by every
monodromy operator.
-/
structure ParallelFiberGram
    (Loop : Type*) [Group Loop]
    (rank : Nat)
    (localSystem : IntegralLocalSystem Loop rank) where
  gram : PositiveGram (RealFiber rank)
  monodromyIsometric :
    ∀ loop left right,
      gram.form
          (localSystem.realMonodromy loop left)
          (localSystem.realMonodromy loop right) =
        gram.form left right
  certificate : ObjectAddress

end

end Mathematics.Homology
