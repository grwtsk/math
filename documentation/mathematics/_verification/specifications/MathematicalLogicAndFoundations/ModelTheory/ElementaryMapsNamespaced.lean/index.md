# Verification target: Elementary Maps Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "350079adaa196f86cb6993ad5f45e6cfc98bbd23",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant4c70fb8f5099768c17bed2688eb90ae47f1e8c04f9837d28c26be043f9114412.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `350079adaa196f86cb6993ad5f45e6cfc98bbd23`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant4c70fb8f5099768c17bed2688eb90ae47f1e8c04f9837d28c26be043f9114412.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant4c70fb8f5099768c17bed2688eb90ae47f1e8c04f9837d28c26be043f9114412.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Substructures` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ElementaryEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/elementaryembedding.md) | 49 | `declaration-track:4012939e35d48436bce931be813c7d06f59c0712697165d37083168a48505d2b` |
| 2 | `instance` | [instFunLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/instfunlike.md) | 70 | `declaration-track:cb13a05456ef985f3931804fa70c0cea79bf1b2ef7534f701ca37c5d01ad50ab` |
| 3 | `theorem` | [map_boundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/map-boundedformula.md) | 80 | `result-track:feaf269591b2e8821e2f0bd051c490d2593198bdcb7c44bf62748263d15fe637` |
| 4 | `theorem` | [map_formula](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/map-formula.md) | 99 | `result-track:a01a0cce8e607439b4d1e092e0d5769c5597e1727a8ecb8cecb8cc1a701e9538` |
| 5 | `theorem` | [map_sentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/map-sentence.md) | 103 | `result-track:0bd4b4f97a2243eb2f29c8c38b6198d3423dbb72e6ff181b74f45229fa76097e` |
| 6 | `theorem` | [theory_model_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/theory-model-iff.md) | 106 | `result-track:34abae145dfb5bb4e25b5f993edc28c1266f1749f105b89265593936deebf85d` |
| 7 | `theorem` | [elementarilyEquivalent](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/elementarilyequivalent.md) | 109 | `result-track:572f8eb4f7029b6129ffc8df5532ca2c3046d56e1c0634e17887049e9887e5eb` |
| 8 | `theorem` | [injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/injective.md) | 113 | `result-track:ec228ddaf486d1f70b741e8f8bfca507915bdddbebce44268f007690505768ee` |
| 9 | `instance` | [embeddingLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/embeddinglike.md) | 122 | `declaration-track:694d2d4faff00aab04a9fb757865b262003ad4e0af8c6e1cff49c05a7dbced39` |
| 10 | `theorem` | [map_fun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/map-fun.md) | 126 | `result-track:965e49cd3d2a3634d69db2d98a3ef14de3fc51c042d3f5a6c01beb221385cf52` |
| 11 | `theorem` | [map_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/map-rel.md) | 133 | `result-track:d4f664761bad4214c6a2871a6b0061b5d7d4e474d760c9e9d5ec57b6ae71ca37` |
| 12 | `instance` | [strongHomClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/stronghomclass.md) | 138 | `declaration-track:d7c2712aaedfa6340c79c19418d2a6193c793810c50081eeaee40fc6dfd419ba` |
| 13 | `theorem` | [map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/map-constants.md) | 143 | `result-track:c379263335d5594be2328132e6479f1c7ec549f00a3919cfe7e185dde9b5c1ea` |
| 14 | `def` | [toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/toembedding.md) | 147 | `declaration-track:fd733c0e7a068c6270215953e81c66852cc20cf581711d94c2fb4f5c8ac4c7ba` |
| 15 | `def` | [toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/tohom.md) | 154 | `declaration-track:b10bd89fa6a6913b5f1c76dfc31cfdfac51ee42ef8a72586d7eeb0296d735343` |
| 16 | `theorem` | [toEmbedding_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/toembedding-tohom.md) | 160 | `result-track:31d314f88f4a5b21c4ae2af70abc4c54cdb6aa00d096f652b7d38618a7b8dca4` |
| 17 | `theorem` | [coe_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/coe-tohom.md) | 164 | `result-track:ddaac260a166ef771e47946d84499aba62a79fab0dac896179261e8facab249f` |
| 18 | `theorem` | [coe_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/coe-toembedding.md) | 168 | `result-track:297dc468fac1f6c995329f8954093896adf75a165f7f03c59150d33dda25d9e2` |
| 19 | `theorem` | [coe_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/coe-injective.md) | 171 | `result-track:7e22939606ff0b4c70f4022adce977a79d40f3208c017643cc8143a704743739` |
| 20 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/ext.md) | 175 | `result-track:fe1af3ed3857b8792dd9b3c8c34686f46e6524505c28260659c1ef5eac1ca7c1` |
| 21 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/refl.md) | 182 | `declaration-track:7115be4961fa12c288f450c2a2d51dd458e5dd698015a2b6e8deca209aaf6592` |
| 22 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/instance.md) | 186 | `declaration-track:77fde4ba086521badc1f66fa1ea220494ddb05c84e984732896ddd33a5ba1c88` |
| 23 | `theorem` | [refl_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/refl-apply.md) | 190 | `result-track:d6cb33756df7ac2bbe36a76872304995888fa0c46e803a9082817425d65fe8a3` |
| 24 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/comp.md) | 195 | `declaration-track:91c23fdd05d5be1a218e4048337108fb2337cae439506454d26754fe548de212` |
| 25 | `theorem` | [comp_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/comp-apply.md) | 203 | `result-track:8385db25574ae8cbe44079cfd92c322b8f65907763fd3f63da24c0f4a962c271` |
| 26 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/comp-assoc.md) | 207 | `result-track:c7152221abffbe36a2b5908be882e4e6662fa430f45d843b01e86fb59a3735a1` |
| 27 | `abbrev` | [elementaryDiagram](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/elementarydiagram.md) | 217 | `declaration-track:6e0877da9962e58cb4119306293b2dd21e62bbdf8a54d42e26637947c432fad2` |
| 28 | `def` | [ElementaryEmbedding.ofModelsElementaryDiagram](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/elementaryembedding-ofmodelselementarydiagram.md) | 223 | `declaration-track:551644332333538ca42d02648e7efbd34416a9ed096e45ebc65b0cd9f9423f3b` |
| 29 | `theorem` | [isElementary_of_exists](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/iselementary-of-exists.md) | 244 | `result-track:7cb6e210fb787b5414d975c97908cdb86dff5735165414360e6786cb5ee9fdd1` |
| 30 | `def` | [toElementaryEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/toelementaryembedding.md) | 278 | `declaration-track:59647cfc9c3d722e97ae6caa8bac189894c3b26d57dae9f21eff134675c69e11` |
| 31 | `def` | [toElementaryEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/toelementaryembedding-source-edition-2.md) | 291 | `declaration-track:b6d902cb7f5cd64278fc27629a9a4f5dba32b9cc5c66eaa89b8296a7fcc40f55` |
| 32 | `theorem` | [toElementaryEmbedding_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/toelementaryembedding-toembedding.md) | 295 | `result-track:6e1f35811138cc6e7c5501a938783df6b39945a326fd5612445771ddd04b81a1` |
| 33 | `theorem` | [coe_toElementaryEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/coe-toelementaryembedding.md) | 300 | `result-track:292ae9cd554bf692de8efe8b6a516e8d0bbee5c1337ea3cb396aad4fd7daa43a` |
| 34 | `theorem` | [realize_term_substructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMapsNamespaced.lean/declarations/realize-term-substructure.md) | 307 | `result-track:5447c00ba68a98c70b75e5aedde9aea89d0df84dc0fa7a3e9f81cb4fdf58bf00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4b2161ecf55d30821d5ff9f897b569bf600d4e560d422f47141b3252c653e5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant4c70fb8f5099768c17bed2688eb90ae47f1e8c04f9837d28c26be043f9114412.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant4c70fb8f5099768c17bed2688eb90ae47f1e8c04f9837d28c26be043f9114412.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
