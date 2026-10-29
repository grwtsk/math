# Verification target: Abstract Completion Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55f93e66b140eb952949ec72a21d01b50c951af0",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant43c4ab7d13042ccd9d2c996842043d0868df1b261982f2e3702226ec644df43b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55f93e66b140eb952949ec72a21d01b50c951af0`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant43c4ab7d13042ccd9d2c996842043d0868df1b261982f2e3702226ec644df43b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant43c4ab7d13042ccd9d2c996842043d0868df1b261982f2e3702226ec644df43b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AbstractCompletion.](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/abstractcompletion.md) | 66 | `declaration-track:49592343b2e6e2917f69a99ca914f00567feefd101f13c8f55c9ba360f130b86` |
| 2 | `def` | [ofComplete](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/ofcomplete.md) | 96 | `declaration-track:94d358400a7404ef27a4c55c9544353cc5f1e9cade27d1b46814999f1b0f8632` |
| 3 | `theorem` | [closure_range](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/closure-range.md) | 99 | `result-track:78b64ff5e09d254278038ba4950e85df2fefa1d5f2123777eaf8e461e854b77d` |
| 4 | `theorem` | [isDenseInducing](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/isdenseinducing.md) | 102 | `result-track:b3916d4defbff5eb4d65716ff980e8bc2abfe7e91a66978873d8222bbc2cbb53` |
| 5 | `theorem` | [uniformContinuous_coe](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/uniformcontinuous-coe.md) | 106 | `result-track:ef7cf9ccf085cb9cc39b8668b9e7b6a2fe8db93e8d997afef18a45123c98d87d` |
| 6 | `theorem` | [continuous_coe](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/continuous-coe.md) | 109 | `result-track:b120a9eb349cdde42d604e4f9190a9faa535f8d19ce41efb150de3bd7077a0c0` |
| 7 | `theorem` | [induction_on](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/induction-on.md) | 113 | `result-track:0df099c08feb409a31b5965aba66e0922c187edb569deb3e46d4b8316b898804` |
| 8 | `theorem` | [funext](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/funext.md) | 119 | `result-track:67dc578e52dc062d28f696f7d8c0335c1637b1e45a3b82aa1cea855dd4fa65d3` |
| 9 | `def` | [extend](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/extend.md) | 128 | `declaration-track:36ec1a51caebb80476becc09f097de4983f9ebabd9a35242bc9ce565e1a44922` |
| 10 | `theorem` | [extend_def](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/extend-def.md) | 134 | `result-track:4a5328d04095849a5b61c032715dbf691fb6f92c984fc452e4828e4f096d5b04` |
| 11 | `theorem` | [inseparable_extend_coe](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/inseparable-extend-coe.md) | 137 | `result-track:dae6fe86e10bbc4cfe1ee8e1b8b64676b77f8e1156ba702aa9a92a588e26dce6` |
| 12 | `theorem` | [extend_coe](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/extend-coe.md) | 142 | `result-track:818ba542bb27447b1033f616d43a528163d27459dd32962bf04724bfe73bff36` |
| 13 | `theorem` | [uniformContinuous_extend](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/uniformcontinuous-extend.md) | 149 | `result-track:a082bf4a32ef49057c7768587e0dabc77e833edf8c0bf8770302fb9d984cb041` |
| 14 | `theorem` | [continuous_extend](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/continuous-extend.md) | 157 | `result-track:35ca6712313006f2c4034701edd9d0afae498cfafe9ab8c716d1335851845069` |
| 15 | `lemma` | [isUniformInducing_extend](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/isuniforminducing-extend.md) | 161 | `result-track:aaea129d82820c732b6d3d1c8e6cffc0ac613d66d4b11c601dace58054104fd8` |
| 16 | `theorem` | [extend_unique](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/extend-unique.md) | 168 | `result-track:867b10dca6bbd89d4ca5e132c7935df75f1e54b69cb6513d798f5160413821bb` |
| 17 | `theorem` | [extend_comp_coe](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/extend-comp-coe.md) | 174 | `result-track:c75efd4d6af9872112e5715cd0b8bd5498deba977455de7a6747a3143df78f11` |
| 18 | `def` | [map](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/map.md) | 190 | `declaration-track:7ff3a56b510180b46a6379919d22fbae751bab0fd77306c54ce0d8860f6d9d45` |
| 19 | `theorem` | [uniformContinuous_map](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/uniformcontinuous-map-source-edition-2.md) | 198 | `result-track:d9563e519a56d20570ce455641a4d95589ec210de6ab8e19a83254229063339e` |
| 20 | `theorem` | [continuous_map](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/continuous-map.md) | 202 | `result-track:400f3c872a4727b12c30f2ffbed2396064e84b15be2a84a0843b7f6582425aae` |
| 21 | `theorem` | [map_coe](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/map-coe.md) | 208 | `result-track:84bb75ccf35719a69643d165b3dec9a154b976cd56b0ae87699aae94f6a6f857` |
| 22 | `theorem` | [map_unique](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/map-unique.md) | 211 | `result-track:c40ced7b18a593e09d89cd93251f3c82d9d399305c2dded1cf038eefcc122ee0` |
| 23 | `theorem` | [map_id](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/map-id.md) | 220 | `result-track:dcf917c3be6cb4a3cce7aeb26c6e99eaad24b7e3cdf8481629f49aa597c04e02` |
| 24 | `theorem` | [extend_map](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/extend-map.md) | 225 | `result-track:da1356fd7ad4e7602d92b1aefbe523f5598ab0db4071b85d7e072003afb825e1` |
| 25 | `theorem` | [map_comp](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/map-comp.md) | 235 | `result-track:5da30bee40f56882010fcb68098fcd7e41857c584a92eda8369fe6275a3b48bf` |
| 26 | `def` | [mapEquiv](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/mapequiv.md) | 240 | `declaration-track:b8148e34b291e56e205ff25635e794b4a503189b0fedc1b0b05b4514111b7405` |
| 27 | `theorem` | [mapEquiv_symm](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/mapequiv-symm.md) | 251 | `result-track:a3760e8ffc9de4901a6925aa3d32a3b3d10538cad533583f25a78a81ccfecd10` |
| 28 | `theorem` | [mapEquiv_coe](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/mapequiv-coe.md) | 255 | `result-track:e03ef88ed8388460ee30210423f1d6979e1ba6f7387a2b16c24c03a75b548b30` |
| 29 | `def` | [compare](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/compare.md) | 266 | `declaration-track:0788171afe961b84d3d0f7208c16c0a4f7df5b32ef00b86abecbbd7a008301d8` |
| 30 | `theorem` | [uniformContinuous_compare](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/uniformcontinuous-compare.md) | 270 | `result-track:8b39e5b468fb4e64c63949525606741b9f82a4bb3c09d13a51f570ba5489947a` |
| 31 | `theorem` | [compare_coe](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/compare-coe.md) | 273 | `result-track:9bbbdb7071b2b0278b0841cd3a9693c6ef1de3d0a0f5a200ea6a599ec813ac0f` |
| 32 | `theorem` | [inverse_compare](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/inverse-compare.md) | 276 | `result-track:50ef93866f4dcf1cc9e9bd56cb448f0cae600eda7e14f2cdff53026e700d1804` |
| 33 | `def` | [compareEquiv](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/compareequiv.md) | 285 | `declaration-track:169b851a74ece96dee5bff76c874a80a05f7904721e9041d88141b9c721a7892` |
| 34 | `theorem` | [uniformContinuous_compareEquiv](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/uniformcontinuous-compareequiv.md) | 294 | `result-track:a865e7942357f2c04712cc2c589aab6e3be72ceff2aa5254f426a60dde4a3523` |
| 35 | `theorem` | [uniformContinuous_compareEquiv_symm](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/uniformcontinuous-compareequiv-symm.md) | 298 | `result-track:5dfd7bb76645d8961cfe1a9f2caa81685104fca224c1e87343864cc0a8345604` |
| 36 | `theorem` | [compare_comp_eq_compare](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/compare-comp-eq-compare.md) | 322 | `result-track:e43e05d0d41d19ece7d7432093b5790e72e75f3c34ee93b13afaab0f4bc6623d` |
| 37 | `def` | [prod](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/prod.md) | 348 | `declaration-track:86dbdcd87a5488541297eace4fd65abc79fb2993499f5a872d8c51a43201ea1f` |
| 38 | `def` | [extend₂](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/extend-source-edition-2.md) | 372 | `declaration-track:48f4ec0bfa926b8cfcca68089dd9ec4f765ed895e8dd4a187a4a54f1fe15148c` |
| 39 | `theorem` | [extension₂_coe_coe](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/extension-coe-coe.md) | 379 | `result-track:d870aefa879e80d8e73063056dfde6f4b11164db2b877e7c0dae9f12eb4306c6` |
| 40 | `theorem` | [uniformContinuous_extension₂](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/uniformcontinuous-extension.md) | 391 | `result-track:46b0da9b7986b3d95bfa6363f41a3c0048ad0e2d14a923090d3fd286187b6a70` |
| 41 | `def` | [map₂](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/map-source-edition-2.md) | 414 | `declaration-track:bad496a74eb00100edb3ee917b1006599f71757edb8667ebe1df1868813edac9` |
| 42 | `theorem` | [uniformContinuous_map₂](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/uniformcontinuous-map.md) | 418 | `result-track:5e6d0414940e8a710f1dfd82e59e80dab6d03b71b10c9c8cc67cbcb8a0678900` |
| 43 | `theorem` | [continuous_map₂](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/continuous-map-source-edition-2.md) | 421 | `result-track:8ae9f7bec4b3900f85b78bbc1999aa94d0bc0cee55611fe8121b4e17b762b821` |
| 44 | `theorem` | [map₂_coe_coe](../../../../GeneralTopology/AbstractCompletionNamespacedPublic.lean/declarations/map-coe-coe.md) | 426 | `result-track:df2d0eb04ff78b9f1c2171282701a77259f6c50d96f0b1dd9e524a6c41c2aaff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8bf7ec34ee7ff7a719bf9758f24620521483247631e34dd1d5e7e70b96736cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant43c4ab7d13042ccd9d2c996842043d0868df1b261982f2e3702226ec644df43b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant43c4ab7d13042ccd9d2c996842043d0868df1b261982f2e3702226ec644df43b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
