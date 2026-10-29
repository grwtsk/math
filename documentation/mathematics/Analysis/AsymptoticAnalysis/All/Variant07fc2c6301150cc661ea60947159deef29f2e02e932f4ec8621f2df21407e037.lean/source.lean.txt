import Mathematics.Stability.Map
import Mathematics.Stability.Residual
import Mathematics.Stability.DerivativeGain
import Mathematics.Stability.DefectTransport
import Mathematics.Stability.FixedPoint
import Mathematics.Stability.Contraction
import Mathematics.Stability.Expansion
import Mathematics.Stability.PeriodicOrbit
import Mathematics.Stability.Damping
import Mathematics.Stability.LogVerification
import Mathematics.Stability.Propagation
import Mathematics.Stability.Noninterference

/-!
# Reflective stability proof boundary

This import-only umbrella exposes structural proofs for residual separation,
affine defect transport, damping fixed-point preservation, cycle multipliers,
authority noninterference, and append-only historical repair.  Completeness,
basin, branch, derivative, asymptotic-floor, and periodic-attraction claims are
represented by explicit propositions with `ProofDisposition`; they are not
postulated as axioms.
-/
