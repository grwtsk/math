-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MetadataAssertion.Variantc2140a1dac685059a01bacb6bba81262bcbe707cbadc1fd16ab57dd50ba40bec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2140a1dac685059a01bacb6bba81262bcbe707cbadc1fd16ab57dd50ba40bec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MetadataAssertion.Variantc2140a1dac685059a01bacb6bba81262bcbe707cbadc1fd16ab57dd50ba40bec","mathematical_subject":"Computation.DataStructures","original_sha256":"c2140a1dac685059a01bacb6bba81262bcbe707cbadc1fd16ab57dd50ba40bec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/MetadataAssertion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.MetadataType

/-! # Span-indexed typed metadata assertions -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MetadataAssertion.Variantc2140a1dac685059a01bacb6bba81262bcbe707cbadc1fd16ab57dd50ba40bec

namespace Mathematics.SemanticTokenization

structure MetadataAssertion
    (text : TextCarrier)
    (kind : MetadataType) where
  assertionId : StableId
  span : Span text
  value : MetadataValue kind

structure SomeMetadataAssertion (text : TextCarrier) where
  kind : MetadataType
  assertion : MetadataAssertion text kind

structure MetadataProfile (text : TextCarrier) where
  assertions : List (SomeMetadataAssertion text)

end Mathematics.SemanticTokenization
