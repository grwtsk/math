# Type Graph Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d266ccb58384cef344d1024df1e67a55bb4bdd76` · SHA-256 `b7ec5e7ec7c638e653aff1d415388f9f9d9f563a9ce60b6406fc93b219c4c367`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoremHyperedge.Variantb9954377e8fc569a27a994e502154c341cec821f737e535657fccb4e04e03b63","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b9954377e8fc569a27a994e502154c341cec821f737e535657fccb4e04e03b63","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TheoremHyperedge.Variantb9954377e8fc569a27a994e502154c341cec821f737e535657fccb4e04e03b63","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"b9954377e8fc569a27a994e502154c341cec821f737e535657fccb4e04e03b63","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Memory/TypeGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic
import Noeoueue.Memory.Identity


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoremHyperedge.Variantb9954377e8fc569a27a994e502154c341cec821f737e535657fccb4e04e03b63

namespace Noeoueue.TypeMemory

structure TheoremHyperedge (alpha : Type) where
  theoremId : TheoremId
  statementSupport : Finset alpha
  proofDependencies : Finset alpha
  deriving DecidableEq

/-- `type-memory://noeoueue/type-graph@1`: repeated syntax is one statement incidence. -/
theorem statement_support_idempotent {alpha} [DecidableEq alpha] (s : Finset alpha) :
    s ∪ s = s := by simp

end Noeoueue.TypeMemory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81ce7f843bbbb3101cdb994d12aaaaed1c2afce7c0ab480834e074597b380f3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TypeGraph/Variant2c53f5f6ce2482233696bacd280e43979c89684c15cf403c26a780359e357bbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
