# Verification target: Abstract Completion Namespaced Is Dense Inducing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a6d2bc946468c0d31f602763458da592da11e31",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant88fac4801e7636f3fcf1d1480d89fe5aea6aaa8e21546505674028e0319d30a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/index.md) · [Full source](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a6d2bc946468c0d31f602763458da592da11e31`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant88fac4801e7636f3fcf1d1480d89fe5aea6aaa8e21546505674028e0319d30a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant88fac4801e7636f3fcf1d1480d89fe5aea6aaa8e21546505674028e0319d30a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AbstractCompletion](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/abstractcompletion.md) | 63 | `declaration-track:716d71dad3fe68ae8dd90db58417c6012b8ea402c016ad2cbff2d3adb37414c9` |
| 2 | `def` | [ofComplete](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/ofcomplete.md) | 91 | `declaration-track:c9d467a65558d21bde12be7752d8b6eb4873879e29444cbbb46fb4720e553e34` |
| 3 | `theorem` | [closure_range](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/closure-range.md) | 94 | `result-track:bef8000c90c97b3d0ed498235a5291b19e74a36271bfb834d58a389a5df7c4a4` |
| 4 | `theorem` | [isDenseInducing](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/isdenseinducing.md) | 97 | `result-track:397478c17cf5d3df022d9a9764070730b9f23346adf41e1e18d76d093a6b529f` |
| 5 | `theorem` | [uniformContinuous_coe](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/uniformcontinuous-coe.md) | 100 | `result-track:7fdc341153f7956e33a9a281de9db70d1db58c9d7d705216ce9c7ddee2015e01` |
| 6 | `theorem` | [continuous_coe](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/continuous-coe.md) | 103 | `result-track:1dcad8745b871c810b27e4af08c4d8fb0a09152f1cada621c09fe24f51f4db1b` |
| 7 | `theorem` | [induction_on](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/induction-on.md) | 107 | `result-track:9d66a4a43ce733176e5ee7c64c779f8d63c1befc297de977e2b52d485e81a169` |
| 8 | `theorem` | [funext](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/funext.md) | 113 | `result-track:933fc77e178489c3b98ee617dbedc0d9addb329e09c6035ad59daf7435ef0d32` |
| 9 | `def` | [extend](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/extend.md) | 122 | `declaration-track:68c6765e1f1247ab5aff1536d86f45feab6fc610058f8436be380826e6d429ff` |
| 10 | `theorem` | [extend_def](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/extend-def.md) | 128 | `result-track:1b329b436821496cb713e9c30cf05e80f1743555c17bafc66f3059da1a80dd94` |
| 11 | `theorem` | [extend_coe](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/extend-coe.md) | 131 | `result-track:e7d6c661cd85f2ac0414e6c97b5b4d7291e16bee2240f8a59543751546b277ba` |
| 12 | `theorem` | [uniformContinuous_extend](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/uniformcontinuous-extend.md) | 137 | `result-track:d55fd5abf9d62a37760e9c1aaf445bf685bf2b8bb64099d7fa9c355f2af2f46a` |
| 13 | `theorem` | [continuous_extend](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/continuous-extend.md) | 145 | `result-track:903ad99d03e5f202d4d068c3b9cdefcb2d9567fa11e3f3f28be8301bf74f73c3` |
| 14 | `theorem` | [extend_unique](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/extend-unique.md) | 150 | `result-track:5d2e884064efef542c5b3fcdc920f9bb62f24c15caeeead6d40803647573ba3f` |
| 15 | `theorem` | [extend_comp_coe](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/extend-comp-coe.md) | 156 | `result-track:6b41e6a9f3d018ceee13f0580853fa815d822b5fff14113a78e6b5224fe4c3c4` |
| 16 | `def` | [map](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/map-source-edition-2.md) | 172 | `declaration-track:ed121cf266c20ad9b4618c1fc0baf6ed0bc498addb7bab8a1c0ad95a26e889b5` |
| 17 | `theorem` | [uniformContinuous_map](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/uniformcontinuous-map.md) | 179 | `result-track:7be3a66e6ea44bfc92000db02c1c516559df9ade03a0c3a9a39c1b92b29d9dad` |
| 18 | `theorem` | [continuous_map](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/continuous-map-source-edition-2.md) | 183 | `result-track:f8bcc57752361ae978f375cc0d45e55b8d4cc04b1b0408f0fd0d88128fe0bea2` |
| 19 | `theorem` | [map_coe](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/map-coe.md) | 189 | `result-track:8d1b1e46da068e1e624075ca4df8c08f1038f7efaf4d414c9a14eee3082b8627` |
| 20 | `theorem` | [map_unique](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/map-unique.md) | 192 | `result-track:bf5b86d5c01771f7f48dad173ee725f1500306d145b4fb3dda52b2e28e8bddac` |
| 21 | `theorem` | [map_id](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/map-id.md) | 201 | `result-track:546f5bcb34081670537d2eb2c4769818d74a7081e9c5da8f2f75fe6f83bea8c5` |
| 22 | `theorem` | [extend_map](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/extend-map.md) | 206 | `result-track:fd65605005c693e6c145f8204535607917309f85a569a8eb1dcad183d3611710` |
| 23 | `theorem` | [map_comp](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/map-comp.md) | 216 | `result-track:eb31a7720a46a5992ff0d87c6a8d7af0ee29b1281329a0ef5fd39ce12677091c` |
| 24 | `def` | [compare](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/compare.md) | 228 | `declaration-track:236ed8b300d67ec90eb13b039ee70555d568e8cfb64f425cf50e5659a7377ccd` |
| 25 | `theorem` | [uniformContinuous_compare](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/uniformcontinuous-compare.md) | 231 | `result-track:1bc4edb33f70c46d225acd3cc277f0dfc455ba83543e321301919a3536543e3d` |
| 26 | `theorem` | [compare_coe](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/compare-coe.md) | 234 | `result-track:ef2cfa42f6955477f1ce24d34623cd2b5cea347b44a93f5266e6a4c07a192bbb` |
| 27 | `theorem` | [inverse_compare](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/inverse-compare.md) | 237 | `result-track:1dd306a39e712ec2b9d831a00e6b5883b1cfc64345f883b254d3766bd26978db` |
| 28 | `def` | [compareEquiv](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/compareequiv.md) | 246 | `declaration-track:1f200b92c9564b1e2c9eb2387fd5b853b4b93b67c5f486e3113705eb864ec8d1` |
| 29 | `theorem` | [uniformContinuous_compareEquiv](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/uniformcontinuous-compareequiv.md) | 254 | `result-track:e607f567e4df776f1775a04fb55d7d45ad4eec5b375e468ceed322be266d2459` |
| 30 | `theorem` | [uniformContinuous_compareEquiv_symm](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/uniformcontinuous-compareequiv-symm.md) | 257 | `result-track:f167d6515878b07394d2073d86ee89033fbc0322c6ddd7697410ce571afa0b4b` |
| 31 | `theorem` | [compare_comp_eq_compare](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/compare-comp-eq-compare.md) | 281 | `result-track:421cf429d0725c89fb7cc0a1f4689af01f209f3c94ed42943239b741127622be` |
| 32 | `def` | [prod](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/prod.md) | 309 | `declaration-track:deb3e9adae2f8c2acd4e7178f4b59b1215b4cf5a8a080930fffccbdba38546b3` |
| 33 | `def` | [extend₂](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/extend-source-edition-2.md) | 333 | `declaration-track:c0764c4639d0985ec7df337e03242bc5981830191b08d7deb868810177409c62` |
| 34 | `theorem` | [extension₂_coe_coe](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/extension-coe-coe.md) | 340 | `result-track:151ebc4a918443244e038c82cbb2f4160123404dedf3849dc29079ea73b66a9a` |
| 35 | `theorem` | [uniformContinuous_extension₂](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/uniformcontinuous-extension.md) | 350 | `result-track:615cc81f2878ff990026cd6f61f1412a330666cd6f5c1c00ef28f98fe7ded6a8` |
| 36 | `def` | [map₂](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/map.md) | 373 | `declaration-track:7b645799a4724886e876c3ef4137794f3a1a62aabd090d393ef8a7d0e9dcb5e6` |
| 37 | `theorem` | [uniformContinuous_map₂](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/uniformcontinuous-map-source-edition-2.md) | 376 | `result-track:ed1cb75195155717efe5849418b77f202dbcf2d7790bf3b3dce16a9387b7d280` |
| 38 | `theorem` | [continuous_map₂](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/continuous-map.md) | 379 | `result-track:972a39204321dd5bfd8c8aa0c035440b28f9e9bd3a5d658a593d7c62626974f1` |
| 39 | `theorem` | [map₂_coe_coe](../../../../GeneralTopology/AbstractCompletionNamespacedIsDenseInducing.lean/declarations/map-coe-coe.md) | 384 | `result-track:ce1e0a88e8e73654cde2a492520a6a7fb361cb930075ac4c92e0fec6b985154c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3cbdf2955045b714427a9a04524f539fabf26a49925f0d1195e9f79e22710e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant88fac4801e7636f3fcf1d1480d89fe5aea6aaa8e21546505674028e0319d30a3.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant88fac4801e7636f3fcf1d1480d89fe5aea6aaa8e21546505674028e0319d30a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
