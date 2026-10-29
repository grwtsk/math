# Certificate Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc313702b8d0028d5f64c57571a177d6fe50f610` · SHA-256 `7753feb35838973ce956a4db7f3fd47904d70bef9944ce1fb5a19bd1f7fd09df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Transport.Hash
public import Surface.Core.Transport.Payload

/-!
# Cross-language finite transport certificates

Evidence level is explicit. A certificate can carry a proposition-valued
agreement proof for one exact input, but finite corpus labels alone never imply
universal implementation equivalence.
-/

public section

namespace Surface.Core.Transport

@[surface_novel]
inductive ConformanceEvidenceLevel where
  | finiteGoldenCorpus
  | exhaustiveFiniteDomain
  | universalVerifiedImplementation
deriving DecidableEq, Repr

@[surface_novel]
structure FiniteConformanceRecord where
  schemaId : String
  implementationId : String
  implementationVersion : String
  contractHash : Hash256
  sourceSnapshotHash : Hash256
  evidenceLevel : ConformanceEvidenceLevel
  corpusHash : Hash256
  exposesProposition : Bool := false
deriving DecidableEq, Repr

@[expose] def FiniteConformanceRecord.Valid
    (record : FiniteConformanceRecord) : Prop :=
  record.contractHash.Valid ∧ record.sourceSnapshotHash.Valid ∧
    record.corpusHash.Valid ∧ record.exposesProposition = false

instance (record : FiniteConformanceRecord) : Decidable record.Valid := by
  unfold FiniteConformanceRecord.Valid
  infer_instance

@[surface_novel, surface_certificate]
structure RustTransportCertificate
    {α : Type} (semantics : PayloadSemantics α)
    (input : Revisioned α) where
  record : FiniteConformanceRecord
  rustExpectedUpdate : Revisioned α
  conforms : rustExpectedUpdate = semantics.expectedUpdate input

@[expose] def RustTransportConforms
    {α : Type} {semantics : PayloadSemantics α}
    {input : Revisioned α}
    (certificate : RustTransportCertificate semantics input) : Prop :=
  certificate.rustExpectedUpdate = semantics.expectedUpdate input

@[surface_novel, surface_published, surface_certificate]
theorem rustExpectedUpdate_eq_leanExpectedUpdate
    {α : Type} {semantics : PayloadSemantics α}
    {input : Revisioned α}
    (certificate : RustTransportCertificate semantics input)
    (conforms : RustTransportConforms certificate) :
    certificate.rustExpectedUpdate = semantics.expectedUpdate input :=
  conforms

@[surface_novel, surface_published]
theorem finiteConformanceRecord_does_not_expose_proposition
    (record : FiniteConformanceRecord) (valid : record.Valid) :
    record.exposesProposition = false :=
  valid.2.2.2

end Surface.Core.Transport
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99149a55c43532936569e54541c70b1a167932b04a2fe64ed4cd5e5b7d256130 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificate/Variant7753feb35838973ce956a4db7f3fd47904d70bef9944ce1fb5a19bd1f7fd09df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
