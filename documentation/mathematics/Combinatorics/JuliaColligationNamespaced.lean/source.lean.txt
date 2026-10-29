-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.JuliaColligation.Variantf9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.JuliaColligation.Variantf9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"f9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Hardy/JuliaColligation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Hardy.DouglasConnector

/-!
# Julia colligation receipt

The colligation is generated only from a certified reduced Douglas connector.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.JuliaColligation.Variantf9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b

namespace Mathematics.SemiLocalDefect.Hardy

universe uPrime

structure JuliaColligation
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {capacity :
      PrimeCutDefectCapacity model Prime}
    {canonical :
      CanonicalTransmission capacity}
    {operations :
      OperatorComposition model}
    {cut : Finset Prime}
    {prime : Prime}
    (douglas :
      ReducedDouglasConnector
        canonical operations cut prime) where
  blockOperator : model.Operator
  unitaryOnDeclaredRange : Prop
  unitaryOnDeclaredRangeProof :
    unitaryOnDeclaredRange
  realizesConnector : Prop
  realizesConnectorProof :
    realizesConnector

end Mathematics.SemiLocalDefect.Hardy
