# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Exact.Variant95cd20667e96d29c121c981556efb764c768ffc4df1475b8d7cf8ac187242704

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46b1bf6035f932973569965742693e7104eb89ca` · SHA-256 `300198599bf9eaefa123ad704a8aaefe70b8b1574c84c1822bbbf8ebafb8adfe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Exact.Variantc66c94b588102380d367a08a3ea21568dc4bca0d3e70f50f42a114ac5a07081f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c66c94b588102380d367a08a3ea21568dc4bca0d3e70f50f42a114ac5a07081f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Exact.Variantc66c94b588102380d367a08a3ea21568dc4bca0d3e70f50f42a114ac5a07081f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c66c94b588102380d367a08a3ea21568dc4bca0d3e70f50f42a114ac5a07081f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/GammaBridge/Exact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Progression.All
import Mathlib.Data.Real.Basic

/-! # Exact endpoint-preserving Gamma bridges -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.Exact.Variantc66c94b588102380d367a08a3ea21568dc4bca0d3e70f50f42a114ac5a07081f

namespace Mathematics.GammaBridge

universe u

/-- An exact bridge carries its endpoints as fixed predicates. -/
structure Exact (State : Type u) where
  id : GammaBridgeId
  path : ℝ → State
  left : State
  right : State
  left_endpoint : path 0 = left
  right_endpoint : path 1 = right

end Mathematics.GammaBridge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a22d0139fa7c033edf8b115869d12d35880ee5d06b7b80eec6a5066f726147e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Exact/Variant95cd20667e96d29c121c981556efb764c768ffc4df1475b8d7cf8ac187242704.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
