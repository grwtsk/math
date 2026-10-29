# Verification target: Elementary Maps

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f98d552aa27155bc912aa8ac21693f627e596eef",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant67de0c36f3c3623363a2179ae53eba19c252bf974aa36e7c4ea1ca85b4e3ee33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f98d552aa27155bc912aa8ac21693f627e596eef`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant67de0c36f3c3623363a2179ae53eba19c252bf974aa36e7c4ea1ca85b4e3ee33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant67de0c36f3c3623363a2179ae53eba19c252bf974aa36e7c4ea1ca85b4e3ee33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Substructures` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ElementaryEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/elementaryembedding.md) | 41 | `declaration-track:629ea25e79fcc3febe408d270d6204097234ea7b47736aaf82047f012cc18169` |
| 2 | `instance` | [instFunLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/instfunlike.md) | 62 | `declaration-track:8ce166a828c8063865c3e9e9921ea535976d03eb0d04471015e3f772577049d1` |
| 3 | `theorem` | [map_boundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/map-boundedformula.md) | 72 | `result-track:c2975776d8a91d9010afa311a0f4c5fd6138e4d66a2e2b9c56e985c684d494ba` |
| 4 | `theorem` | [map_formula](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/map-formula.md) | 91 | `result-track:7799e1d53380ec7dc6110bb0b44a69d1fd4d2ed444380ff7a1e9bd50cf026036` |
| 5 | `theorem` | [map_sentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/map-sentence.md) | 95 | `result-track:e1a5b1944f1107350f963234abdbaec6c0a66e2b29527f5d0d84a09ccc7dd3ac` |
| 6 | `theorem` | [theory_model_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/theory-model-iff.md) | 98 | `result-track:1600084c51f1c9fcd6c3eac08b5627b4162e8f95cc9e2caf0a26d156f1294b6b` |
| 7 | `theorem` | [elementarilyEquivalent](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/elementarilyequivalent.md) | 101 | `result-track:a0c1f601d05660c3aa685799b1d4a062cd209a420ed89122e5e1b633b2e83a02` |
| 8 | `theorem` | [injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/injective.md) | 105 | `result-track:01ee602ab7e141507925835cce2eebdc267b2c56cba2fde97c32c8af027c85d3` |
| 9 | `instance` | [embeddingLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/embeddinglike.md) | 114 | `declaration-track:c9d1b00719ea246347ef62d61d24f2a2fd51e5fba7cc45925581ec1ef7bb50d6` |
| 10 | `theorem` | [map_fun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/map-fun.md) | 118 | `result-track:bf78b68b3e4b49440a947695e62da50437b0fa6076f0288c6895afb07cf84393` |
| 11 | `theorem` | [map_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/map-rel.md) | 125 | `result-track:357aeed7eb66ce5c559c516407ea414e99928ae64567d8e4c581b77991d40e10` |
| 12 | `instance` | [strongHomClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/stronghomclass.md) | 130 | `declaration-track:3d39a5ceb218a100405fbb4c0df71254a896c8fa0e5eb093b3b8f8e66d42993d` |
| 13 | `theorem` | [map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/map-constants.md) | 135 | `result-track:0c6e7ff59ca4a0b440a6601fb95928f0929b503b9e2df6f7a8a9c1498b8775b4` |
| 14 | `def` | [toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/toembedding.md) | 139 | `declaration-track:9fed5b6a6d4b66df3c54a862b1a9ed1df5f7079aa7023cb3d07d1ae927a4ecb0` |
| 15 | `def` | [toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/tohom.md) | 146 | `declaration-track:d63516527d8298ce72a6db50ae3b990a191134bbdc0082fbad7235db487b61c2` |
| 16 | `theorem` | [toEmbedding_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/toembedding-tohom.md) | 152 | `result-track:13aa5a5bb9b5e787c24f8c89cde559648dd45710734aefaccf60aa27760486f0` |
| 17 | `theorem` | [coe_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/coe-tohom.md) | 156 | `result-track:71155bfd97e8e992d5a950f903401ae8a564e0bfb5841f91d86698cae52d000b` |
| 18 | `theorem` | [coe_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/coe-toembedding.md) | 160 | `result-track:3ceb5134d3e90c6445a271792bf4e2ae2e95f9bd7610aaadef26551c664d8b66` |
| 19 | `theorem` | [coe_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/coe-injective.md) | 163 | `result-track:1c16fc8ccc3665e9d035e673edf6644f4c37dea2100f3625875834b0ccc2148f` |
| 20 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/ext.md) | 167 | `result-track:3988389e0faff420a755bbb8c8c7f29ff3900e7d36f1681f77fb7394e738a1ce` |
| 21 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/refl.md) | 174 | `declaration-track:97cbf1890e0a542ae92030681c2407f6cc8a705136a9ee102a38fbaac8c2fd46` |
| 22 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/instance.md) | 178 | `declaration-track:befd0fdaa55e8343b96f00b854ee44dc313e1bfa4f8682885922d1976141a9c4` |
| 23 | `theorem` | [refl_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/refl-apply.md) | 182 | `result-track:59f92db67bccf75d97facbb9a328e818b1efc7b4248e40e3e9fcc1457e0a60c5` |
| 24 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/comp.md) | 187 | `declaration-track:8a7beb092b8e431e035768daab26bdf77ed048d60fc6f42ac898f2f691736dbd` |
| 25 | `theorem` | [comp_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/comp-apply.md) | 195 | `result-track:529d1eb2a7c13ccfb70d22a2e62abe3a0c4c092286f44a2c3e51930cfa88a829` |
| 26 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/comp-assoc.md) | 199 | `result-track:d32a84a547efca578893a6c54d13dd0e296e4954d5dfa1db750765b3722eedab` |
| 27 | `abbrev` | [elementaryDiagram](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/elementarydiagram.md) | 209 | `declaration-track:0825320429b4062b8a750a57bd59cf4d5e69571af32ddd7c49f7916f9d124e45` |
| 28 | `def` | [ElementaryEmbedding.ofModelsElementaryDiagram](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/elementaryembedding-ofmodelselementarydiagram.md) | 215 | `declaration-track:cd24d10e768fde32cc179fc854eb214efa1941befe3b43587ea7d51cee715ff0` |
| 29 | `theorem` | [isElementary_of_exists](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/iselementary-of-exists.md) | 236 | `result-track:ee96107dd6f84dc3e9f599c0b16f3c12747ea8076ac81982530c4395fd208728` |
| 30 | `def` | [toElementaryEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/toelementaryembedding.md) | 270 | `declaration-track:5def6d9dad622b8b6d8c47cc586a7b1ad1ffeba144bc44b76f1d365a3d87b2e1` |
| 31 | `def` | [toElementaryEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/toelementaryembedding-source-edition-2.md) | 283 | `declaration-track:61cc829131b3d2932055c662f76911fdfe69d1888f0ea48e18b4fded0c424f30` |
| 32 | `theorem` | [toElementaryEmbedding_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/toelementaryembedding-toembedding.md) | 287 | `result-track:66a14add6721e5502670187f21375880a992fed62337dcf52e8a22af4eff1313` |
| 33 | `theorem` | [coe_toElementaryEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/coe-toelementaryembedding.md) | 292 | `result-track:f27c03b03188c5be4b1cd0f2573939103217b1326098f700860ad02c9f4488e3` |
| 34 | `theorem` | [realize_term_substructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/declarations/realize-term-substructure.md) | 299 | `result-track:5833027cf971370daefba1d9e7905c12fdf83d340f80ee9e9f2f1781559a0ddd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5fd27c8c5646a8e98460804537509bdb893c4a61bdcf71fb30b54eccf701432 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant67de0c36f3c3623363a2179ae53eba19c252bf974aa36e7c4ea1ca85b4e3ee33.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant67de0c36f3c3623363a2179ae53eba19c252bf974aa36e7c4ea1ca85b4e3ee33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
