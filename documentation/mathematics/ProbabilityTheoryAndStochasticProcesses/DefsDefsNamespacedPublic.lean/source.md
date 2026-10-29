# Defs Defs Namespaced Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `206ea8ad09a83b4b407c84672ef3ea252afbeb25` · SHA-256 `841baf28155818e5725a2f6f65997afd20b5fb245dece1619d1ba71fcd6ae94b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.BinomialRandomGraph.Variantcef4f2743166aa4c5512852b0f5276f62a0e8fae8813a34a133d4e41ca2e6aa2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cef4f2743166aa4c5512852b0f5276f62a0e8fae8813a34a133d4e41ca2e6aa2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.BinomialRandomGraph.Variantcef4f2743166aa4c5512852b0f5276f62a0e8fae8813a34a133d4e41ca2e6aa2","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"cef4f2743166aa4c5512852b0f5276f62a0e8fae8813a34a133d4e41ca2e6aa2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/Probability/Combinatorics/BinomialRandomGraph/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Probability.Combinatorics.BinomialRandomGraph.Defs


namespace GRWTSK.ProbabilityAndMathematicalStatistics.BinomialRandomGraph.Variantcef4f2743166aa4c5512852b0f5276f62a0e8fae8813a34a133d4e41ca2e6aa2

open MeasureTheory Measure ProbabilityTheory unitInterval

namespace SimpleGraph
variable {V : Type*} {p : I}

-- This should be restated as an equality of distributions now
-- https://github.com/leanprover-community/mathlib4/pull/28248 is in.
proof_wanted binomialRandom_map_ncard_edgeSet_singleton [Finite V] (n : ℕ) :
    G(V, p).map (fun G ↦ G.edgeSet.ncard) {n} = ((Nat.card V).choose 2).choose n * toNNReal p ^ n *
      toNNReal (σ p) ^ ((Nat.card V).choose 2 - n)

end SimpleGraph
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15461c7e9ecf4000e2f4442c43218f3ca127f3afe660f87810aaaa5ae61b1b57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/Defs/Variant45ef26fec1d571e61b180d002f3591ac9d50e3e50e6d9fcdedb31939591f5d7f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
