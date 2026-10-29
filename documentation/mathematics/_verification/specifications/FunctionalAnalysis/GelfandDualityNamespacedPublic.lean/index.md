# Verification target: Gelfand Duality Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92a52eebebb7e6c39b50d92c515b485475ed6881",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GelfandDuality/Variant6da652588853c6dc899e3e4c235a239cde7ed3cca311dc18a883da6168e8c12e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92a52eebebb7e6c39b50d92c515b485475ed6881`.

Source path: `GRWTSK/Algebra/GelfandDuality/Variant6da652588853c6dc899e3e4c235a239cde7ed3cca311dc18a883da6168e8c12e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GelfandDuality/Variant6da652588853c6dc899e3e4c235a239cde7ed3cca311dc18a883da6168e8c12e.lean.json)

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
| 1 | `def` | [Ideal.toCharacterSpace](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/ideal-tocharacterspace.md) | 93 | `declaration-track:ace4bbd282dd4a463f7c8ba2940965118fe522baf832fe1e927503356a89cbb3` |
| 2 | `theorem` | [Ideal.toCharacterSpace_apply_eq_zero_of_mem](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/ideal-tocharacterspace-apply-eq-zero-of-mem.md) | 99 | `result-track:be4f6e3561e59c928d4955b41cf96f625874f027cee04019e9fdd5210e11cc0b` |
| 3 | `theorem` | [WeakDual.CharacterSpace.exists_apply_eq_zero](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/weakdual-characterspace-exists-apply-eq-zero.md) | 109 | `result-track:e1ddc189b68756142d1c94f1b354ebc5378df0d407ffb79c0e53b8e13fe5d6e9` |
| 4 | `theorem` | [WeakDual.CharacterSpace.mem_spectrum_iff_exists](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/weakdual-characterspace-mem-spectrum-iff-exists.md) | 117 | `result-track:8432da13bb80cf653e39040b4fece8a00c762a4e7a30d63fb8351708f6acf6d6` |
| 5 | `theorem` | [spectrum.gelfandTransform_eq](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/spectrum-gelfandtransform-eq.md) | 127 | `result-track:610059b628f8a2af4928b566dfc27ab8d7bd24f80b45fe1ba68a82fe796c67bd` |
| 6 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/instance.md) | 133 | `declaration-track:8767db35ed152d4277201ae37725129a1fadc70223bc6d3372c788ae5ee99cb5` |
| 7 | `theorem` | [gelfandTransform_map_star](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/gelfandtransform-map-star.md) | 145 | `result-track:f37dd0424fbf1453f20cd0638c48d36722bf8bb9a2409840dbb006b3184058b9` |
| 8 | `theorem` | [gelfandTransform_isometry](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/gelfandtransform-isometry.md) | 152 | `result-track:de87cd6438d2e15fc53ad57d2b49793e023bb0e46bc17a137e51f54471304b94` |
| 9 | `theorem` | [gelfandTransform_bijective](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/gelfandtransform-bijective.md) | 168 | `result-track:56942be0be272a4da097b99d6b49332d64541fc272fe8a0a581521789f3c0eec` |
| 10 | `def` | [gelfandStarTransform](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/gelfandstartransform.md) | 201 | `declaration-track:9a87c0d81d832f0203217c3b33edcbc5a24232fa9e10e05e052ee9355e4fe054` |
| 11 | `lemma` | [norm_add_eq_max](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/norm-add-eq-max-source-edition-3.md) | 215 | `result-track:9dea708d9803e40134aba4b2b2fe90f6ca67cda6ecae3cea01054eca615c4a47` |
| 12 | `lemma` | [nnnorm_add_eq_max](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/nnnorm-add-eq-max.md) | 221 | `result-track:253fc741d5a02f02290dd9c58ea921cfb3ca92a087124f8c8f9c471aad3f6a1b` |
| 13 | `lemma` | [norm_sub_eq_max](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/norm-sub-eq-max-source-edition-3.md) | 224 | `result-track:f398730f812da6c81d147a66f7ad080f31f42099a68608582a10a494cc144940` |
| 14 | `lemma` | [nnnorm_sub_eq_max](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/nnnorm-sub-eq-max-source-edition-3.md) | 227 | `result-track:c9b383840f0bf0289ecec73435a132c3bfbbbff0003a5971ce475d8dde0acf4a` |
| 15 | `lemma` | [nnnorm_sum_eq_sup](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/nnnorm-sum-eq-sup.md) | 231 | `result-track:2750978a46767b38e7cbac824d628d18998a825892109c7f11ebc2547e3fe9e0` |
| 16 | `lemma` | [norm_add_eq_max](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/norm-add-eq-max-source-edition-2.md) | 250 | `result-track:4d1827cd0fb86a9d7b7f2f40a9a8e5374c71c359726a4e5294294e8142b41e41` |
| 17 | `lemma` | [nnnorm_add_eq_max](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/nnnorm-add-eq-max-source-edition-3.md) | 262 | `result-track:cd274529add37b04469c295791ee3dbb34d51b8a28a2c725dee53f89f39a2c5e` |
| 18 | `lemma` | [norm_sub_eq_max](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/norm-sub-eq-max-source-edition-2.md) | 267 | `result-track:64c18c5ae026755dae1ed86dd3390be9fcf33ae60b43cc0c709397d08f91b739` |
| 19 | `lemma` | [nnnorm_sub_eq_max](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/nnnorm-sub-eq-max.md) | 273 | `result-track:2116429863454f1c10f9a4ecb8420dd0544fa2bf202d570c2b1ff98814a2deb1` |
| 20 | `lemma` | [norm_add_eq_max](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/norm-add-eq-max.md) | 283 | `result-track:0eaba5ae95bd723a9691b2f809f8c8c26e6b514702adb8d3f9ac0dba9e5a1ee6` |
| 21 | `lemma` | [nnnorm_add_eq_max](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/nnnorm-add-eq-max-source-edition-2.md) | 287 | `result-track:90460411a6866b61ba1f3e6d6c1b76867b663ac8d4b4c1743e479a390a790c03` |
| 22 | `lemma` | [norm_sub_eq_max](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/norm-sub-eq-max.md) | 291 | `result-track:0019d11a94f216dabc5b1e7d7c49b837225cc140b15041d47adf44507369e799` |
| 23 | `lemma` | [nnnorm_sub_eq_max](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/nnnorm-sub-eq-max-source-edition-2.md) | 295 | `result-track:3645a4d305e565a02072526d85d42937d733528df2f93e8a4ff3578bb7cee05c` |
| 24 | `lemma` | [nnnorm_sum_eq_sup](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/nnnorm-sum-eq-sup-source-edition-2.md) | 300 | `result-track:8e5a6f6ae94d7d274b3f40c2e03a94ddd126f1a7a88b2f5d3b1e9a9c9b3dbff7` |
| 25 | `def` | [compContinuousMap](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/compcontinuousmap.md) | 331 | `declaration-track:deff99bbadb8f138b8eb93b00828bd0a7e7ec5bf063806fe79a43ae9fa5bfcab` |
| 26 | `theorem` | [compContinuousMap_id](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/compcontinuousmap-id.md) | 341 | `result-track:0ae87d57ade98a75492871d5f9d44f6a08ed53ff82d4e06c696e1ac189972e2a` |
| 27 | `theorem` | [compContinuousMap_comp](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/compcontinuousmap-comp.md) | 347 | `result-track:fdc5505cf6f0b4729e62c17c602f52f0a7768a9e35dfce9cb3211d8f5f55c6ab` |
| 28 | `theorem` | [gelfandStarTransform_naturality](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/gelfandstartransform-naturality.md) | 381 | `result-track:ebd6e6081178049190002f78d056f388577f3cc83def2954cefb1e6a694290cd` |
| 29 | `lemma` | [WeakDual.CharacterSpace.homeoEval_naturality](../../../../FunctionalAnalysis/GelfandDualityNamespacedPublic.lean/declarations/weakdual-characterspace-homeoeval-naturality.md) | 410 | `result-track:6b50557943c7dc0dd4f98512d2a019ac5eeda88b25ebadc6e182fae7a8fc0fbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=119f1b1a9c00dc2a06215c00d004210240e8ba945b7c9fbcf38c95735118546c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GelfandDuality/Variant6da652588853c6dc899e3e4c235a239cde7ed3cca311dc18a883da6168e8c12e.lean","GRWTSK/_verification/specifications/Algebra/GelfandDuality/Variant6da652588853c6dc899e3e4c235a239cde7ed3cca311dc18a883da6168e8c12e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
