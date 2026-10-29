# Verification target: LSeries Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de7239b112ddb32aced751ba00cc0adde0b356cf",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de7239b112ddb32aced751ba00cc0adde0b356cf`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.Upper` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Convolution` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Linearity` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lamC](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/lamc.md) | 41 | `declaration-track:efab8f5fc560eb9de33542eaf15d2ee66fad9ba99faea7eaa0935c74e1f3696d` |
| 2 | `def` | [lamLogC](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/lamlogc.md) | 43 | `declaration-track:19b055be1cc57a4f63e7e07c1de9c1b2dbd705d6ed17eb89e677419fb19fdfa2` |
| 3 | `lemma` | [lamC_apply](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/lamc-apply.md) | 45 | `result-track:94cf24874501775b15122219ecf71a66a922a9d00084a2825db5aba45f49c52e` |
| 4 | `lemma` | [lamLogC_apply](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/lamlogc-apply.md) | 46 | `result-track:1ebd6dcb07ad2be5dc2048f7c03bc230dde516681241c70851fa8ed67c3acb74` |
| 5 | `lemma` | [lamLogConv_zero_apply](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/lamlogconv-zero-apply.md) | 51 | `result-track:fefd52d86f9995054117d8a08efddc435cbae2bf3a3826068e581af7cbfc59f7` |
| 6 | `lemma` | [lam_mul_lamLogConv](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/lam-mul-lamlogconv.md) | 55 | `result-track:e0a22f9b59da1677b07eb5f4ac331b7ce0275a5319b1602326133f696517e187` |
| 7 | `lemma` | [lamC_conv_xiCoeffJ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/lamc-conv-xicoeffj.md) | 60 | `result-track:5442a2de6d7e43417b7c23b425a9231b44522442a4e9367527617311de1de078` |
| 8 | `theorem` | [xiCoeffJ_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/xicoeffj-identity.md) | 82 | `result-track:7dc4dbc139ccde02ca61f7e7187593969128cfa2f2792682dc7d197059c0740a` |
| 9 | `lemma` | [lamLogC_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/lamlogc-eq.md) | 99 | `result-track:7e47ec536c296bb2ba2422b705b12e1d9ac9274f0965af663e56b9bc0afa09d3` |
| 10 | `lemma` | [norm_xiCoeffJ_rpow_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/norm-xicoeffj-rpow-nonneg.md) | 108 | `result-track:0381addf29e2d3221d7379c41e677633af5673f437450963e34ee305293bab16` |
| 11 | `lemma` | [sum_range_le_sum_Ioc](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/sum-range-le-sum-ioc.md) | 111 | `result-track:a3b42b94c9d59fe1681bfe023fb3f10ce53496f3e5dda944961c481e32df45f0` |
| 12 | `lemma` | [norm_term_xiCoeffJ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/norm-term-xicoeffj.md) | 124 | `result-track:2fad39957e76c0e91fec4079112fb615d81215cbf639326e6bc0f2b5cffbcedf` |
| 13 | `def` | [Asig](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/asig.md) | 137 | `declaration-track:89a152a3c2debb9c2a80b0db8a57d9250e46a17de775a18d5cb581a9ebd24320` |
| 14 | `lemma` | [summable_lam_rpow_of_gt_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/summable-lam-rpow-of-gt-one.md) | 139 | `result-track:5c0a6dcb7242cf7610047c6faf9e22b0b8930c48521848627b145a8f859ce65e` |
| 15 | `lemma` | [lam_rpow_nonneg'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/lam-rpow-nonneg.md) | 149 | `result-track:64621c494302023b571d7787ad6f582c6a6d6703a9b56e700718194da94799c2` |
| 16 | `lemma` | [Asig_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/asig-nonneg.md) | 152 | `result-track:5c9fdf1b1e5ed3e730a09bbac0abef6699aac61546c3a5242fa93362f8b1f519` |
| 17 | `lemma` | [sum_lam_rpow_le_Asig](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/sum-lam-rpow-le-asig.md) | 154 | `result-track:70d21e364c4ea74cac5fdfa2b44f61ddf8ac8d64dd7fb123388d5485c6074901` |
| 18 | `def` | [sigAux](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/sigaux.md) | 159 | `declaration-track:da2abc99510b6244b44306987a4d7c0f2a8204877a4eb807794d15d7d72f78f7` |
| 19 | `lemma` | [one_lt_sigAux](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/one-lt-sigaux.md) | 161 | `result-track:ef4598d54bc2f51da8547f3f5d0ef7180fa87401506a490dd3bc900da778ed0a` |
| 20 | `def` | [R0sig](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/r0sig.md) | 164 | `declaration-track:1e70ffb0570ded313e494262ba30389859f498ab1c9f6dc716727c734e9ecaee` |
| 21 | `lemma` | [R0sig_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/r0sig-pos.md) | 166 | `result-track:057a1e1c740e53ea4fbbf95ef340f2ec9efd27b3e91c808a815718da7a5385f9` |
| 22 | `lemma` | [sum_norm_xiCoeffJ_rpow_le_gen](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/sum-norm-xicoeffj-rpow-le-gen.md) | 169 | `result-track:a5cf8549aa45a6818ac34cb6ae4fe7bba18f0831885e9328c469eaba2d21bbff` |
| 23 | `lemma` | [summable_norm_xiCoeffJ_gen](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/summable-norm-xicoeffj-gen.md) | 238 | `result-track:478c443f3c144868c85d3ef207c1794fa087c638f6d2f2094db3ba78b4e668d2` |
| 24 | `theorem` | [norm_xiCoeffJ_tsum_le_of_gt_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/norm-xicoeffj-tsum-le-of-gt-one.md) | 246 | `result-track:cee2026eecb1b6711b76fd8b5ee944c70ef0a8a0e8b340d594c0a6b1de01e0ac` |
| 25 | `lemma` | [summable_norm_xiCoeffJ_rpow_gen](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/summable-norm-xicoeffj-rpow-gen.md) | 259 | `result-track:b320460923d4aa0b548f96dcf8d56606c27900cfc3c6007b4b5d30ee09737411` |
| 26 | `lemma` | [norm_LSeries_lamC_le_gen](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/norm-lseries-lamc-le-gen.md) | 269 | `result-track:1edba6237b93a97fabfab9288e21f67359f4b4ab9dab8ce3e7b64c96e6a75310` |
| 27 | `theorem` | [LSeries_xiCoeffJ_of_gt_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/lseries-xicoeffj-of-gt-one.md) | 287 | `result-track:131947467a6f138c1c8cd41a7b1193b6a63a5ce962823be2232c8b1c8cdc6c6a` |
| 28 | `theorem` | [norm_xiCoeffJ_tsum_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/norm-xicoeffj-tsum-le.md) | 324 | `result-track:f6e5787336bae7d6c1f170fae615f5d853aaa2cf8ac805d72a9e79c113674e1c` |
| 29 | `theorem` | [LSeries_xiCoeffJ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/declarations/lseries-xicoeffj.md) | 330 | `result-track:17001d9cb9b42708fc07e10d55e9af7a7909a3d23973a2aabfe1c33419b7f18b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=170086356ea06247459ec6c66f9faa8e09621fad8f2924091ff2003abc2c013b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
