# Final source pin clarification

Contribution: grwtsk.

The final DyadicSlidingMean.lean blob is b2065f9a2027db4ccc41fa0fedabf494fd2512fe. It supersedes d0499efa9ede40871e80557a558c74294d1f85b1 named in the initial interface note. The proof of gridContrast_square_le_sliding now names the exact interval-addition identity before rewriting; no statement, hypothesis, arithmetic normalization or declaration roster changed. This was static proof-robustness review, not an observed compiler failure or transferred acceptance.

All other new blobs remain: ShortIntervalSampling c71be9947306597a8a614f59ee8bcfacea332b47; MertensSignedAbelSlidingMean 925039a4a9ed27e54c1f43727da6e7c8d5c5589c; MertensPrimeBandExpansionObstruction e86101aa2d576fc662d9d565db9e48487e71dd31.

The four unchanged dyadic dependency sources remain the #1395 overlay. All new and inherited source remains NOT_RUN / NOT_KERNEL_AUDITED. Main integration is UNASSIGNED. Readback of Git objects, finite diagnostics and proof-text inspection are not Lean or kernel acceptance. The full passive manifest and audit roster in the conversation bundle use the final blob above. Any integration must preserve the current complete main tree; this overlay is not a repository replacement.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aec462330274333b6c8f460225f1376f3e2af1e6f7b78a9310e64fec658c88e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
