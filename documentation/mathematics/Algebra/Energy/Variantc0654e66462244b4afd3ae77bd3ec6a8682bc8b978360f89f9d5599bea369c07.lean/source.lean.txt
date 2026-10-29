-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CompiledEnergy.Variant50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CompiledEnergy.Variant50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Trajectory/Energy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Trajectory.Residual
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

/-! # Finite compilation of channel energies -/


namespace GRWTSK.Algebra.CompiledEnergy.Variant50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537

namespace Mathematics.Trajectory

open scoped BigOperators

def compiledEnergy
    (samples : Fin sampleCount → Residual)
    (channel : Residual → ℝ) : ℝ :=
  ∑ sample, channel (samples sample)

def compiledTotalEnergy
    (samples : Fin sampleCount → Residual) : ℝ :=
  ∑ sample, (samples sample).total

theorem compiled_energy_channel_decomposition
    (samples : Fin sampleCount → Residual) :
    compiledTotalEnergy samples =
      compiledEnergy samples Residual.localResidual +
      compiledEnergy samples Residual.coverageResidual +
      compiledEnergy samples Residual.sparseSynthesisResidual +
      compiledEnergy samples Residual.basisSpanResidual +
      compiledEnergy samples Residual.eventCycleResidual +
      compiledEnergy samples Residual.twistedCohomologyResidual := by
  simp [compiledTotalEnergy, compiledEnergy, Residual.total,
    Finset.sum_add_distrib]

end Mathematics.Trajectory
