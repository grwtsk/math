# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogicalStatus.Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d3fc2ab1779860c41472fbc76c1515b67bf3929` · SHA-256 `8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Comparison.Core
import Lean

/-!
# Claims, proofs, and explicit hypotheses

A conjecture is just a `Claim` for which no `Certificate` has been supplied.
There is intentionally no operation that promotes an arbitrary claim to a
certificate.  Names and manifests may record research targets, but code
generation and manifests are not theorem authorities.
-/

namespace DAF.Comparison

universe u v

/--
Typed manifest metadata for the three logical statuses.  This tag never
produces a proof; proof authority remains in `Certificate` structures.
-/
inductive LogicalStatus
  | proved
  | conditional
  | conjectural
  deriving DecidableEq, Repr

/-- A proposition stated about a particular comparison. -/
structure Claim (C : Spec A B) where
  statement : Prop

/-- A proof of a stated comparison claim. -/
structure Certificate (C : Spec A B) (P : Claim C) where
  proof : P.statement

/-- A proof of a claim under an explicit, retained hypothesis. -/
structure ConditionalCertificate (C : Spec A B) (P : Claim C) where
  Hypothesis : Prop
  proof : Hypothesis → P.statement

namespace Certificate

def logicalStatus (_h : Certificate C P) : LogicalStatus :=
  .proved

/-- A proof can be viewed as conditional on the vacuous hypothesis `True`. -/
def toConditional (h : Certificate C P) : ConditionalCertificate C P where
  Hypothesis := True
  proof := fun _ ↦ h.proof

end Certificate

namespace ConditionalCertificate

def logicalStatus (_h : ConditionalCertificate C P) : LogicalStatus :=
  .conditional

/-- Replace a hypothesis by a stronger one through an explicit implication. -/
def mapHypothesis
    (h : ConditionalCertificate C P)
    {H₂ : Prop}
    (strengthen : H₂ → h.Hypothesis) :
    ConditionalCertificate C P where
  Hypothesis := H₂
  proof := fun h₂ ↦ h.proof (strengthen h₂)

end ConditionalCertificate

/-- Metadata for a conjectural research target; it contains no proof. -/
structure ConjecturalTarget (C : Spec A B) where
  name : Lean.Name
  claim : Claim C

namespace ConjecturalTarget

def logicalStatus (_target : ConjecturalTarget C) : LogicalStatus :=
  .conjectural

end ConjecturalTarget

end DAF.Comparison
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b499a2bf16ed0270758c344656474362760121f6c878789da6162e421a2b5358 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
