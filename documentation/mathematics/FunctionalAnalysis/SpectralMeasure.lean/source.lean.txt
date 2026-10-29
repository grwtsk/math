import Surface.Hilbert.TraceClass

namespace Surface

universe u v

/-!
What is formalized:
Spectral-measure and spectral-theorem certificate interfaces for Hilbert
operators.

What is certificate-gated:
Existence of a spectral measure and any spectral theorem are explicit
certificates.

What is not claimed:
No zeta spectral correspondence, Hilbert--Pólya theorem, or operator spectrum
classification is proved here.

Primary mathematical source:
Internal Surface Hilbert spectral-readiness interface.
-/

structure Hilbert.SpectralMeasure
    {H : Hilbert.Space.{u, v}}
    (T : Hilbert.LinearOperator H H) where
  measureLabel : String
  projectionValued : Prop
  projectionValuedCertified : projectionValued
  boundary : List String

structure Hilbert.SpectralTheoremCertificate
    {H : Hilbert.Space.{u, v}}
    (T : Hilbert.LinearOperator H H) where
  selfAdjoint : Hilbert.SelfAdjointCertificate T
  spectralMeasure : Hilbert.SpectralMeasure T
  theoremApplies : Prop
  theoremAppliesCertified : theoremApplies
  boundary : List String

theorem Hilbert.spectralTheorem_certificate_applies
    {H : Hilbert.Space.{u, v}}
    {T : Hilbert.LinearOperator H H}
    (C : Hilbert.SpectralTheoremCertificate T) :
    C.theoremApplies :=
  C.theoremAppliesCertified

end Surface
