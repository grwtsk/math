# Verification target: Change Classification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d52077d97095c21c5bc7cced76c01b900f8b3c0",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ChangeClassification/Variantc09f52c281d310fd4905e4f9a09390942eba4951461aff5ddbfd3a0549c01109.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ChangeClassification.lean/index.md) · [Full source](../../../../Combinatorics/ChangeClassification.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d52077d97095c21c5bc7cced76c01b900f8b3c0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ChangeClassification/Variantc09f52c281d310fd4905e4f9a09390942eba4951461aff5ddbfd3a0549c01109.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ChangeClassification/Variantc09f52c281d310fd4905e4f9a09390942eba4951461aff5ddbfd3a0549c01109.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.ClaimDiscipline` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OntologyChange](../../../../Combinatorics/ChangeClassification.lean/declarations/ontologychange.md) | 13 | `declaration-track:46170beb5135618aafa0c4d30d4efd300f47752900a8ee1255e92aaae3042db2` |
| 2 | `inductive` | [SemanticChangeClass](../../../../Combinatorics/ChangeClassification.lean/declarations/semanticchangeclass.md) | 25 | `declaration-track:684c1e5f635b94442704f988cb1c0c38f651445f013800fdfd1389ef16964927` |
| 3 | `inductive` | [UnsatisfiableChangeStatus](../../../../Combinatorics/ChangeClassification.lean/declarations/unsatisfiablechangestatus.md) | 34 | `declaration-track:c9080067d3913eeb11b8d562ccdbdcb404868502a99feb5114e69c9aeb6390a9` |
| 4 | `def` | [ProperSubset](../../../../Combinatorics/ChangeClassification.lean/declarations/propersubset.md) | 44 | `declaration-track:a43dce2d7ad767b2ae94ebc6dd1092a4d1a6ef10388b0f3bd40be933c9f4af6c` |
| 5 | `instance` | [(anonymous)](../../../../Combinatorics/ChangeClassification.lean/declarations/instance.md) | 46 | `declaration-track:10143b2b2b3a4851e1b2fc4ad800310ee383519d9f89161ec2613e23125442f6` |
| 6 | `def` | [classify](../../../../Combinatorics/ChangeClassification.lean/declarations/classify.md) | 51 | `declaration-track:3139b695d9298d187f615a044a26d819135893fd3047c74ceb7198dab570d203` |
| 7 | `def` | [Holds](../../../../Combinatorics/ChangeClassification.lean/declarations/holds.md) | 66 | `declaration-track:066099779bcbd0817f932a14ecb4ae711b5564d8985f15fdb902de8ed6d69ae9` |
| 8 | `theorem` | [classify_sound](../../../../Combinatorics/ChangeClassification.lean/declarations/classify-sound.md) | 81 | `result-track:73262e229c89e3d64691078daa936f4729a547d33829b169f8a10aa7d4e68ac6` |
| 9 | `theorem` | [classify_deterministic](../../../../Combinatorics/ChangeClassification.lean/declarations/classify-deterministic.md) | 112 | `result-track:71ebc300c67536171ff61982e123141776200a0d3682c0ddff3fe650146c8190` |
| 10 | `structure` | [SemanticChangeClassification](../../../../Combinatorics/ChangeClassification.lean/declarations/semanticchangeclassification.md) | 118 | `declaration-track:c0838d7e13dfc6034ab93fc5bdcc841560d3cfc3bfb828e72fd463c9d999e0a4` |
| 11 | `inductive` | [TopologyChangeClass](../../../../Combinatorics/ChangeClassification.lean/declarations/topologychangeclass.md) | 129 | `declaration-track:dd12521070324501d16830db923be1222efa40450f7dfdebea28eaaf9f5ee9f9` |
| 12 | `def` | [classifyExact](../../../../Combinatorics/ChangeClassification.lean/declarations/classifyexact.md) | 144 | `declaration-track:c250794eb73f0939ddff31c24245bf07555f8d798d554f35aa99f396040d4954` |
| 13 | `def` | [classifyWithProfile](../../../../Combinatorics/ChangeClassification.lean/declarations/classifywithprofile.md) | 155 | `declaration-track:eacbcfb56c37d75210946d511221fbb2fcc3e95763d689901981fc821530fef8` |
| 14 | `theorem` | [classifyWithProfile_none](../../../../Combinatorics/ChangeClassification.lean/declarations/classifywithprofile-none.md) | 162 | `result-track:7443c7d689779e9becb2d2b956d038f0d6302e8db883950540b8f40215c21906` |
| 15 | `theorem` | [classifyWithProfile_some](../../../../Combinatorics/ChangeClassification.lean/declarations/classifywithprofile-some.md) | 165 | `result-track:d82c947006f825bb40330c541cadfe167c93c19a5daa72571ef5236142da2368` |
| 16 | `theorem` | [classifyExact_sound](../../../../Combinatorics/ChangeClassification.lean/declarations/classifyexact-sound.md) | 171 | `result-track:1dfae5a3f2fbdf0a7ef8305b5641de505733036e1d5669a74aabc71e34043eb1` |
| 17 | `structure` | [TopologyChangeClassification](../../../../Combinatorics/ChangeClassification.lean/declarations/topologychangeclassification.md) | 190 | `declaration-track:66f9bb1b1c819e9a75ed4ff120c1f977ae58b75ec3441160b25a5b1c1e409468` |
| 18 | `inductive` | [ChangeAxis](../../../../Combinatorics/ChangeClassification.lean/declarations/changeaxis.md) | 205 | `declaration-track:97fcc3542fdb98b0d6b7074981743d170f24a3aa0b1b02cf63d95bc3ee722d34` |
| 19 | `def` | [all](../../../../Combinatorics/ChangeClassification.lean/declarations/all.md) | 231 | `declaration-track:663dd2304b1072914ccd63466fbcf04ad0a3088890f9070bbf649eaa97bfdfa6` |
| 20 | `theorem` | [mem_all](../../../../Combinatorics/ChangeClassification.lean/declarations/mem-all.md) | 238 | `result-track:a78f9d726863ba1ba6c2319b821e855751444f596b24dd40227508b70639aeb5` |
| 21 | `inductive` | [ChangeAxisStatus](../../../../Combinatorics/ChangeClassification.lean/declarations/changeaxisstatus.md) | 243 | `declaration-track:c52667464ebf0c34725f79daccea1104c935813dea4d334a39d6be1d785cc1ce` |
| 22 | `structure` | [OrthogonalChangeClassification](../../../../Combinatorics/ChangeClassification.lean/declarations/orthogonalchangeclassification.md) | 251 | `declaration-track:82b80648adc35b2fe59e18242e50014b3f76bb9752e06a3e60229d4a6f71d2ff` |
| 23 | `def` | [Complete](../../../../Combinatorics/ChangeClassification.lean/declarations/complete.md) | 260 | `declaration-track:494294b0db32eb26beba852714c4260f4f90129440cb81178f18448a439e894c` |
| 24 | `inductive` | [ConcernDispositionKind](../../../../Combinatorics/ChangeClassification.lean/declarations/concerndispositionkind.md) | 267 | `declaration-track:78d42816e2f458be76db8d0fd9fa3f205dcd3cb0dd554e79c555f2ad803377c9` |
| 25 | `structure` | [ConcernDisposition](../../../../Combinatorics/ChangeClassification.lean/declarations/concerndisposition.md) | 278 | `declaration-track:bef708e1d748b7aeafdf973cfc23807b722653f0d0b53c52c501cd2b8a90e310` |
| 26 | `structure` | [ConcernImpact](../../../../Combinatorics/ChangeClassification.lean/declarations/concernimpact.md) | 284 | `declaration-track:d21f8e84a36664bed0b4f8925ca54c6e78db0302d116b3a35551d809028847f6` |
| 27 | `structure` | [DependencyImpact](../../../../Combinatorics/ChangeClassification.lean/declarations/dependencyimpact.md) | 290 | `declaration-track:5ef4e4e7bb8d397ffe7be7742e8bca64d60f3e669f13f5ef4ce2f1e78150e309` |
| 28 | `theorem` | [missing_common_profile_is_indeterminate](../../../../Combinatorics/ChangeClassification.lean/declarations/missing-common-profile-is-indeterminate.md) | 303 | `result-track:c9fe6079576bf0d1cba1a89e670b63674483aa774c58321a83eefd19fa44d539` |
| 29 | `theorem` | [missing_common_profile_not_unchanged](../../../../Combinatorics/ChangeClassification.lean/declarations/missing-common-profile-not-unchanged.md) | 314 | `result-track:571fb48740919879d45946f130c809fc4d10f13194bdbbcba68fe6894397a9df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c95214ce36afde6389e77d46735a56e44f3aad639e344229cff5918126f6d360 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ChangeClassification/Variantc09f52c281d310fd4905e4f9a09390942eba4951461aff5ddbfd3a0549c01109.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ChangeClassification/Variantc09f52c281d310fd4905e4f9a09390942eba4951461aff5ddbfd3a0549c01109.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
