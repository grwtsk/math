import Mathematics.GammaBridge.Exact

/-! # Explicit regularity authority -/

namespace Mathematics.GammaBridge

inductive RegularityRequest
  | continuous
  | lipschitz
  | continuouslyDifferentiable
  deriving DecidableEq, Repr

inductive RegularityStatus
  | proved
  | unavailable
  deriving DecidableEq, Repr

/-- Regularity is a separate certificate and is never inferred from endpoint
preservation. -/
structure RegularityCertificate where
  request : RegularityRequest
  status : RegularityStatus
  evidence : Option CertificateId
  deriving DecidableEq, Repr

def RegularityCertificate.Valid (certificate : RegularityCertificate) : Prop :=
  certificate.status = .proved → certificate.evidence.isSome

end Mathematics.GammaBridge
