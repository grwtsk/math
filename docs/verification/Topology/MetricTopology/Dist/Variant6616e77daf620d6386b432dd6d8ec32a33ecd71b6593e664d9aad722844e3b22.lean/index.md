# Verification target: GRWTSK.Topology.MetricTopology.Dist.Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eafe7afbd05fe11137cdda676715c7c644f9eb0f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eafe7afbd05fe11137cdda676715c7c644f9eb0f`.

Source path: `GRWTSK/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Canonical` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dist](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist--24d514efd148a09bb72de555.md) | 19 | `declaration-track:24d514efd148a09bb72de555b7268793fa232f5e44ea489934335e2ddd9fc1fd` |
| 2 | `theorem` | [dist_comm](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-comm--d29e9fa869d90fa40e1e3da7.md) | 22 | `result-track:d29e9fa869d90fa40e1e3da79f11a3a17e73f094150758c704afa998a2c30fc5` |
| 3 | `theorem` | [dist_self](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-self--6d05fc41c420f93cb44bd4f4.md) | 25 | `result-track:6d05fc41c420f93cb44bd4f40cf09cc8771da2cca3a731025626098a09a642a6` |
| 4 | `theorem` | [eq_of_dist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/eq-of-dist-eq-zero--4911d0aacacbec8b836800ef.md) | 27 | `result-track:4911d0aacacbec8b836800efb1cb5c1436ffe81f44bee15cbd7234d28905763b` |
| 5 | `theorem` | [dist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-eq-zero--da86654565030dd286e91c0c.md) | 34 | `result-track:da86654565030dd286e91c0c4627f1afe2c74ae9b90493c9739f0cb1e1a82172` |
| 6 | `theorem` | [dist_eq_sub_of_le](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-eq-sub-of-le--36eccb6656e399ca7e41dc79.md) | 36 | `result-track:36eccb6656e399ca7e41dc79804bfb4c9f07c4ed13e4202f39d55a372053f82c` |
| 7 | `theorem` | [dist_eq_sub_of_le_right](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-eq-sub-of-le-right--d77fb42ab723f82f9fbb5ccf.md) | 39 | `result-track:d77fb42ab723f82f9fbb5ccf5af6a16ec2348182279f12a2efc70e0ee550703c` |
| 8 | `theorem` | [dist_tri_left](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-tri-left--2dcf5ace63aecd33e59e0df6.md) | 42 | `result-track:2dcf5ace63aecd33e59e0df60dc4d5cdcb008e18f6f7f08122cb4e04a1819f61` |
| 9 | `theorem` | [dist_tri_right](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-tri-right--374c2a9641f10374c0772e56.md) | 45 | `result-track:374c2a9641f10374c0772e56e520290f2a5bffe5cb00a94fc4432fdabf62fd48` |
| 10 | `theorem` | [dist_tri_left'](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-tri-left--7e2be4a937ee980ccf57cfc3.md) | 47 | `result-track:7e2be4a937ee980ccf57cfc362d2d7ceb1568851ae88178305b03c5e682a5622` |
| 11 | `theorem` | [dist_tri_right'](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-tri-right--eaef35701e25937d6dca4ea4.md) | 49 | `result-track:eaef35701e25937d6dca4ea4586deed975e2a27036b96b5578f474a9430313d7` |
| 12 | `theorem` | [dist_zero_right](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-zero-right--89da6f5b0128ed5a4e2c456c.md) | 51 | `result-track:89da6f5b0128ed5a4e2c456cc705db2b3c284362ecf9d21c1b24573fe51868f2` |
| 13 | `theorem` | [dist_zero_left](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-zero-left--0e5e88101d7c44dff56c9f50.md) | 54 | `result-track:0e5e88101d7c44dff56c9f50d595e95825e72b56185aa5c4ab72db8d9adfb3aa` |
| 14 | `theorem` | [dist_add_add_right](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-add-add-right--36a4022df8f0f0df6c848ee1.md) | 57 | `result-track:36a4022df8f0f0df6c848ee1070a6ea261e2cb7e03d96d39fd0aa0a73ad53725` |
| 15 | `theorem` | [dist_add_add_left](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-add-add-left--0e5c65f083bc29681a1f2769.md) | 63 | `result-track:0e5c65f083bc29681a1f2769e855ae233d8e26159dc21bcffa8c45970f2a008d` |
| 16 | `theorem` | [dist_eq_intro](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-eq-intro--56f62b9fbec4951d0d2e5746.md) | 66 | `result-track:56f62b9fbec4951d0d2e574623f59b1363524f8f1a6b99f92a97304d0edc86e3` |
| 17 | `theorem` | [dist.triangle_inequality](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-triangle-inequality--d153a79ef80b9b5b2cbc0082.md) | 72 | `result-track:d153a79ef80b9b5b2cbc00829ad3ab3e96deea8a6fd82591f3b57c242f6436a4` |
| 18 | `theorem` | [dist_mul_right](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-mul-right--73d1e6f8cccb2520aa4f0240.md) | 78 | `result-track:73d1e6f8cccb2520aa4f02406bd5d437c22b20c38c7399fcaa9b05a8615b31ca` |
| 19 | `theorem` | [dist_mul_left](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-mul-left--9cac60831d9e3533f611d819.md) | 81 | `result-track:9cac60831d9e3533f611d81917a2f696312b6157da299931f9819891ca6c1bb2` |
| 20 | `theorem` | [dist_eq_max_sub_min](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-eq-max-sub-min--edb6d2adbef876627119e406.md) | 84 | `result-track:edb6d2adbef876627119e406ac1e3cef4b71c3a9736589f253f1218336a91eac` |
| 21 | `theorem` | [dist_succ_succ](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-succ-succ--37e1629af7f9684c7649e36f.md) | 89 | `result-track:37e1629af7f9684c7649e36fb2da1ab5a128f5f195ba6775a9a5ee9795a6c49b` |
| 22 | `theorem` | [dist_pos_of_ne](../../../../../mathematics/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/declarations/dist-pos-of-ne--e08963bbe360b9336618b9e0.md) | 92 | `result-track:e08963bbe360b9336618b9e0978e44a1e7ce4086448ab4fbc957ea4b90ac2cb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
