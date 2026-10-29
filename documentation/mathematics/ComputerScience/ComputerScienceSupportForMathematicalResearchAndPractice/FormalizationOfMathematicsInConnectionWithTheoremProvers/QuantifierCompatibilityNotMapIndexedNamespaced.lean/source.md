# Quantifier Compatibility Not Map Indexed Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e247c9f60d7a39d6540fec66429e83ef21adf1c` · SHA-256 `2c751ae28b2d1622e6a0bcb17f42c6af30e4e4b1d81722e18865a55e5aa8e558`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.V.Variantcbc77d9889f73885ba2179754687df69c987000f7a1ddb7c0ce071cc2f584498","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cbc77d9889f73885ba2179754687df69c987000f7a1ddb7c0ce071cc2f584498","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.V.Variantcbc77d9889f73885ba2179754687df69c987000f7a1ddb7c0ce071cc2f584498","mathematical_subject":"Foundations.Unclassified","original_sha256":"cbc77d9889f73885ba2179754687df69c987000f7a1ddb7c0ce071cc2f584498","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-formal-conformance-cycle-5/reproductions/02_quantifier_compatibility_not_map_indexed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Adapters.FCRSTransport


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.V.Variantcbc77d9889f73885ba2179754687df69c987000f7a1ddb7c0ce071cc2f584498

namespace FCRS.TheoremTransfer.Cycle5QuantifierCompatibility

open FCRS.TheoremTransfer.Adapters.FCRSTransport

def v (name : String) : VersionId :=
  .atomic ⟨"https://example.invalid/cycle-5", name, "1", "sha256:" ++ name⟩

/-!
`fullySpecified` is indexed by carrier names but accepts no carrier relation at
all.  Consequently the same asserted closed profile certifies `Bool -> Nat`.
-/
def finiteToInfiniteCompatibility :
    QuantifierUnspecifiedCompatibility Bool Nat
      neutralQuantifierProfile neutralQuantifierProfile :=
  .fullySpecified (by simp [neutralQuantifierProfile, QuantifierProfile.HasUnspecified])
    (by simp [neutralQuantifierProfile, QuantifierProfile.HasUnspecified])

/-!
Even the carrier-equivalence branch is not indexed by the `Translation.mapObject`
function.  A non-bijective constant map can coexist with an unrelated identity
equivalence in the current public types.
-/
def constantCarrierMap : Bool → Bool := fun _ => false

def unrelatedIdentityCompatibility :
    QuantifierUnspecifiedCompatibility Bool Bool
      (QuantifierProfile.unspecified
        (v "cycle-5-source-quantifiers"))
      (QuantifierProfile.unspecified
        (v "cycle-5-target-quantifiers")) :=
  .evidenced (QuantifierCarrierEquivalence.refl Bool)
    [v "cycle-5-unrelated-equivalence"] (by simp)

def acceptedUnlinkedMapAndCompatibility :
    (Bool → Bool) ×
      QuantifierUnspecifiedCompatibility Bool Bool
        (QuantifierProfile.unspecified
          (v "cycle-5-source-quantifiers"))
        (QuantifierProfile.unspecified
          (v "cycle-5-target-quantifiers")) :=
  ⟨constantCarrierMap, unrelatedIdentityCompatibility⟩

#check finiteToInfiniteCompatibility
#check acceptedUnlinkedMapAndCompatibility

end FCRS.TheoremTransfer.Cycle5QuantifierCompatibility
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a7f5157e0936278b44d921abc358e5f29a93ef4765d97d2bf87babd66d005a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/02QuantifierCompatibilityNotMapIndexed/Variant27580fbbe8b4b574ceca366cbdb971ee1a6a6ec9b2e9aff11d538ee22300cfe3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
