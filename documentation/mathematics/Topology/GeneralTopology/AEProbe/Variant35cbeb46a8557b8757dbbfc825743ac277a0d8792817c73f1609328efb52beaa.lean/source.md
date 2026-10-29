# Complete source: GRWTSK.Topology.GeneralTopology.AEProbe.Variant35cbeb46a8557b8757dbbfc825743ac277a0d8792817c73f1609328efb52beaa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de440b03fe1dd65fa0a583a7cfeeeab28a921ceb` · SHA-256 `aebfa268f9d0227da24ab4d980736326dbcbedbe431623fad08aadf51b394548`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.FixedLaplaceContinuation.Variant5cda5a4b67e97c4057451b96c01e0072d4ec66c8cafd4ac6259916dcbcc15e4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5cda5a4b67e97c4057451b96c01e0072d4ec66c8cafd4ac6259916dcbcc15e4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.FixedLaplaceContinuation.Variant5cda5a4b67e97c4057451b96c01e0072d4ec66c8cafd4ac6259916dcbcc15e4a","mathematical_subject":"Topology.GeneralTopology","original_sha256":"5cda5a4b67e97c4057451b96c01e0072d4ec66c8cafd4ac6259916dcbcc15e4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/AEProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceContinuation
import Mathlib.Topology.DiscreteSubset
import Mathlib.MeasureTheory.Measure.Typeclasses.NullSingletonClass

namespace GRWTSK.Topology.GeneralTopology.FixedLaplaceContinuation.Variant5cda5a4b67e97c4057451b96c01e0072d4ec66c8cafd4ac6259916dcbcc15e4a

open Set Filter MeasureTheory
#check IsDiscrete.countable
#check Set.Countable.preimage
#check Set.Countable.ae_notMem
#check AnalyticOnNhd.eqOn_zero_or_eventually_ne_zero_of_preconnected
#check Differentiable.analyticAt
#check Differentiable.analyticOnNhd
#check Filter.mem_codiscrete'
#check mem_codiscrete'
#check isDiscrete_of_codiscreteWithin
#check Complex.ofReal_injective
#check mul_left_injective₀
#check mul_right_injective₀
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=829e59645910d416e523e88d50165d9858e50a03ff5378166777b7828735c9b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/AEProbe/Variant35cbeb46a8557b8757dbbfc825743ac277a0d8792817c73f1609328efb52beaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
