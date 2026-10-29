# Audit Edition17 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57556909430c6a717eaae8dbc7391d6aba9c0e83` · SHA-256 `30b9c764d28635c866ebf882bdfa5b9c8d31536bdd7447da81e9e3aa86e84b70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction

set_option pp.universes true
set_option pp.all false

#check FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.coverage_count_eq
#print axioms FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.coverage_count_eq
#check FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.covered_blocks_nodup_disjoint
#print axioms FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.covered_blocks_nodup_disjoint
#check FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.flatten_work_sum
#print axioms FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.flatten_work_sum
#check FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.source_eq_block_sum
#print axioms FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.source_eq_block_sum
#check FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.source_fold_eq_block_fold
#print axioms FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.source_fold_eq_block_fold
#check FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.abs_list_sum_le
#print axioms FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.abs_list_sum_le
#check FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.abs_source_le_joint_blocks
#print axioms FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.abs_source_le_joint_blocks
#check FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.joint_cancellation_budget
#print axioms FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.joint_cancellation_budget
#check FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.cancel_pair_coverage
#print axioms FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.cancel_pair_coverage
#check FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.cancel_pair_joint_budget
#print axioms FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.cancel_pair_joint_budget
#check FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.cancel_pair_atomwise_budget
#print axioms FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction.cancel_pair_atomwise_budget
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00c42105a6a8fedf0ca2862299d8e0f0666cff22acb6faa08b25c937b1fdd854 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant30b9c764d28635c866ebf882bdfa5b9c8d31536bdd7447da81e9e3aa86e84b70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
