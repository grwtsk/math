import Mathematics.StratifiedBoundary.SquareRoot.FiniteStratum

/-!
# Uniform ordinal-family square-root bound

The result is conditional on a common scale and explicit finite-stratum
certificates.
-/

namespace Mathematics.StratifiedBoundary

structure OrdinalFamilySquareRootCertificate where
  finiteCertificate : Nat → FiniteStratumSquareRootCertificate
  uniformScale : Nat
  scaleDominates :
    ∀ stage,
      (finiteCertificate stage).squareRootScale *
          (finiteCertificate stage).spectralMultiplicityScale ≤
        uniformScale

theorem ordinal_family_square_root_bound
    (certificate : OrdinalFamilySquareRootCertificate)
    (stage : Nat) :
    (certificate.finiteCertificate stage).unnormalizedDiscrepancy ≤
      certificate.uniformScale :=
  Nat.le_trans
    (certificate.finiteCertificate stage).bound
    (certificate.scaleDominates stage)

end Mathematics.StratifiedBoundary
