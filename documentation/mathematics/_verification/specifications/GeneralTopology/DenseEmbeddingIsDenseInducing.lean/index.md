# Verification target: Dense Embedding Is Dense Inducing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f53248911aebd2f41301f950b54bf30b28721a06",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/index.md) · [Full source](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f53248911aebd2f41301f950b54bf30b28721a06`.

Source path: `GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DenseEmbedding/Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bases` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsDenseInducing](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/isdenseinducing.md) | 34 | `declaration-track:9d3d2a44ade04550e8c034bdbc1309f4bfa4fa211bf8a67aa6fb2a7bd037c996` |
| 2 | `theorem` | [_root_.Dense.isDenseInducing_val](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/root-dense-isdenseinducing-val.md) | 43 | `result-track:a512798118de2e931b96b1c40ec31ae536742cdda74ed3b77b83813abbf54823` |
| 3 | `lemma` | [isInducing](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/isinducing.md) | 48 | `result-track:5ef017eef7a8ea20b26dd09751941a4b9b92a1df7c13dac9d89c4c54c6acd67d` |
| 4 | `theorem` | [nhds_eq_comap](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/nhds-eq-comap.md) | 50 | `result-track:0bb413df1c2a802fe573195736759e0a63359ea937789ac6633696f6386fbfdc` |
| 5 | `theorem` | [continuous](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/continuous.md) | 53 | `result-track:40adb5555401ef85925c2c76be1ede0bfe945abac7fe69e9d489df275f272c68` |
| 6 | `theorem` | [closure_range](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/closure-range.md) | 56 | `result-track:a84c3a735b1bd41266a5726523f7cfab59189de056ab86e28c7df248286b70cf` |
| 7 | `theorem` | [preconnectedSpace](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/preconnectedspace.md) | 59 | `result-track:3e30e821b0609aca06296e15c930f3adbb7fb7dcc9137eddb88dadadc1cf0109` |
| 8 | `theorem` | [closure_image_mem_nhds](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/closure-image-mem-nhds.md) | 63 | `result-track:cfe6d0c23c7badd901048c33593255bdacaa9855aef46eab6165edc67e4c7f87` |
| 9 | `theorem` | [dense_image](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/dense-image-source-edition-2.md) | 72 | `result-track:cf39e84c67af8caa2349d2142768dd7d971c480912520053b4603f7c2e1bb729` |
| 10 | `theorem` | [interior_compact_eq_empty](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/interior-compact-eq-empty.md) | 79 | `result-track:cdfc38a5bef49061da2a151cf1598411916ae4a5a903e352516590674e64d542` |
| 11 | `theorem` | [prodMap](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/prodmap-source-edition-2.md) | 89 | `result-track:ba0b86675010d727acfac4d0deac10e1ccb5e561d14d2d4c5db3a51c9c859dfa` |
| 12 | `theorem` | [separableSpace](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/separablespace.md) | 98 | `result-track:2ad9abe3847b0cc9c41a81017419e8381b493bb8cbb86cb0481a1714cdf4ca50` |
| 13 | `theorem` | [tendsto_comap_nhds_nhds](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/tendsto-comap-nhds-nhds.md) | 110 | `result-track:f4130ad492b24af68229d250c6b37d84b9802e8e69f8b8bbfb739c3cab73db6a` |
| 14 | `theorem` | [nhdsWithin_neBot](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/nhdswithin-nebot.md) | 119 | `result-track:e484eb5299f877f56f73cd53ed2703fedaf7d463c7db24bd53aead5b802915b1` |
| 15 | `theorem` | [comap_nhds_neBot](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/comap-nhds-nebot.md) | 122 | `result-track:03896815090e98853970565afca4c2af0e87d2e93ece3e0603ee9290d1503bdf` |
| 16 | `def` | [extend](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/extend-source-edition-2.md) | 132 | `declaration-track:bdfe9bf59713cc0e075ea9364dcf5b05519398ffba9aa62175ededbb2297f8c1` |
| 17 | `theorem` | [extend_eq_of_tendsto](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/extend-eq-of-tendsto-source-edition-2.md) | 135 | `result-track:c36a110586568508d387cff5c5bd1835ffaebe90ee0e2083a3b3968b33d9ceae` |
| 18 | `theorem` | [extend_eq_at](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/extend-eq-at-source-edition-3.md) | 140 | `result-track:e81cf2e2ccfb51956c80de9063c0fa1e3efd625f90e04d7f72d50422d4e6b2a1` |
| 19 | `theorem` | [extend_eq_at'](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/extend-eq-at-source-edition-2.md) | 144 | `result-track:ad66cf008762f86cba592e7826e431791363f44fa7899aa8fe3b4abc1c283a36` |
| 20 | `theorem` | [extend_eq](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/extend-eq.md) | 148 | `result-track:1f46a3d352e1b0a72db20c2e564a2ead7b0522d574dc8def983cb0a832f2d434` |
| 21 | `theorem` | [extend_eq'](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/extend-eq-source-edition-3.md) | 155 | `result-track:ff313120476b4203a8d7bf1fe82c5b8c46a473f9769ebfa6484e8efa7e5c9dde` |
| 22 | `theorem` | [extend_unique_at](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/extend-unique-at-source-edition-2.md) | 161 | `result-track:d10964688dc580adbb5b1fcbe756faaf584c754705ed06248cea3e4cfe577494` |
| 23 | `theorem` | [extend_unique](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/extend-unique-source-edition-2.md) | 171 | `result-track:dbd50ebec967d0d9bea3a38e05c87e3a93ebaa557a460a24a40b6c2d2248c83f` |
| 24 | `theorem` | [continuousAt_extend](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/continuousat-extend.md) | 175 | `result-track:153758e17bcd08e03d45e2108b74f9e856f261f259131a4d88ae3103a1dcd7d0` |
| 25 | `theorem` | [continuous_extend](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/continuous-extend-source-edition-2.md) | 197 | `result-track:e1938592b10680537103fcaec3dec417f8137164ab185590e83b325a1ec6de22` |
| 26 | `theorem` | [mk'](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/mk.md) | 201 | `result-track:0e80aceb8e23ac97e4bb9bbf3ddb195ba77d20f5a667d11d99f6b61290a288ff` |
| 27 | `def` | [extend](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/extend.md) | 217 | `declaration-track:2f27e6f3b2df3dba9bde51243e93b27caca55854c531ab2f5c21815e576d45f8` |
| 28 | `theorem` | [extend_eq_of_tendsto](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/extend-eq-of-tendsto.md) | 222 | `result-track:aa17e1667cdec33bcb72df17a22349f9da984353a54816c1a38f2dbf0a2548fa` |
| 29 | `theorem` | [extend_eq_at](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/extend-eq-at.md) | 226 | `result-track:190594b9e61cab2325cfa73d057b8c0d3bf4a10b4b041fdd140e931cf4bfa43a` |
| 30 | `theorem` | [extend_eq](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/extend-eq-source-edition-2.md) | 230 | `result-track:6acfa3add0e8312707b263a052d0fb28702bb8ba72d6de34d048d44df45a5e9b` |
| 31 | `theorem` | [extend_unique_at](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/extend-unique-at.md) | 234 | `result-track:6094d3416a38b3aa0a8212e01ce2161890ff0f927f4462b040c5d79aa8241ab9` |
| 32 | `theorem` | [extend_unique](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/extend-unique.md) | 239 | `result-track:6e06316c5ad3ec69bca566809946036ae37101bd856a1a86fab173309afdd81d` |
| 33 | `theorem` | [continuousAt_extend](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/continuousat-extend-source-edition-2.md) | 243 | `result-track:c84fe41653640314a571381ee7530e709211fbf3f04b46b02f121875b7353f0f` |
| 34 | `theorem` | [continuous_extend](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/continuous-extend.md) | 248 | `result-track:5019ea7dc0a1f9116e62f83607e8ffb335f9d8ed249b4ca641364050bb1d54ca` |
| 35 | `structure` | [IsDenseEmbedding](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/isdenseembedding.md) | 255 | `declaration-track:7dede70380721e4a3973eda23939632af1ec052c14999244df4127be545356d8` |
| 36 | `lemma` | [IsDenseEmbedding.mk'](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/isdenseembedding-mk.md) | 260 | `result-track:39d884a62c5d0ba83116f5b4e2c645f61eba1e86db81fd4fb0b1fc71166aa9cf` |
| 37 | `lemma` | [isDenseInducing](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/isdenseinducing-source-edition-2.md) | 272 | `result-track:d409cf57cfd2566045ce86effb9076188abfa210e608f9074d34dfd2fd802b90` |
| 38 | `theorem` | [inj_iff](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/inj-iff.md) | 274 | `result-track:f30697d60464ae9e49150df8f93563b05eee20c44becdb91b822ec5cc778c0a7` |
| 39 | `theorem` | [isEmbedding](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/isembedding.md) | 277 | `result-track:3c996559e072b0305a19cde4beaf56862b304ff465ea53308423d8edd35b87cf` |
| 40 | `theorem` | [separableSpace](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/separablespace-source-edition-2.md) | 283 | `result-track:559ed6aa6a85af1f440ab60fa8c8bd04b6e24510a246a009fecfd78aa30b4fd6` |
| 41 | `theorem` | [prodMap](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/prodmap.md) | 287 | `result-track:b4ffa897f725e1f1658d1ddf5a819cb769475ef0bd6c03c50aa5b0aa16621ec4` |
| 42 | `def` | [subtypeEmb](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/subtypeemb.md) | 294 | `declaration-track:0802c7845c6d38a1cdaa322b1deec89c6b48e49e3c7d9e9dc72c180414e6533e` |
| 43 | `theorem` | [subtype](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/subtype.md) | 298 | `result-track:a4dd66b57425de7efe0293d0fec4d3cd1d32bed4134fcc9b80aaec72fd0c52a4` |
| 44 | `theorem` | [dense_image](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/dense-image.md) | 311 | `result-track:37a0fd0a6ec1ecca334cfd26d4bad39abc525889f77f75c2230537cca7d04b23` |
| 45 | `lemma` | [id](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/id.md) | 314 | `result-track:d26a07611bde20eb4f20abf4d59e4d20a9c4e562426b1b5a1889ee5696b46c21` |
| 46 | `theorem` | [Dense.isDenseEmbedding_val](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/dense-isdenseembedding-val.md) | 319 | `result-track:784f3367e8c34d5db74e0c88f48953650ebd40e4370779a1badb924ebc282b04` |
| 47 | `theorem` | [isClosed_property](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/isclosed-property.md) | 323 | `result-track:4bee8b812d82887804ee26acb2af5caf3e1ffc5e98957b733319dc77ad6fa893` |
| 48 | `theorem` | [isClosed_property2](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/isclosed-property2.md) | 332 | `result-track:31947362a7e8022f995aeb8e3ca031148992e1d1d3e8ce065fadd05014852ad3` |
| 49 | `theorem` | [isClosed_property3](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/isclosed-property3.md) | 337 | `result-track:b567606b118caf971f580d50bee75cef1ff4f826042d49edaef1845291c3d019` |
| 50 | `theorem` | [DenseRange.induction_on](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/denserange-induction-on.md) | 345 | `result-track:1176acd21dea22c7ef6aaefc01d527575df1deb53f14479899a6ac544ca23792` |
| 51 | `theorem` | [DenseRange.induction_on₂](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/denserange-induction-on-source-edition-3.md) | 350 | `result-track:c4fc4ecbfc03d73ad0934ced408e310cf3e26402389ead589df3d7b65e2b5c94` |
| 52 | `theorem` | [DenseRange.induction_on₃](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/denserange-induction-on-source-edition-2.md) | 356 | `result-track:16e34e9b12fb1808c69738f1b3937188776037d2bad8883de7be262d420197cc` |
| 53 | `theorem` | [DenseRange.equalizer](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/denserange-equalizer.md) | 367 | `result-track:3d7fb124b62d15008c3b9cfd023e299e6034e3f848626dfd897b4d2eebafcc05` |
| 54 | `theorem` | [Filter.HasBasis.hasBasis_of_isDenseInducing](../../../../GeneralTopology/DenseEmbeddingIsDenseInducing.lean/declarations/filter-hasbasis-hasbasis-of-isdenseinducing.md) | 374 | `result-track:6dcc159540197cbd9dd3419492ed4b36c9a05d28a051b1db027adba05b40d5e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05d42698b4206f21f8e64cb7a92296745f0b4ddd638ff58b89a7bdda12514f6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/DenseEmbedding/Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
