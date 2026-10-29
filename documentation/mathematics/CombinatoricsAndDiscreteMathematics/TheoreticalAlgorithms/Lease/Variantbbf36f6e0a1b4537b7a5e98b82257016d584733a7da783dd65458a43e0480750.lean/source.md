# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lease.Variantbbf36f6e0a1b4537b7a5e98b82257016d584733a7da783dd65458a43e0480750

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57ad7adb26e7b973dfbff2dec025897b59aedf81` · SHA-256 `bbf36f6e0a1b4537b7a5e98b82257016d584733a7da783dd65458a43e0480750`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Capability.Grant

/-!
# Revocable temporal leases

Only a certified grant can underwrite a lease.  Revocation is represented as
an append-only cutoff and delegation can only reduce scope and lifetime.
-/

namespace Mathematics.Capability

structure Lease where
  leaseId : LeaseId
  grant : CertifiedGrant
  capability : OperationalCapability
  issuedAt : Nat
  expiresAt : Nat
  capability_within_grant :
    capability ≤ grant.capability
  nonempty_window :
    issuedAt < expiresAt

structure Revocation where
  leaseId : LeaseId
  effectiveAt : Nat
  reason : String
  deriving DecidableEq, Repr

namespace Lease

structure ValidAt
    (lease : Lease)
    (revocations : List Revocation)
    (time : Nat) : Prop where
  issued : lease.issuedAt ≤ time
  beforeExpiry : time < lease.expiresAt
  beforeEveryRevocation :
    ∀ revocation ∈ revocations,
      revocation.leaseId = lease.leaseId →
        time < revocation.effectiveAt

theorem not_valid_at_or_after_revocation
    (lease : Lease)
    (revocations : List Revocation)
    (time : Nat)
    (revocation : Revocation)
    (listed : revocation ∈ revocations)
    (sameLease : revocation.leaseId = lease.leaseId)
    (cutoff : revocation.effectiveAt ≤ time) :
    ¬ lease.ValidAt revocations time := by
  intro valid
  exact
    (Nat.not_lt_of_ge cutoff)
      (valid.beforeEveryRevocation revocation listed sameLease)

end Lease

structure DelegatedLease where
  parent : Lease
  child : Lease
  capability_nonamplifying :
    child.capability ≤ parent.capability
  begins_within_parent :
    parent.issuedAt ≤ child.issuedAt
  ends_within_parent :
    child.expiresAt ≤ parent.expiresAt

namespace DelegatedLease

theorem scope_nonamplifying
    (delegation : DelegatedLease) :
    delegation.child.capability.elements ⊆
      delegation.parent.capability.elements :=
  delegation.capability_nonamplifying.2.2.2.1

theorem effects_nonamplifying
    (delegation : DelegatedLease) :
    delegation.child.capability.effects ≤
      delegation.parent.capability.effects :=
  delegation.capability_nonamplifying.2.2.2.2

end DelegatedLease

end Mathematics.Capability
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e995eedcaa846168f1f8c7cdb8ab5d13b3cdff89b4b45bda8a99db50b2d07b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lease/Variantbbf36f6e0a1b4537b7a5e98b82257016d584733a7da783dd65458a43e0480750.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
