-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClientChart.Variant2d4a5f4aebd540abd2ac7fa5efc05e3d31ddcfbda416a279d83ee2e58ad96928","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d4a5f4aebd540abd2ac7fa5efc05e3d31ddcfbda416a279d83ee2e58ad96928","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ClientChart.Variant2d4a5f4aebd540abd2ac7fa5efc05e3d31ddcfbda416a279d83ee2e58ad96928","mathematical_subject":"Foundations.Unclassified","original_sha256":"2d4a5f4aebd540abd2ac7fa5efc05e3d31ddcfbda416a279d83ee2e58ad96928","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Capability/ClientChart.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Authority.Evidence
import Mathematics.Capability.Scope

/-!
# Client charts are projections

A client chart may display a bounded view of capability state.  It carries no
grant, lease, monitor decision, or theorem witness.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClientChart.Variant2d4a5f4aebd540abd2ac7fa5efc05e3d31ddcfbda416a279d83ee2e58ad96928

namespace Mathematics.Capability

structure ClientChart where
  chartId : ChartId
  device : DeviceId
  snapshot : ObjectAddress
  visibleElements : Set ElementId

structure CapabilityChartProjection where
  chart : ClientChart
  capability : OperationalCapability
  visible_within_scope :
    chart.visibleElements ⊆ capability.elements
  device_bound :
    chart.device = capability.device
  snapshot_bound :
    chart.snapshot = capability.snapshot

def ClientChart.evidenceKind
    (_ : ClientChart) :
    Authority.EvidenceKind :=
  .runtimeObservation

@[simp] theorem client_chart_has_no_theorem_authority
    (chart : ClientChart) :
    Authority.contributesTheoremAuthority chart.evidenceKind = false :=
  rfl

end Mathematics.Capability
