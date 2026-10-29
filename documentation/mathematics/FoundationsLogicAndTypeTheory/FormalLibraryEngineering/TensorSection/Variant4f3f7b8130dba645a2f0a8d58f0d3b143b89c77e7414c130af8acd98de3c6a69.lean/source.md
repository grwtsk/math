# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorSection.Variant4f3f7b8130dba645a2f0a8d58f0d3b143b89c77e7414c130af8acd98de3c6a69

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e272307b9020cec60323fab8e550ffdf8d1628e7` · SHA-256 `2cf9d2076358997c24931929f75a71898ee2f71923600ce000581443b024dc45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorRank.Variant62761840450861f2ed0fe0718997f370a91054e68572a97c60600e7d8b91b45c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"62761840450861f2ed0fe0718997f370a91054e68572a97c60600e7d8b91b45c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TensorRank.Variant62761840450861f2ed0fe0718997f370a91054e68572a97c60600e7d8b91b45c","mathematical_subject":"Foundations.Unclassified","original_sha256":"62761840450861f2ed0fe0718997f370a91054e68572a97c60600e7d8b91b45c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineTensor/TensorSection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.IntegrableConnection

/-!
# Folder.CrystallineTensor.TensorSection

Radiation role: research-boundary
BinaryMatrix spine: This module records tensor-valued crystal sections, not binary quantization.
Ontology: crystalline.tensor_section
Pivot role: spectral
Zero typology: none
Contract boundary: definition
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorRank.Variant62761840450861f2ed0fe0718997f370a91054e68572a97c60600e7d8b91b45c

namespace Folder
namespace CrystallineTensor

structure TensorRank where
  value : Nat

structure TensorSection
    {C : CrystallineSite}
    (F : Crystal C)
    (X : C.Site.Obj) where
  rank : TensorRank
  carrier : Type _
  value : carrier
  underlyingSection : F.Section X

def TensorSection.HasRank
    {C : CrystallineSite}
    {F : Crystal C}
    {X : C.Site.Obj}
    (T : TensorSection F X)
    (r : Nat) : Prop :=
  T.rank.value = r

theorem tensor_section_has_some_rank
    {C : CrystallineSite}
    {F : Crystal C}
    {X : C.Site.Obj}
    (T : TensorSection F X) :
    ∃ r : Nat, T.HasRank r :=
  ⟨T.rank.value, rfl⟩

end CrystallineTensor
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=614e788e2b92dc37876968a0aff6dc3d5eb15761c1d093affbab0330cb88b4a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TensorSection/Variant4f3f7b8130dba645a2f0a8d58f0d3b143b89c77e7414c130af8acd98de3c6a69.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
