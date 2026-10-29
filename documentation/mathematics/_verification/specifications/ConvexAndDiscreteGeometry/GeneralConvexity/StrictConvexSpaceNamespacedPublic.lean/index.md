# Verification target: Strict Convex Space Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f10bb04ab2850d61b4993ec37d2338509984fe7d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant4d5dc8469d06a9a9a045102c4b3d62bb0fcf6ef311804d469b010f95d0edacf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f10bb04ab2850d61b4993ec37d2338509984fe7d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant4d5dc8469d06a9a9a045102c4b3d62bb0fcf6ef311804d469b010f95d0edacf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant4d5dc8469d06a9a9a045102c4b3d62bb0fcf6ef311804d469b010f95d0edacf7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StrictConvexSpace](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/strictconvexspace.md) | 75 | `declaration-track:1ca8719e2929561e3f8d3373935a1238a2aaf4507a85ea08723e1ae2ccaf4e7d` |
| 2 | `theorem` | [strictConvex_closedBall](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/strictconvex-closedball.md) | 83 | `result-track:5fade679b8b674d30e4bc966e5b66af2e4ce951dd45c635616a08a1caec725c0` |
| 3 | `theorem` | [StrictConvexSpace.of_strictConvex_unitClosedBall](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/strictconvexspace-of-strictconvex-unitclosedball.md) | 93 | `result-track:c6a4636f49568038b97a5f70b890a7e4b3ad2bfa5703e2bfc0d48df7b17f729f` |
| 4 | `theorem` | [StrictConvexSpace.of_norm_combo_lt_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/strictconvexspace-of-norm-combo-lt-one.md) | 100 | `result-track:1d5fd9e05ffc687b7fb636a0b2dc87155664cf9fd58d69b6b964f64aa9c4b94c` |
| 5 | `theorem` | [StrictConvexSpace.of_norm_combo_ne_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/strictconvexspace-of-norm-combo-ne-one.md) | 113 | `result-track:a32cf0056216a8a8006f5b37d113bd2b7bee7306f3bc1a5d85878a451db0bab4` |
| 6 | `theorem` | [StrictConvexSpace.of_norm_add_ne_two](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/strictconvexspace-of-norm-add-ne-two.md) | 126 | `result-track:3985ca9e438c8cfa7deddb385ead4dd4f67940883c3e98cd2329ad2b985a0bd3` |
| 7 | `theorem` | [StrictConvexSpace.of_pairwise_sphere_norm_ne_two](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/strictconvexspace-of-pairwise-sphere-norm-ne-two.md) | 135 | `result-track:3b200240849230a1d4eba12b793f40e7e7e54893d9597e39c00c87603051c669` |
| 8 | `theorem` | [StrictConvexSpace.of_norm_add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/strictconvexspace-of-norm-add.md) | 142 | `result-track:996dfa6bee2087472bd34751b35e0092b59905d6dbfebe80543d310ca0498b76` |
| 9 | `theorem` | [combo_mem_ball_of_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/combo-mem-ball-of-ne.md) | 152 | `result-track:df0e6ea13504c09b291df744172410de961b3f1b789fefb04fa57735fb3f819d` |
| 10 | `theorem` | [openSegment_subset_ball_of_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/opensegment-subset-ball-of-ne.md) | 162 | `result-track:15bf6b416b200ee85a1ee873323ca8fdc93d96bf428ed9931e5c830dc10c4cfe` |
| 11 | `theorem` | [norm_combo_lt_of_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/norm-combo-lt-of-ne.md) | 168 | `result-track:798965b4c053227c392c7fc9ac9f1c0a5d23af20d6ca4cb7853be6acf0469355` |
| 12 | `theorem` | [norm_add_lt_of_not_sameRay](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/norm-add-lt-of-not-sameray.md) | 175 | `result-track:69293bc47d394b0914b09720d4432a1d0c1f77228abc7d77b38aae03838f714c` |
| 13 | `theorem` | [lt_norm_sub_of_not_sameRay](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/lt-norm-sub-of-not-sameray.md) | 188 | `result-track:f86f6f7bff6073827878e0f26e7500dd2ac50375916d929c8383548d56667d05` |
| 14 | `theorem` | [abs_lt_norm_sub_of_not_sameRay](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/abs-lt-norm-sub-of-not-sameray.md) | 192 | `result-track:f190eb10fb57921536ca83100b70b54c0b72e5b2a39c0014dbce6971ee6afef8` |
| 15 | `theorem` | [sameRay_iff_norm_add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/sameray-iff-norm-add.md) | 199 | `result-track:7137888af07ad33b90364cf0fe63eda4400441cf2a211581977de3c0b4ffbb56` |
| 16 | `theorem` | [eq_of_norm_eq_of_norm_add_eq](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/eq-of-norm-eq-of-norm-add-eq.md) | 204 | `result-track:415227f052fea553f762bc723cedc26efa35b22eddbb53c45855afa12e6c0aae` |
| 17 | `theorem` | [not_sameRay_iff_norm_add_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/not-sameray-iff-norm-add-lt.md) | 209 | `result-track:997739f10ae4cf8a3a4b4cc185d422ffedef2386568846ef86b5ff55744474e0` |
| 18 | `theorem` | [sameRay_iff_norm_sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/sameray-iff-norm-sub.md) | 212 | `result-track:cf1a5a9a98e9a515545b337fbc7b877a11073ab9b2cfd48828bc907890334fbe` |
| 19 | `theorem` | [not_sameRay_iff_abs_lt_norm_sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/not-sameray-iff-abs-lt-norm-sub.md) | 216 | `result-track:09a70cd30bc670c395edbba0738d6cba031368027cd3e7219b94aa2e17cbe56d` |
| 20 | `theorem` | [norm_midpoint_lt_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/norm-midpoint-lt-iff.md) | 219 | `result-track:cc9441e778546cfbf72d07172942f38d31ce8e8908c5bd4f05669b2cf60247f9` |
| 21 | `instance` | [Real.instStrictConvexSpace](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexSpaceNamespacedPublic.lean/declarations/real-inststrictconvexspace.md) | 224 | `declaration-track:ef04255abc34ac4e09f97bbf29cea0affbd4ff2dd4f6a20f6c770dec276b7174` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c79f367c0719cfae64ca31badb38e52de097397a0c01d94d3d8ccd1379d6aab1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant4d5dc8469d06a9a9a045102c4b3d62bb0fcf6ef311804d469b010f95d0edacf7.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant4d5dc8469d06a9a9a045102c4b3d62bb0fcf6ef311804d469b010f95d0edacf7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
