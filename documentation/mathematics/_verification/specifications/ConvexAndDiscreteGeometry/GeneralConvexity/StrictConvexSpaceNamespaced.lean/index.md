# Verification target: Strict Convex Space Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f8f3d8bfe4e99d02fb98a93213938e7c09f02c9",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantba98940223786b9a8daef941a0a345f8ac93738adaba2060c634abc748cc9961.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f8f3d8bfe4e99d02fb98a93213938e7c09f02c9`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantba98940223786b9a8daef941a0a345f8ac93738adaba2060c634abc748cc9961.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantba98940223786b9a8daef941a0a345f8ac93738adaba2060c634abc748cc9961.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Convex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Ray` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StrictConvexSpace](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/strictconvexspace.md) | 71 | `declaration-track:90950d8bbc6f0cf4baf21b8a365a6035e50c6de9737611f442a80088db594828` |
| 2 | `theorem` | [strictConvex_closedBall](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/strictconvex-closedball.md) | 79 | `result-track:afe8895369222ad42e066e416effb47163d914ed56c8938de445a2ac6ea6f160` |
| 3 | `theorem` | [StrictConvexSpace.of_strictConvex_unitClosedBall](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/strictconvexspace-of-strictconvex-unitclosedball.md) | 89 | `result-track:925d3e8d356d8f9d31aa650b928e909409c27889cb737d714419654d48631cdb` |
| 4 | `theorem` | [StrictConvexSpace.of_norm_combo_lt_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/strictconvexspace-of-norm-combo-lt-one.md) | 100 | `result-track:54fb395ec845d9ce4ca9e510985522dec05568ee6f0a48020eeebd987b293554` |
| 5 | `theorem` | [StrictConvexSpace.of_norm_combo_ne_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/strictconvexspace-of-norm-combo-ne-one.md) | 113 | `result-track:e6bf142e45f9ed75e908ea19aaa50252614ae70c6273ded56d5cbd8937015d50` |
| 6 | `theorem` | [StrictConvexSpace.of_norm_add_ne_two](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/strictconvexspace-of-norm-add-ne-two.md) | 126 | `result-track:88b1854f55cc7d09161bfd429135b018bb9c07d01e689e5001b63227c5cbdbc5` |
| 7 | `theorem` | [StrictConvexSpace.of_pairwise_sphere_norm_ne_two](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/strictconvexspace-of-pairwise-sphere-norm-ne-two.md) | 135 | `result-track:93c7a2b12dd46f4292581b49d835ee54ceab24d9f3080e2c5d23b0f78cc45b55` |
| 8 | `theorem` | [StrictConvexSpace.of_norm_add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/strictconvexspace-of-norm-add.md) | 142 | `result-track:d30847e6418f3c3ca9d0301ff23445b4c1259c949fc62d23649a52d8cf6b3d94` |
| 9 | `theorem` | [combo_mem_ball_of_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/combo-mem-ball-of-ne.md) | 152 | `result-track:51ef8b3ded2b7f103e4a1fd326defdb4250ab20a3578223c52d5ff8b4cd11ad5` |
| 10 | `theorem` | [openSegment_subset_ball_of_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/opensegment-subset-ball-of-ne.md) | 162 | `result-track:1e502affd6d00b4c93bc3f2644a07da75ac4347c48c1f2f0a517adade03e7ed3` |
| 11 | `theorem` | [norm_combo_lt_of_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/norm-combo-lt-of-ne.md) | 168 | `result-track:f9ca83d74e357d745c2670090c928a9f50655e8d7f897321b60a3e23a85e5028` |
| 12 | `theorem` | [norm_add_lt_of_not_sameRay](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/norm-add-lt-of-not-sameray.md) | 175 | `result-track:1aa170c98eab86ef16bfc089724f7f101a7b672aad492ff2eac19a4f3cb1c59b` |
| 13 | `theorem` | [lt_norm_sub_of_not_sameRay](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/lt-norm-sub-of-not-sameray.md) | 188 | `result-track:4023d5470f49114f6be897896b09c5e2cdf4a1c733c9198e7f0d7b15e294fe88` |
| 14 | `theorem` | [abs_lt_norm_sub_of_not_sameRay](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/abs-lt-norm-sub-of-not-sameray.md) | 192 | `result-track:5bea906bada423d2d941e70034aec975606fa5254a0a1f4c19f90bce1cad460e` |
| 15 | `theorem` | [sameRay_iff_norm_add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/sameray-iff-norm-add.md) | 199 | `result-track:b8191f15dda2353a2fcdaeb7652dacd487f9b4fbb377ce10d348330b718d887d` |
| 16 | `theorem` | [eq_of_norm_eq_of_norm_add_eq](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/eq-of-norm-eq-of-norm-add-eq.md) | 204 | `result-track:889e5ae4551fe68f7f46d628f86e802824eb07c1af52663e5fa204d9523b19f4` |
| 17 | `theorem` | [not_sameRay_iff_norm_add_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/not-sameray-iff-norm-add-lt.md) | 209 | `result-track:2c873eece0ff799ca27728359f7cbebd139df372e80d6ad31fac029c5d1dc329` |
| 18 | `theorem` | [sameRay_iff_norm_sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/sameray-iff-norm-sub.md) | 212 | `result-track:57ea7edcecdd9c91c0bc9d19f0088ac2577e28b9b6cbbd3726abe8b6e3429ead` |
| 19 | `theorem` | [not_sameRay_iff_abs_lt_norm_sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/not-sameray-iff-abs-lt-norm-sub.md) | 216 | `result-track:00a4217f5eea1353d75edc449a47dc846fc77a142ee64d1dd44d681d5bafab04` |
| 20 | `theorem` | [norm_midpoint_lt_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespaced.lean/declarations/norm-midpoint-lt-iff.md) | 219 | `result-track:60b38d6350c10357e0d043090fa24faa1f887878cc950aba0ca489064f870247` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d23ebf3c3d59a9a2158a659bbbb023f95c1d2e1bf872b3e005be9ca01b09e026 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantba98940223786b9a8daef941a0a345f8ac93738adaba2060c634abc748cc9961.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantba98940223786b9a8daef941a0a345f8ac93738adaba2060c634abc748cc9961.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
