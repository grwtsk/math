# Verification target: Hausdorff Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53256e89e379be77f46fd241327ac4308c66161e",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53256e89e379be77f46fd241327ac4308c66161e`.

Source path: `GRWTSK/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Between` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Holder` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.MetricSeparated` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/ismetric.md) | 143 | `declaration-track:963481d17328f5ca8621f439a40439c14c0cb895e0df91377fd1084d3ed9b4e5` |
| 2 | `theorem` | [finset_iUnion_of_pairwise_separated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/finset-iunion-of-pairwise-separated.md) | 152 | `result-track:1a946a2a115f25d7f936115b3fe0f52a8367f61aa307ccb76d3131aceaeec319` |
| 3 | `theorem` | [borel_le_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/borel-le-caratheodory.md) | 169 | `result-track:82cfcf17e0a8244546b7aae9cff26330fdd5bd90a933453d52965960d9626064` |
| 4 | `theorem` | [le_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/le-caratheodory.md) | 240 | `result-track:8faaca66ddbb03e71c78ae438101e3cfb6761c1718965de6ae4e381e8fbf34a8` |
| 5 | `def` | [mkMetric'.pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-pre.md) | 260 | `declaration-track:8b3636dc005c2522be3e6e18ec0a5d893add0555d99af91b5024b4156dd8a800` |
| 6 | `def` | [mkMetric'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-source-edition-2.md) | 267 | `declaration-track:388bce4568fdb138eba8b3b863c0f93c061899fafcf97c84aa4ac608ca706eb2` |
| 7 | `def` | [mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-source-edition-4.md) | 273 | `declaration-track:e3a00b26129c43553f08f9963dc9020ec99de57d304e0f9ad7086ae79b4603ff` |
| 8 | `theorem` | [le_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/le-pre.md) | 281 | `result-track:bbebd3e6ecc6de97bc5a0eb068a6f3bc418c536777af23957913eab4a2e0e0fa` |
| 9 | `theorem` | [pre_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/pre-le.md) | 285 | `result-track:92a9d20b926de5d082c69abcb3dcc39cc62455fea5d1ac45a97b82d8a8492c4d` |
| 10 | `theorem` | [mono_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mono-pre.md) | 289 | `result-track:59ae7bed6c705a47a0f30c16bc1232c07a49e03bb803baa552e89881b43426e5` |
| 11 | `theorem` | [mono_pre_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mono-pre-nat.md) | 293 | `result-track:8f637877f6874ea71dcfbb987aed4cffade701777cc1839dbfa474cb45812bc7` |
| 12 | `theorem` | [tendsto_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/tendsto-pre.md) | 297 | `result-track:9a80ad7b0166214529db2902b4e3fba0607953fbf83ca95f5800d0b699d08643` |
| 13 | `theorem` | [tendsto_pre_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/tendsto-pre-nat.md) | 304 | `result-track:4f173bbd12f1a959644ab20db892b76a21895beb0c19289cd0fec2976f38e70e` |
| 14 | `theorem` | [eq_iSup_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/eq-isup-nat.md) | 311 | `result-track:887789401989a741428dfe876eff5956f0708a71ecf0547801a71b5c71335880` |
| 15 | `theorem` | [trim_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/trim-pre.md) | 320 | `result-track:af8316dfd44806fd558d99fa9cf336bfb92b13bf85d5a745e3cbfd0fc2a38421` |
| 16 | `theorem` | [mkMetric'_isMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-ismetric.md) | 332 | `result-track:527c42d92d90d78ae50f82759b653d86c9752d4b18829979bfbe043c9d92bf8d` |
| 17 | `theorem` | [mkMetric_mono_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-mono-smul-source-edition-2.md) | 347 | `result-track:86ef194f848797aea4eaf5683787450a3326ba5b5da735ac95d91fe49ece63aa` |
| 18 | `theorem` | [mkMetric_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-top-source-edition-2.md) | 366 | `result-track:41342c3d46de205a234936cbf9ff883877315ab7534e54738f8809d17dc85fe0` |
| 19 | `theorem` | [mkMetric_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-mono-source-edition-2.md) | 375 | `result-track:dd5d00b5eef5cc017b2661f5a84075d87e65a4422b1e1b798010cb8c949c2a1f` |
| 20 | `theorem` | [isometry_comap_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/isometry-comap-mkmetric.md) | 380 | `result-track:2b935495922777b1ec3e6ed12dc13f77ec4af85dd59e984474addcf4860b11e8` |
| 21 | `theorem` | [mkMetric_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-smul.md) | 396 | `result-track:6742ce87c43394d12035165752890199d0bd3653e8a775bca1344cbd96b1d9f3` |
| 22 | `theorem` | [mkMetric_nnreal_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-nnreal-smul.md) | 402 | `result-track:85bb6c854b500954c620ccc4b670e83a46f99b3f10ad8b7216b05608925b6555` |
| 23 | `theorem` | [isometry_map_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/isometry-map-mkmetric.md) | 408 | `result-track:d74b1bac883d241e3d1632da1b78cb2281f26e68eaded64eab2a4e9d63ad044e` |
| 24 | `theorem` | [isometryEquiv_comap_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/isometryequiv-comap-mkmetric.md) | 413 | `result-track:3d5022bc44fdb54232a01c8d0967a0f12254d2a67554adff04c6f4553bb95eed` |
| 25 | `theorem` | [isometryEquiv_map_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/isometryequiv-map-mkmetric.md) | 418 | `result-track:bfdf80d34811c88536a2068b39fc8722d6c74147d60f82f25389630c9b839b27` |
| 26 | `theorem` | [trim_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/trim-mkmetric.md) | 423 | `result-track:0b802f2c631ef85b49abde8f33236c5d310f3754a6e835e69ef0506a9c1bdd30` |
| 27 | `theorem` | [le_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/le-mkmetric-source-edition-2.md) | 431 | `result-track:8805097d65f7af1e4a82015a95bfc31e3ae8595404c950fea6d564105fa67570` |
| 28 | `def` | [mkMetric'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric.md) | 455 | `declaration-track:02a1edc020414bd208c40f3cff927aea961c487582977032d1acacac558c6ee5` |
| 29 | `def` | [mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-source-edition-3.md) | 462 | `declaration-track:6b507c557c539ddfcf67f885df9a1b0020f3b650e1c769f0ccce7b1dfb15f60c` |
| 30 | `theorem` | [mkMetric'_toOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-tooutermeasure.md) | 467 | `result-track:32e8500ad5b8834df7ced4042d812408002f4e9619f5e3923951b5f6ff77631a` |
| 31 | `theorem` | [mkMetric_toOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-tooutermeasure-source-edition-2.md) | 473 | `result-track:401097770528559c82fb9e991a3243421fe381f48504e767b1145cf45420dc38` |
| 32 | `theorem` | [OuterMeasure.coe_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/outermeasure-coe-mkmetric.md) | 480 | `result-track:6598d7239b9ec37fb557bbb50cd99a741f3834fd240867654a80095d81ec8d77` |
| 33 | `theorem` | [mkMetric_mono_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-mono-smul.md) | 491 | `result-track:7bc52d0ae6663ac48b6829a773a86930f61d4dc6ca0e0051b8c6da47f5a1dba2` |
| 34 | `theorem` | [mkMetric_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-top.md) | 499 | `result-track:34c4551932488b5a90f0fe012d8c9875cac979dcea3fe6c4b45337a70d3a44cb` |
| 35 | `theorem` | [mkMetric_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-mono.md) | 506 | `result-track:3f10b981736922f19079e1f5df68f315f5fa1e02e6a1e7e7ef2d5c0db8ea10dd` |
| 36 | `theorem` | [mkMetric_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-apply.md) | 512 | `result-track:d08df78de09ca184a52df328559ddcc0c1340c7094946a69d2d09936b2feda3c` |
| 37 | `theorem` | [le_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/le-mkmetric.md) | 539 | `result-track:28a04056216082ac2f3a9c76d526d5589b3d58abaf3c64281827069ec6795bfa` |
| 38 | `theorem` | [mkMetric_le_liminf_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-le-liminf-tsum.md) | 548 | `result-track:e8d8d7908a3c869ce52edf36901049a4e478961e8bb7e8d0461e31a1e3429bff` |
| 39 | `theorem` | [mkMetric_le_liminf_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/mkmetric-le-liminf-sum.md) | 574 | `result-track:a2b6fc094bd23fc76df32659279da7baf99fce973e22d145aaee1647ba1af384` |
| 40 | `def` | [hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure.md) | 587 | `declaration-track:5ec0f2893b2fa5dcb16dc3d2dc3c3196f8a9f2380c740de2d35056c02c1eacb4` |
| 41 | `theorem` | [le_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/le-hausdorffmeasure.md) | 594 | `result-track:7f9b8f041c275d76a3dba211e0726a4a9c66a87fd6db59673e911dbed2ad9727` |
| 42 | `theorem` | [hausdorffMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-apply.md) | 600 | `result-track:fdbf78c311728b7e867e9b3fdc918489aa58a7b63b0f14d16ebe17f5127be877` |
| 43 | `theorem` | [hausdorffMeasure_le_liminf_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-le-liminf-tsum.md) | 610 | `result-track:dc6a5a43b1640c5d516f8e0fb92fb327963620e923fa1772a836635f683ec15b` |
| 44 | `theorem` | [hausdorffMeasure_le_liminf_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-le-liminf-sum.md) | 619 | `result-track:3cddf857f9681328c2a9fe7d0280bed735e36ad31ae6522e395694862a9758e2` |
| 45 | `theorem` | [hausdorffMeasure_zero_or_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-zero-or-top.md) | 627 | `result-track:c246dae261f2ace3363a25620b54c922267fe87c42e15f68cd7d22873006c7e2` |
| 46 | `theorem` | [hausdorffMeasure_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-mono.md) | 656 | `result-track:e127b282fa785c8e42b710820ac57a6071d857dbdb0cc98e36672c5bfcebb6e4` |
| 47 | `theorem` | [noAtoms_hausdorff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/noatoms-hausdorff.md) | 665 | `result-track:b6676f19345a91f1b69d463685b105c6f0d484c85da67c995690dd0f4577d0c9` |
| 48 | `theorem` | [hausdorffMeasure_zero_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-zero-singleton.md) | 677 | `result-track:05e3bacd51eeb6821d506d7aea2aa17bd7044db485b7d532e516c96a191c63c8` |
| 49 | `theorem` | [one_le_hausdorffMeasure_zero_of_nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/one-le-hausdorffmeasure-zero-of-nonempty.md) | 702 | `result-track:68ce136c601961f3f95d23b3f53c215b3d66a8260b88f0197ef00e8571c5efd0` |
| 50 | `theorem` | [hausdorffMeasure_le_one_of_subsingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-le-one-of-subsingleton.md) | 709 | `result-track:6ed4409d1420cf09667020db4b6dcf4d2c182025ac93323a7fa088465e47ecdd` |
| 51 | `theorem` | [hausdorffMeasure_image_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-image-le-source-edition-2.md) | 741 | `result-track:521658dc5167a4e925c6680ce84b579156d88a296f555636d813f7760e169629` |
| 52 | `theorem` | [hausdorffMeasure_image_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-image-le.md) | 790 | `result-track:08da89d0e0756db20ec19f534147fd8851cbb4f755edd155d92f459e3d678212` |
| 53 | `theorem` | [hausdorffMeasure_image_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-image-le-source-edition-3.md) | 803 | `result-track:dc3bb4061e4cb04b75cdd380f85cc8a7011a3651b5b40fe1a5d88c213cf1b872` |
| 54 | `theorem` | [MeasureTheory.Measure.hausdorffMeasure_smul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/measuretheory-measure-hausdorffmeasure-smul.md) | 812 | `result-track:98ab28ed9e1ba0e56a3d2279bddcc1f47758e53da6bb84e57920d099cb1c479c` |
| 55 | `theorem` | [hausdorffMeasure_preimage_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-preimage-le.md) | 837 | `result-track:d46d275085493d233c11feac8cbce0479495fae18992c221c45ddf7f614ffd84` |
| 56 | `theorem` | [le_hausdorffMeasure_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/le-hausdorffmeasure-image.md) | 869 | `result-track:befc1fd0d3a058934fd39f06af0211bd388da4f41e3e2cd025d6f6a720fc0b90` |
| 57 | `theorem` | [hausdorffMeasure_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-image.md) | 887 | `result-track:96b58bb679782f6aeff8713887952ee8c87a9aa8d8e7b1791834d70de3e505a6` |
| 58 | `theorem` | [hausdorffMeasure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-preimage.md) | 898 | `result-track:053112598a21110141d2827649b8a74435a141f58e1b30f020ffef1fed4af732` |
| 59 | `theorem` | [map_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/map-hausdorffmeasure.md) | 903 | `result-track:8b2f1dffc6f24c088a7e0fb06588c0e48e788a17bfe1679d47a570ecaba515d4` |
| 60 | `theorem` | [hausdorffMeasure_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-image-source-edition-2.md) | 915 | `result-track:bc1f316465e441df30e669f5031ad4dc507ab5e3ae37c20998d40ac7ec702f4c` |
| 61 | `theorem` | [hausdorffMeasure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-preimage-source-edition-2.md) | 920 | `result-track:90afe7d675ac8c6686307fa35086d85ca5bf748fb8c7ee109318bdbce2170506` |
| 62 | `theorem` | [map_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/map-hausdorffmeasure-source-edition-2.md) | 925 | `result-track:c09541ad4cb8973c6cc27fa938d8e93051cfd408e55413145ece4cc055782025` |
| 63 | `theorem` | [measurePreserving_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/measurepreserving-hausdorffmeasure.md) | 929 | `result-track:8676b425272da02dd8b009542a4092b3b2b69743abf1fb62930c2aefb0e01fa2` |
| 64 | `theorem` | [hausdorffMeasure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-smul.md) | 938 | `result-track:86571cc797c58c60423cdc600db0a243ff9e104dac4b834be4fab0216938ad6f` |
| 65 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/instance.md) | 945 | `declaration-track:03d5e8cd379e3087e4edb976a939ad37b90b7735bfa204aca0b777dfb4c4b95a` |
| 66 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 949 | `declaration-track:9a0825542be92eda90484f78ea6acbfba6b121803ec2638523cb22eb7e35d8b9` |
| 67 | `theorem` | [hausdorffMeasure_pi_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-pi-real.md) | 959 | `result-track:7472901dd6bc18a62128684a81b9f903ace693d9c8901fab7c0fff90150694a0` |
| 68 | `theorem` | [hausdorffMeasure_measurePreserving_funUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-measurepreserving-fununique.md) | 1053 | `result-track:d5464e7d78637fc46fafb3bda6248259795da56a3ff70789006e81448bc15873` |
| 69 | `theorem` | [hausdorffMeasure_measurePreserving_piFinTwo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-measurepreserving-pifintwo.md) | 1059 | `result-track:003ab3a5652f1e7195aeb7fbf321598e6d249d3d94f07915784f0d76490bfcaa` |
| 70 | `theorem` | [hausdorffMeasure_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-real.md) | 1068 | `result-track:a1fdcb58207638171ccde32cc6053cec826c3cd3cc801471a2a7fd0af0888eef` |
| 71 | `theorem` | [hausdorffMeasure_prod_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-prod-real.md) | 1076 | `result-track:a49215a039378ac6a51d950fa5fc2df5ab40f622228853a8b6eaac8433980fe6` |
| 72 | `theorem` | [hausdorffMeasure_smul_right_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-smul-right-image.md) | 1088 | `result-track:ce5a2f651159be52af8d294360978629e5b66f823378cd48745ced37d23b888f` |
| 73 | `theorem` | [hausdorffMeasure_homothety_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-homothety-image.md) | 1127 | `result-track:09b91f953181e000b74bd0d4beb5d21022969808e109af9d8e72f708dcfa8d7c` |
| 74 | `theorem` | [hausdorffMeasure_homothety_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-homothety-preimage.md) | 1138 | `result-track:df9a7c4eb9db53d69ed74a6f4fd4c946f1ee96fe832274d27a4e6b154e610a8d` |
| 75 | `theorem` | [hausdorffMeasure_lineMap_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-linemap-image.md) | 1161 | `result-track:72678e32d3bc83a4bb401b8a75759a4e487d3e053fc887cf7cc9c41865ec19e0` |
| 76 | `theorem` | [hausdorffMeasure_affineSegment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-affinesegment.md) | 1172 | `result-track:efa0f9b295ce1aedc1dd393f78b27ca1eddc92f16de574a0e2176f8ed614306b` |
| 77 | `theorem` | [hausdorffMeasure_segment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedAligned.lean/declarations/hausdorffmeasure-segment.md) | 1182 | `result-track:b488276c2402a24d71cfdfe9ba2f7e672d6387997c36ff8b603c78718d8fe4b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e80ba8b701b93ab68ff175f5e10e711bb7acc68b0d43c69d4a98d229acc058e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
