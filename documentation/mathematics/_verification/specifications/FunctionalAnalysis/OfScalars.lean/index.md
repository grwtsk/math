# Verification target: Of Scalars

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07c86755bf2e0624c86f048d3ab7bcffff772981",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OfScalars/Variant0e73a5f24c34ad46d66a9ffe2238913407b607d2516f4b65733756a7b297eb51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/OfScalars.lean/index.md) · [Full source](../../../../FunctionalAnalysis/OfScalars.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07c86755bf2e0624c86f048d3ab7bcffff772981`.

Source path: `GRWTSK/Topology/GeneralTopology/OfScalars/Variant0e73a5f24c34ad46d66a9ffe2238913407b607d2516f4b65733756a7b297eb51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OfScalars/Variant0e73a5f24c34ad46d66a9ffe2238913407b607d2516f4b65733756a7b297eb51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofScalars](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars.md) | 33 | `declaration-track:ed50d2eab3f299ce7fd6cfc11efb87866e620d0c04360dec4dcf33e8d61d55ed` |
| 2 | `theorem` | [ofScalars_eq_zero](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-eq-zero.md) | 37 | `result-track:7945f7a045d4c41cb8d459adf9bc0a4727ca262182b89f2b90f31d86b7fcb54d` |
| 3 | `theorem` | [ofScalars_eq_zero_of_scalar_zero](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-eq-zero-of-scalar-zero.md) | 44 | `result-track:7b925ba44e92bb2dc4ce28f071909a10a5309e09ffc7098ce4feca8df698c9da` |
| 4 | `theorem` | [ofScalars_series_eq_zero](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-series-eq-zero.md) | 48 | `result-track:02bbd4f758aedd9e256c8eb698ccf8690ddad8772a4cb81359219226fb9d9040` |
| 5 | `theorem` | [ofScalars_series_eq_zero_of_scalar_zero](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-series-eq-zero-of-scalar-zero.md) | 53 | `result-track:0a2f20db2fcaddaeee47ee4ea6855669efee5f374d6de17b181e103fe1e79926` |
| 6 | `theorem` | [ofScalars_series_of_subsingleton](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-series-of-subsingleton.md) | 57 | `result-track:3fab68700cab0abeea37727cffb7abf61cc1ca3c99ff1e6454c26fe30d8ab683` |
| 7 | `theorem` | [ofScalars_series_injective](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-series-injective.md) | 62 | `result-track:cbbd0cc063e99492c448153b14ff14081dc71379db15401ce8ee336ea1d5a64f` |
| 8 | `theorem` | [ofScalars_series_eq_iff](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-series-eq-iff.md) | 76 | `result-track:111531d9553370fa60331f49a0411c7c45880127fad90fc69774fcd5b3090024` |
| 9 | `theorem` | [ofScalars_apply_zero](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-apply-zero.md) | 80 | `result-track:69866d095e0a6a7e6ba57bd948cc50ba43b5392954002ef98d24fe19a74544a0` |
| 10 | `lemma` | [coeff_ofScalars](../../../../FunctionalAnalysis/OfScalars.lean/declarations/coeff-ofscalars.md) | 86 | `result-track:712f71c34f6fe79ff26bacce6acb1ee8ea89f6a82833c688accd71147f98b339` |
| 11 | `theorem` | [ofScalars_add](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-add.md) | 90 | `result-track:c9a58db2945fb58ec845563c62cfa0c6c41c8e1c9928f5b6fee26369e359356b` |
| 12 | `theorem` | [ofScalars_smul](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-smul.md) | 95 | `result-track:cbc0fd9fb6782177bd6fb3018e8afe9c5115084207174b747c7e9ac253ae2d4a` |
| 13 | `def` | [ofScalarsSubmodule](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalarssubmodule.md) | 101 | `declaration-track:e91c1496505ad5078e5d19a4d0e61971dd4cfe6587c525ec7d06a8b5a5b5b895` |
| 14 | `theorem` | [ofScalars_apply_eq](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-apply-eq.md) | 109 | `result-track:9a3ecb5b67d4f8cdca43a323337b4685f35f497667c5ca022d9e3b255d23f941` |
| 15 | `theorem` | [ofScalars_apply_eq'](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-apply-eq-source-edition-2.md) | 114 | `result-track:cff70a5405c671260533d5f4434dd811aa897f85e6d81aa7b7f5c32ff680f0da` |
| 16 | `def` | [ofScalarsSum](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalarssum.md) | 119 | `declaration-track:7a3792acdc134e93e7a9038056c581b24d5171c2f54db2d71f199eadc2ee1a23` |
| 17 | `theorem` | [ofScalars_sum_eq](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-sum-eq.md) | 121 | `result-track:33ba03737d59be63405b891012780f6a72cdf974dcc6003ef4f813ef8bd9692f` |
| 18 | `theorem` | [ofScalarsSum_eq_tsum](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalarssum-eq-tsum.md) | 124 | `result-track:20e0b2391713ce1c98d962209a279d8e4542b8a8f32da39d68036a422108d1d8` |
| 19 | `theorem` | [ofScalarsSum_zero](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalarssum-zero.md) | 128 | `result-track:3b75b38fa6e405c30f115ef4cec0d5f8d10731a3fb83dee349528b8662d57a44` |
| 20 | `theorem` | [ofScalarsSum_of_subsingleton](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalarssum-of-subsingleton.md) | 132 | `result-track:56c39b90b10a359a86ce380105c58421d85381ae34448560a5fe78ea9fae27b5` |
| 21 | `theorem` | [ofScalarsSum_op](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalarssum-op.md) | 136 | `result-track:bf878aac86cfc0ac5d19c749c12fc7e51dd2bfb4f351f82f9cbbb58c16f54ec5` |
| 22 | `theorem` | [ofScalarsSum_unop](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalarssum-unop.md) | 141 | `result-track:fcac3e120d8c312bd032fcf9df2a07d3f17f3b38438f6184e5a46100ac207660` |
| 23 | `theorem` | [ofScalars_norm_eq_mul](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-norm-eq-mul.md) | 155 | `result-track:8de115e942fad19a2435e59c27807142506a29e55b916307cf7bad9452d9668b` |
| 24 | `theorem` | [ofScalars_norm_le](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-norm-le.md) | 159 | `result-track:53bc8a7d804760f7a847d26b91639b37fe8387139c1f477ffeb217019c0380ee` |
| 25 | `theorem` | [ofScalars_norm](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-norm.md) | 165 | `result-track:09168b9d4ff64991baa34c3a5bd9e76dea78147c9ff68571551ca2258ceb4baa` |
| 26 | `theorem` | [tendsto_succ_norm_div_norm](../../../../FunctionalAnalysis/OfScalars.lean/declarations/tendsto-succ-norm-div-norm.md) | 178 | `result-track:7600f5978fca32111b6f18ae25323a04b9bb55345df52bf22e634b1b6ee1d187` |
| 27 | `theorem` | [ofScalars_radius_ge_inv_of_tendsto](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-radius-ge-inv-of-tendsto.md) | 186 | `result-track:4440a74f069fc5dfd3a72d880556110f598412309a26c22a77b0a047f83515b3` |
| 28 | `theorem` | [ofScalars_radius_eq_inv_of_tendsto](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-radius-eq-inv-of-tendsto.md) | 207 | `result-track:f8a2b9e5ecb90c91ef1002c20b1c7af7d750a750866de5a2b104c48bcbe0e119` |
| 29 | `theorem` | [ofScalars_radius_eq_of_tendsto](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-radius-eq-of-tendsto.md) | 221 | `result-track:03ef762e82b6afab03870550d8265f730980413decfd794dd0e2419d24408398` |
| 30 | `theorem` | [ofScalars_radius_eq_top_of_tendsto](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-radius-eq-top-of-tendsto.md) | 233 | `result-track:95895bb0633603664d1d2ec4796db3afaba91a9715370dfc083abbc30bc81b1e` |
| 31 | `theorem` | [ofScalars_radius_eq_zero_of_tendsto](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-radius-eq-zero-of-tendsto.md) | 251 | `result-track:f7953bfb38a67bb9b809f2fef1a2fdaa3771f7d7c0135096b45c571ba5fb2a3c` |
| 32 | `theorem` | [ofScalars_radius_eq_inv_of_tendsto_ENNReal](../../../../FunctionalAnalysis/OfScalars.lean/declarations/ofscalars-radius-eq-inv-of-tendsto-ennreal.md) | 279 | `result-track:d1dd3a535defac70ff36386438504045b1b83220687ecda68be3ace22dab3aab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef33d5ae6c0d4b856e02a6f001af8f78ebc167f2eebfa5a3d72323f31915bf04 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OfScalars/Variant0e73a5f24c34ad46d66a9ffe2238913407b607d2516f4b65733756a7b297eb51.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/OfScalars/Variant0e73a5f24c34ad46d66a9ffe2238913407b607d2516f4b65733756a7b297eb51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
