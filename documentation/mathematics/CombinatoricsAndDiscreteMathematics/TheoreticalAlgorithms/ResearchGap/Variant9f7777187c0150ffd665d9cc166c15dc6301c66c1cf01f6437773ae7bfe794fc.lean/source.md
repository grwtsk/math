# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResearchGap.Variant9f7777187c0150ffd665d9cc166c15dc6301c66c1cf01f6437773ae7bfe794fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fea2ce076fc419c489a9c66d3f3fb38c775c6144` · SHA-256 `9f7777187c0150ffd665d9cc166c15dc6301c66c1cf01f6437773ae7bfe794fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Prismatic.ExternalObligation

/-!
# Exact theorem-input gaps

The gap engine computes `required \\ available` over immutable object
addresses.  It does not estimate nearness to a theorem and does not convert
evidence into a dependency.
-/

namespace Mathematics.Prismatic

/-- Exact dependency inputs required and presently available for an obligation. -/
structure TheoremInputGap where
  obligationId : StableId
  required : List ObjectAddress
  available : List ObjectAddress
  requirementDigest : Digest
  availabilityDigest : Digest
  gapAddress : ObjectAddress

namespace TheoremInputGap

/-- Required addresses absent from the accepted state. -/
def missing (gap : TheoremInputGap) : List ObjectAddress :=
  gap.required.filter (fun address ↦ address ∉ gap.available)

/-- Closure means every exact required address is accepted and available. -/
def Closed (gap : TheoremInputGap) : Prop :=
  ∀ address ∈ gap.required, address ∈ gap.available

@[simp]
theorem mem_missing_iff
    (gap : TheoremInputGap) (address : ObjectAddress) :
    address ∈ gap.missing ↔
      address ∈ gap.required ∧ address ∉ gap.available := by
  simp [missing]

theorem closed_iff_missing_nil
    (gap : TheoremInputGap) :
    gap.Closed ↔ gap.missing = [] := by
  constructor
  · intro closed
    apply List.eq_nil_iff_forall_not_mem.mpr
    intro address membership
    have parts := (gap.mem_missing_iff address).mp membership
    exact parts.2 (closed address parts.1)
  · intro noMissing address required
    by_contra unavailable
    have membership : address ∈ gap.missing :=
      (gap.mem_missing_iff address).mpr ⟨required, unavailable⟩
    rw [noMissing] at membership
    simp at membership

end TheoremInputGap

end Mathematics.Prismatic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bb7604d744bf63a3b259714c370fe1df0bdf627c585b7305d03bb0db10345de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ResearchGap/Variant9f7777187c0150ffd665d9cc166c15dc6301c66c1cf01f6437773ae7bfe794fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
