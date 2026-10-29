# Gauge Namespaced Gauge Transformation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `921b1c6d543fbb58a3af468fb56ac000da1aa72a` · SHA-256 `163c490e2387229827b8c39a463549f3e50a6cd852bd7bbc3e1efc3f6c965d26`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GaugeTransformation.Variantf5ca1c0fbba93990a1417a23fff84a5af1d55646d259a0d0f7f3af3a12146b6c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5ca1c0fbba93990a1417a23fff84a5af1d55646d259a0d0f7f3af3a12146b6c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GaugeTransformation.Variantf5ca1c0fbba93990a1417a23fff84a5af1d55646d259a0d0f7f3af3a12146b6c","mathematical_subject":"Foundations.Unclassified","original_sha256":"f5ca1c0fbba93990a1417a23fff84a5af1d55646d259a0d0f7f3af3a12146b6c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/TensorNetwork/Gauge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.TensorNetwork.MPS

/-!
# Certified MPS gauge equivalence

Gauge data are representation coordinates, never semantic identity.  The
certificate records the registered internal change of basis and proves that
the complete contraction is unchanged.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GaugeTransformation.Variantf5ca1c0fbba93990a1417a23fff84a5af1d55646d259a0d0f7f3af3a12146b6c

namespace Mathematics.TensorNetwork

/-- One certified internal gauge transformation between two MPS packages. -/
structure GaugeTransformation
    (source target : OpenMPS N D) where
  internalBondMapId : Fin (N + 1) → String
  inverseBondMapId : Fin (N + 1) → String
  inverseLawDigest : String
  contractPreserved :
    target.contract = source.contract

/-- Registered gauge equivalence; arbitrary state equality is not enough. -/
def GaugeEquivalent
    (source target : OpenMPS N D) : Prop :=
  Nonempty (GaugeTransformation source target)

/-- Certified internal gauge transformations preserve the represented state. -/
theorem contract_gauge_invariant
    {source target : OpenMPS N D}
    (gauge : GaugeTransformation source target) :
    target.contract = source.contract :=
  gauge.contractPreserved

/-- Inserting a registered equivalence and its inverse cancels exactly. -/
theorem inserted_inverse_cancels
    (equivalence : α ≃ β)
    (value : α) :
    equivalence.symm (equivalence value) = value :=
  equivalence.symm_apply_apply value

end Mathematics.TensorNetwork
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81ef3212aa816059ac3a3de7ee3ce9d687293a1cf90cea22c5d91bf5c2543b9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gauge/Variantfd9fafd980d15124236e9b98a0b4a027df110307e04ba823d5746d47030a6733.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
