-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.HardySoninPacketBridge.Variant213d3041e2334366d4b3abcafe56e72610cb6b3037904d27de08172377134730","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"213d3041e2334366d4b3abcafe56e72610cb6b3037904d27de08172377134730","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.HardySoninPacketBridge.Variant213d3041e2334366d4b3abcafe56e72610cb6b3037904d27de08172377134730","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"213d3041e2334366d4b3abcafe56e72610cb6b3037904d27de08172377134730","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Sonin/HardyComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Sonin.CofinalGram
import Mathematics.SemiLocalDefect.Hardy.HardyDefect

/-!
# Hardy--Sonin comparison hierarchy

Packet, trace-class, and operator comparisons are separate interfaces.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.HardySoninPacketBridge.Variant213d3041e2334366d4b3abcafe56e72610cb6b3037904d27de08172377134730

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace uTest

structure HardySoninPacketBridge
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    {range :
      FiniteHorizonRangeProjection
        model connectors}
    (hardy :
      Hardy.HardyDefectFamily model Prime)
    (Test : Type uTest) where
  packetEnergy : Test → model.Operator → ℝ
  error :
    Finset Prime → Finset Prime → Test → ℝ
  comparison :
    ∀ source horizon test,
      source ⊆ horizon →
      |packetEnergy test (hardy.defect source) -
        packetEnergy test
          (range.projection source horizon)| ≤
        error source horizon test

structure HardySoninTraceClassBridge
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    {range :
      FiniteHorizonRangeProjection
        model connectors}
    (hardy :
      Hardy.HardyDefectFamily model Prime) where
  traceNorm : model.Operator → ℝ
  error :
    Finset Prime → Finset Prime → ℝ
  comparison :
    ∀ source horizon,
      source ⊆ horizon →
      traceNorm
          (hardy.defect source -
            range.projection source horizon) ≤
        error source horizon

structure HardySoninOperatorBridge
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    {range :
      FiniteHorizonRangeProjection
        model connectors}
    (hardy :
      Hardy.HardyDefectFamily model Prime) where
  conjugatedProjection :
    Finset Prime → Finset Prime → model.Operator
  operatorNorm : model.Operator → ℝ
  error :
    Finset Prime → Finset Prime → ℝ
  comparison :
    ∀ source horizon,
      source ⊆ horizon →
      operatorNorm
          (hardy.defect source -
            conjugatedProjection source horizon) ≤
        error source horizon

end Mathematics.SemiLocalDefect.Sonin
