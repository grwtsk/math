# Verification target: Lp Space Indicator Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0838aa4668972c6683ee80323bb6489a4a3732f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Indicator/Variante0cf4125588a190c6db86068d4af68a5e364a4475cca5b3ff70ecb47e3f797dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0838aa4668972c6683ee80323bb6489a4a3732f`.

Source path: `GRWTSK/Topology/GeneralTopology/Indicator/Variante0cf4125588a190c6db86068d4af68a5e364a4475cca5b3ff70ecb47e3f797dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Indicator/Variante0cf4125588a190c6db86068d4af68a5e364a4475cca5b3ff70ecb47e3f797dc.lean.json)

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
| 1 | `theorem` | [exists_eLpNorm_indicator_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/exists-elpnorm-indicator-le.md) | 47 | `result-track:7071d40704b5e6275b3fcad757756d757de8d3ab592b5966e245cb5e0b41018c` |
| 2 | `theorem` | [Lp Space Indicator Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/memlp-of-bound.md) | 78 | `result-track:c54134c482279daa33c22df7860f938f9b466c984f8dd55a7cbb4f98311fbca0` |
| 3 | `theorem` | [Lp Space Indicator Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/memlp-of-enorm-bound.md) | 86 | `result-track:061bba7a321f3dd9d75f9f1560374d7447ebb8168e23af5f627ca9e4a703a3d7` |
| 4 | `theorem` | [Lp Space Indicator Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/memlp-of-hascompactsupport.md) | 96 | `result-track:af07ac661f01a8751c2b35ec05d71b76bae066dc5a1daef6e40490af8f1c655d` |
| 5 | `def` | [indicatorConstLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/indicatorconstlp.md) | 111 | `declaration-track:dcb90540c66248759bbeee272db070776588a618c8db255fce2672508c66bdea` |
| 6 | `theorem` | [indicatorConstLp_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/indicatorconstlp-add.md) | 115 | `result-track:de7d967b3c3409143b3eb5a3b910804f647ac19258d89aa60625fb8b5ffe3e81` |
| 7 | `theorem` | [indicatorConstLp_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/indicatorconstlp-sub.md) | 122 | `result-track:178c0da076e98a88312cb7b4ab4d148bc7c9ad86ff72ba05158008f8437d5ac3` |
| 8 | `theorem` | [indicatorConstLp_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/indicatorconstlp-coefn.md) | 128 | `result-track:732fc36ebe98e1c025b35e570cded750c5b1013c54fa2acf987a93f139285186` |
| 9 | `theorem` | [indicatorConstLp_coeFn_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/indicatorconstlp-coefn-mem.md) | 131 | `result-track:98910e76b9cf89a7905c5358b025a90ba6cadcc52ab897cf60615a3c7d6e9790` |
| 10 | `theorem` | [indicatorConstLp_coeFn_notMem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/indicatorconstlp-coefn-notmem.md) | 134 | `result-track:ef6ea17efd390e84ffd232b96ed68c623d6cd6da0d1111b8861276c5a280345b` |
| 11 | `theorem` | [norm_indicatorConstLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/norm-indicatorconstlp-source-edition-2.md) | 137 | `result-track:deb9e5f5cae21fde59050caa485349e45c8ed2b3b441248fbe3dc5b5ce061d06` |
| 12 | `theorem` | [norm_indicatorConstLp_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/norm-indicatorconstlp-top.md) | 143 | `result-track:a3106e4943aee1e73eac0867481731073178ff9660ac02a152e15cec7fa6b981` |
| 13 | `theorem` | [norm_indicatorConstLp'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/norm-indicatorconstlp.md) | 149 | `result-track:ae47e6448ca6b4b86c192917995f7a249e4631ad5f04a4a8fd11fa1c2ba3c559` |
| 14 | `theorem` | [norm_indicatorConstLp_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/norm-indicatorconstlp-le.md) | 156 | `result-track:15b006d67e017b228802b4fd61b043b4404c2b00f4aa10bfd53fa9c7adce7d5c` |
| 15 | `theorem` | [nnnorm_indicatorConstLp_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/nnnorm-indicatorconstlp-le.md) | 165 | `result-track:c3a60cc6691c514c66ee8068a8bee831b3f290c58affb1d8a176d46b59054228` |
| 16 | `theorem` | [enorm_indicatorConstLp_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/enorm-indicatorconstlp-le.md) | 169 | `result-track:04c297b7a759c64f0986c72eea9efbc8c10af947e4ec68341c861ff51d16f6c6` |
| 17 | `theorem` | [edist_indicatorConstLp_eq_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/edist-indicatorconstlp-eq-enorm.md) | 174 | `result-track:57f44d1ef495b444fa865f4f61261456136c839c21e935a86324232e824ff9a0` |
| 18 | `theorem` | [dist_indicatorConstLp_eq_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/dist-indicatorconstlp-eq-norm.md) | 181 | `result-track:6715d5e26d18e5392798f7cecaf62b47a72f1e7bcf2c8c4fc14fe5e4b8a6086d` |
| 19 | `theorem` | [tendsto_indicatorConstLp_set](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/tendsto-indicatorconstlp-set.md) | 190 | `result-track:8e6f23972d87817dd9bcdcc8b4ad79c65f989ca4e17f089dbd488a89c778fd7b` |
| 20 | `theorem` | [continuous_indicatorConstLp_set](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/continuous-indicatorconstlp-set.md) | 204 | `result-track:551da26783f02265a422ca47cfcf4d0784ba7156c417a0519f56ac3078d36d3b` |
| 21 | `theorem` | [indicatorConstLp_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/indicatorconstlp-empty.md) | 211 | `result-track:1642f99f596f473edbf91c008e66ddfe7eb03280ab79847d20d734b7df5d7db8` |
| 22 | `theorem` | [indicatorConstLp_inj](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/indicatorconstlp-inj.md) | 215 | `result-track:2c753bdeb7b842ecd9f77be20992b743193080bbe8a205920a3df42ffe5c4532` |
| 23 | `theorem` | [memLp_add_of_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/memlp-add-of-disjoint.md) | 220 | `result-track:71721bf43f43d814974007fb8dab7972ffb7e7e34af3585f4f2368db9ccc130a` |
| 24 | `theorem` | [indicatorConstLp_disjoint_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/indicatorconstlp-disjoint-union.md) | 229 | `result-track:8cbd2f61ef3b57be616d0348f4d62b8a6e87d2d6ed5a7116ca21263f6ed7babc` |
| 25 | `def` | [Lp.const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/lp-const.md) | 244 | `declaration-track:6052247fe44744d6f8eff81cad7e57704bbacccedaa26110be63a151c7d041b7` |
| 26 | `lemma` | [Lp.coeFn_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/lp-coefn-const.md) | 249 | `result-track:29ad8b0d98384456f1ac9210c1bcf965048f5447ef4d94669ee85b46e9348aa4` |
| 27 | `lemma` | [Lp.const_val](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/lp-const-val.md) | 252 | `result-track:d49889a11a1e7288b253a311821212bfb43396485a73892546826c9773a0aded` |
| 28 | `lemma` | [MemLp.toLp_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/memlp-tolp-const.md) | 255 | `result-track:e87698930c5c6da710749b6a270dd0f93506809846595c1b74c7cdf374be1910` |
| 29 | `lemma` | [indicatorConstLp_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/indicatorconstlp-univ.md) | 258 | `result-track:ef89718237dcf53e3ef6d2a6b2ad7e40f14ec1733588cecfe79a767a43f3282b` |
| 30 | `theorem` | [Lp.norm_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/lp-norm-const-source-edition-2.md) | 263 | `result-track:8397fe1416cc1977a3e29808238f821362bdf32cc53c08124a375a56000e2a7d` |
| 31 | `theorem` | [Lp.norm_const'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/lp-norm-const.md) | 270 | `result-track:2f026510a534d3cb0ca7f178d01acb3074f17b86ddd1357c1bdf8f5d544ae219` |
| 32 | `theorem` | [Lp.norm_const_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/lp-norm-const-le.md) | 276 | `result-track:ddac8f7f29861659b6cd371517198918cf1815fe3fab24c86985c01d21341e90` |
| 33 | `def` | [Lp.constₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/lp-const-source-edition-2.md) | 281 | `declaration-track:a2f705a13a25e5607ddaca72175cb09a39cc44c168c6a16506e5c7aa16ac587d` |
| 34 | `def` | [Lp.constL](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/lp-constl.md) | 289 | `declaration-track:b2d0d44463b6d5383df9ba4709b29c72a4ed4c0712a8540e2e88ec94d0dbf9fc` |
| 35 | `theorem` | [Lp.norm_constL_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/lp-norm-constl-le.md) | 294 | `result-track:63eaf86ecff474278a9bf4374c68c469f1fabb51702a4f5c9e5040a54ccb443a` |
| 36 | `theorem` | [indicatorConstLp_compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/indicatorconstlp-compmeasurepreserving.md) | 305 | `result-track:c634ce77b9aab0e98c7b5ceb6303564d0aa10cc91e792ead3c4364123cd5414c` |
| 37 | `theorem` | [indicatorConstLp_eq_toSpanSingleton_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceIndicatorNamespacedPublic.lean/declarations/indicatorconstlp-eq-tospansingleton-complp.md) | 314 | `result-track:a80749c6a906ac2323af462033badc67d70cf332fc29707b8b47401855ede7c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d125a4017b1c239df259ee7ce08df2d6bfa5c730276e838663ba6f66a8f2498f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Indicator/Variante0cf4125588a190c6db86068d4af68a5e364a4475cca5b3ff70ecb47e3f797dc.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Indicator/Variante0cf4125588a190c6db86068d4af68a5e364a4475cca5b3ff70ecb47e3f797dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
