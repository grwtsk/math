-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Uniformity.Variant3877a962bef820da2c5e7f7aba71ef4866c59a2d50c1cdec63e058c28a20aaed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3877a962bef820da2c5e7f7aba71ef4866c59a2d50c1cdec63e058c28a20aaed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Uniformity.Variant3877a962bef820da2c5e7f7aba71ef4866c59a2d50c1cdec63e058c28a20aaed","mathematical_subject":"Topology.GeneralTopology","original_sha256":"3877a962bef820da2c5e7f7aba71ef4866c59a2d50c1cdec63e058c28a20aaed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Metrizable/ContinuousMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.Metrizable.Uniformity
import Mathlib.Topology.UniformSpace.CompactConvergence

/-!
# Metrizability of `C(X, Y)`

If `X` is a weakly locally compact σ-compact space and `Y` is a (pseudo)metrizable space,
then `C(X, Y)` is a (pseudo)metrizable space.
-/


namespace GRWTSK.Topology.GeneralTopology.Uniformity.Variant3877a962bef820da2c5e7f7aba71ef4866c59a2d50c1cdec63e058c28a20aaed

open TopologicalSpace

namespace ContinuousMap

variable {X Y : Type*}
  [TopologicalSpace X] [WeaklyLocallyCompactSpace X] [SigmaCompactSpace X]
  [TopologicalSpace Y]

instance [PseudoMetrizableSpace Y] : PseudoMetrizableSpace C(X, Y) :=
  let _ := pseudoMetrizableSpacePseudoMetric Y
  inferInstance

instance [MetrizableSpace Y] : MetrizableSpace C(X, Y) :=
  let _ := metrizableSpaceMetric Y
  UniformSpace.metrizableSpace

end ContinuousMap
