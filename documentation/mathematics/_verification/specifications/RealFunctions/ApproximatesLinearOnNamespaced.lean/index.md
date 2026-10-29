# Verification target: Approximates Linear On Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f9108236e492e899250f2898a39cd4ed56c6690",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantf6d05b10806dd1d3a7130c564a80b3546d468b9ff5e983e34aceb394dd5418ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f9108236e492e899250f2898a39cd4ed56c6690`.

Source path: `GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantf6d05b10806dd1d3a7130c564a80b3546d468b9ff5e983e34aceb394dd5418ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ApproximatesLinearOn/Variantf6d05b10806dd1d3a7130c564a80b3546d468b9ff5e983e34aceb394dd5418ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Operator.Banach` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.PartialHomeomorph` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ApproximatesLinearOn](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/approximateslinearon.md) | 75 | `declaration-track:1283d952b735eb256702b3184bd2ad5153b60c797a9489d2887fdf8b6123cac8` |
| 2 | `theorem` | [approximatesLinearOn_empty](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/approximateslinearon-empty.md) | 79 | `result-track:394a08bd0f9e840e5d8a79d6f861be3ceacf49cdf9f37727d3041c57dce72ea1` |
| 3 | `theorem` | [mono_num](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/mono-num.md) | 94 | `result-track:9ec386f1c60b37d8fbf351f27236c9ecf3070ace586cfd54c38b381350b647df` |
| 4 | `theorem` | [mono_set](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/mono-set.md) | 98 | `result-track:30a3183d7706c7bca5d7e6c5491bcdb437d9d96b3a1455051146b6d2e507ea83` |
| 5 | `theorem` | [approximatesLinearOn_iff_lipschitzOnWith](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/approximateslinearon-iff-lipschitzonwith.md) | 101 | `result-track:221adf51baba7f81d741cabd551b2a68e8be94249a8511af056c4a935f468021` |
| 6 | `theorem` | [lipschitz_sub](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/lipschitz-sub.md) | 110 | `result-track:2617484814529bbfc69c5608f67982480294f8a33122deda044632c747a3c696` |
| 7 | `theorem` | [lipschitz](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/lipschitz.md) | 114 | `result-track:4d28d6e5271a9a91112983ddda65c104231f475db11362607b8c797d9ce8be24` |
| 8 | `theorem` | [continuous](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/continuous.md) | 119 | `result-track:d262c834f5a82920cee1f4c69b1661cf548295baa2577eeac1b3aa58f39bef67` |
| 9 | `theorem` | [continuousOn](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/continuouson.md) | 122 | `result-track:7ce0c556d0c72312ec4710a506e8374ca47191d03d9eddd546b858472dcb668c` |
| 10 | `theorem` | [surjOn_closedBall_of_nonlinearRightInverse](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/surjon-closedball-of-nonlinearrightinverse.md) | 141 | `result-track:91d2293f04c281f215af0d52c5177e560e7871af962d2feb889a9e9fd5528e97` |
| 11 | `theorem` | [open_image](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/open-image.md) | 276 | `result-track:839a4764c7b8efee540cb74caefbc2463e2b06902095a5c9a640da71d5168be3` |
| 12 | `theorem` | [image_mem_nhds](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/image-mem-nhds.md) | 286 | `result-track:a1cf249cf2cb681fb7cd63486f20b48b2b189aa3d3aec3ab417a49910b8aff90` |
| 13 | `theorem` | [map_nhds_eq](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/map-nhds-eq.md) | 292 | `result-track:d5920c8c5c87f8e007abf9254e1ad4e33a2333725d555da6be8c5eddcce00fd5` |
| 14 | `theorem` | [antilipschitz](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/antilipschitz.md) | 313 | `result-track:5bfb27cdfb3c26290167c2fe224fdaa266f2a76625559e5e6c944fa0257d0de4` |
| 15 | `theorem` | [injective](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/injective.md) | 320 | `result-track:6c476c12c35bfe02713a7cb7f1ce9b6b10bbb2c48d1dab63c00729113df9bf7e` |
| 16 | `theorem` | [injOn](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/injon.md) | 324 | `result-track:e5e8907d6a9cebd2a6db309a2f4ee3848102389c973ea8c468f5045da280f769` |
| 17 | `theorem` | [surjective](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/surjective.md) | 328 | `result-track:541e2e9c4525744325c67ae959754e29b73433048cd677d5a492f48b212dd094` |
| 18 | `def` | [toPartialEquiv](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/topartialequiv.md) | 348 | `declaration-track:aa47aea5c33f5b1a32d113f4b20d87cb9b30f10c1908bcfbf07277e5e9550965` |
| 19 | `theorem` | [inverse_continuousOn](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/inverse-continuouson.md) | 354 | `result-track:14cbc3601443c3b37ea75fda60d5d9a8298df36fc961c4435d2feaa6cde0e32f` |
| 20 | `theorem` | [to_inv](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/to-inv.md) | 361 | `result-track:b9855096bf438bf2ad3d6db936e9171f2606e59a59594ff48ac9bebe928aa551` |
| 21 | `def` | [toPartialHomeomorph](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/topartialhomeomorph.md) | 392 | `declaration-track:321dfc03d8c1e2b613106c72e00a2c375e54b312192b63ad43a3f4d23331e633` |
| 22 | `theorem` | [toPartialHomeomorph_coe](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/topartialhomeomorph-coe.md) | 402 | `result-track:32b748a13c6073773b292f6f2984ca797ce3b9bb07530e7f0ce88e9ae44ea5d1` |
| 23 | `theorem` | [toPartialHomeomorph_source](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/topartialhomeomorph-source.md) | 408 | `result-track:5e682564845d816ee65bf9b11f37c691bae26567ce457808c8d1e34aabe5a156` |
| 24 | `theorem` | [toPartialHomeomorph_target](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/topartialhomeomorph-target.md) | 414 | `result-track:4ae8ed707a9e6c40a70ad3d31270bae7eed14eefe7b84e85691fbcb1fa955a96` |
| 25 | `def` | [toHomeomorph](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/tohomeomorph.md) | 420 | `declaration-track:53b3bb5f6d98e7e18408ea6032c4c26eb7c95072ef19627aa082315b8e4d1275` |
| 26 | `theorem` | [closedBall_subset_target](../../../../RealFunctions/ApproximatesLinearOnNamespaced.lean/declarations/closedball-subset-target.md) | 428 | `result-track:3ec8788910f62a2ae1b4a57fb3179af44c2a2f89b65037f087ccd327a974b7d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f97745ec5b2fb0e542b718d44fc96bc543581478f884f530fb41a214aa69b99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantf6d05b10806dd1d3a7130c564a80b3546d468b9ff5e983e34aceb394dd5418ea.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ApproximatesLinearOn/Variantf6d05b10806dd1d3a7130c564a80b3546d468b9ff5e983e34aceb394dd5418ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
