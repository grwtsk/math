# Metrizable Continuous Map Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2f9f0a11dbc786263bb14790e755dd11d004f1c` · SHA-256 `1e6c232a3d470113fcac9612bb38d7e4ae8b170ab255eadb74d11fd7acaabb64`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4911ec605ecf066efc0b09b1e5ba59849cc689d02c81cff05d2bd7431bdee3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousMap/Varianta5a5f451dd23847d859617024191f75d87bdcb9509afd5ba8fdb61652fb850c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
