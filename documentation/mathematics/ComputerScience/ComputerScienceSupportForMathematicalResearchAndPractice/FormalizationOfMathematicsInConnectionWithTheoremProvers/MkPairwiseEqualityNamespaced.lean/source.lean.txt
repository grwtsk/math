-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkPairwiseEquality.Variantbbe7219b77bb0595e97fbbbfa4a670999c9417c9a7e044516017775c95b0ae0a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbe7219b77bb0595e97fbbbfa4a670999c9417c9a7e044516017775c95b0ae0a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkPairwiseEquality.Variantbbe7219b77bb0595e97fbbbfa4a670999c9417c9a7e044516017775c95b0ae0a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bbe7219b77bb0595e97fbbbfa4a670999c9417c9a7e044516017775c95b0ae0a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/QqTest/mkPairwiseEquality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Qq

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkPairwiseEquality.Variantbbe7219b77bb0595e97fbbbfa4a670999c9417c9a7e044516017775c95b0ae0a

open Qq

def mkPairwiseEquality {α : Q(Sort u)} : List Q($α) → Q(Prop)
  | [a, b] => q($a = $b)
  | a :: b :: cs => q($a = $b ∧ $(mkPairwiseEquality (b :: cs)))
  | _ => q(True)
