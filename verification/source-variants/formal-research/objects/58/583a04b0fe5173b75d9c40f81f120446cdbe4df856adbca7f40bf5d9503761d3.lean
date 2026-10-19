import Mathematics.Homology.GramField

/-!
# Integral local systems and scalar extension

The monodromy acts on an integral lattice and on its real scalar extension.
Their compatibility is exact data.  No cover or metric is inferred from the
monodromy alone.
-/

namespace Mathematics.Homology

abbrev IntegralFiber (rank : Nat) := Fin rank → ℤ
abbrev RealFiber (rank : Nat) := Fin rank → ℝ

/-- Coordinatewise scalar extension from an integral fiber to a real fiber. -/
def integralFiberToReal
    {rank : Nat} (vector : IntegralFiber rank) :
    RealFiber rank :=
  fun index ↦ (vector index : ℝ)

/-- A fixed-rank certified integral local system over a loop group. -/
structure IntegralLocalSystem
    (Loop : Type*) [Group Loop] (rank : Nat) where
  integralMonodromy :
    Loop →* (IntegralFiber rank ≃ₗ[ℤ] IntegralFiber rank)
  realMonodromy :
    Loop →* (RealFiber rank ≃ₗ[ℝ] RealFiber rank)
  scalarExtensionCompatible :
    ∀ loop vector,
      realMonodromy loop (integralFiberToReal vector) =
        integralFiberToReal (integralMonodromy loop vector)
  monodromyDigest : Digest
  localSystemCertificate : ObjectAddress

end Mathematics.Homology
