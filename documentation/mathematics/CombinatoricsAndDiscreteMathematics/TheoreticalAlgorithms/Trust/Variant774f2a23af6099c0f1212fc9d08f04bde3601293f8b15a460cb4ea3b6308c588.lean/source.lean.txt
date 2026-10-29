import Mathematics.Capability.Lease

/-!
# Explicit human trust

Trust is a human-issued, scoped, revocable lease.  It is not inferred from
competence, operating-system permission, performance evidence, or recognition.
-/

namespace Mathematics.Juris

open Mathematics.Capability

structure TrustGrant where
  lease : Lease
  issuer_is_human :
    lease.grant.issuer.kind = .human

def TrustGrant.ActiveAt
    (trust : TrustGrant)
    (revocations : List Revocation)
    (time : Nat) : Prop :=
  trust.lease.ValidAt revocations time

end Mathematics.Juris
