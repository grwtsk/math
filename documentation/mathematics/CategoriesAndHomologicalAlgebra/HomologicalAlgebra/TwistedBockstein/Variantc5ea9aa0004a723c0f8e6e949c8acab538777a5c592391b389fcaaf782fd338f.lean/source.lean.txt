import Mathematics.Homology.BocksteinExtension
import Mathematics.Homology.LocalSystem

/-!
# Twisted Bockstein phase

For a local system `L`, the coefficient sequence is
`0 → L → Lℝ → Lℝ/L → 0`.  Its finite obstruction target is the kernel of
the next-degree map to real twisted cohomology, not the ordinary integral
torsion group unless a trivialization proves that specialization.
-/

namespace Mathematics.Homology

universe u v w

/-- Certified local-system coefficient extension in one degree. -/
structure TwistedBocksteinPhase
    (ContinuousTwistedTorus : Type u)
    (TwistedPhase : Type v)
    (NextRealizationKernel : Type w)
    [AddCommGroup ContinuousTwistedTorus]
    [AddCommGroup TwistedPhase]
    [AddCommGroup NextRealizationKernel] where
  degree : Nat
  localSystemDigest : Digest
  extension :
    BocksteinExtension
      ContinuousTwistedTorus TwistedPhase NextRealizationKernel
  integralToRealKernelDigest : Digest
  coefficientSequenceCertificate : ObjectAddress
  trivialRankOneSpecialization :
    Option ObjectAddress

end Mathematics.Homology
