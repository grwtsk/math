# Verification target: Elementary Substructures

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f86a721592250495c341d0d131c507be204963f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f86a721592250495c341d0d131c507be204963f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.ElementaryMaps` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Substructure.IsElementary](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/substructure-iselementary.md) | 36 | `declaration-track:10e029ae2a156805f42edebad59aaf9445c1feb9d3230bb5ac7b5dec4cfa7219` |
| 2 | `structure` | [ElementarySubstructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/elementarysubstructure.md) | 43 | `declaration-track:1f1c96784f6830ff4e08b0276ceaaf9a91b709bed2ef689271e17993a4cbc8de` |
| 3 | `instance` | [instCoe](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/instcoe.md) | 54 | `declaration-track:5182c951b29307f77d3c3b2aa3627f48703f984e030d8328ab0b93694ebf6d94` |
| 4 | `instance` | [instSetLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/instsetlike.md) | 57 | `declaration-track:53a47e4e7b57b7a67a158d552ed8f4c01ab0783a2f88b91b597b13c524efba22` |
| 5 | `instance` | [inducedStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/inducedstructure.md) | 61 | `declaration-track:194f99cdfb05377363c492fb9d956aed06b61e0deaf6b84be8595e7a33427326` |
| 6 | `theorem` | [isElementary](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/iselementary.md) | 65 | `result-track:ef165316235ec04b1d28bb0c6822af927818c04f7f078607175faa51fe57e557` |
| 7 | `def` | [subtype](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/subtype.md) | 69 | `declaration-track:d6382ded77f9e464be2ce805c52c4df446056e598752bda0400e8ffa5ce483e0` |
| 8 | `theorem` | [subtype_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/subtype-apply.md) | 74 | `result-track:7cf56794d36c89e761d7ce970a0f193ae2f39898d0c6527ef91ffbaa9b883d49` |
| 9 | `theorem` | [subtype_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/subtype-injective.md) | 77 | `result-track:249f93484fd7544fab243afdf3fe37a175f6cdec1a316f8710f7a3fcc7cc99de` |
| 10 | `theorem` | [coe_subtype](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/coe-subtype.md) | 81 | `result-track:a536586f74f09af5e7493a311f6eda8653a8c45b62db9f7c1ef5a473cc3e4f22` |
| 11 | `instance` | [instTop](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/insttop.md) | 88 | `declaration-track:1f92fda67c4a109b4d0001f3b06bbea62d5ee2b89849e3e7a6f64103d811e7bf` |
| 12 | `instance` | [instInhabited](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/instinhabited.md) | 91 | `declaration-track:554fb7c682caf4685bf77bb182a938ac286b82f3bc741c6b70dbf8e64715f715` |
| 13 | `theorem` | [mem_top](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/mem-top.md) | 95 | `result-track:b0bff201a72d5d709b0aee81a9965f48277bdb5a24e447bd07a579d5d4b25ab1` |
| 14 | `theorem` | [coe_top](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/coe-top.md) | 99 | `result-track:ecd80ed1cba6334b4f881854599edc5bab56e400d67935c712bbe2caabb51a8c` |
| 15 | `theorem` | [realize_sentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/realize-sentence.md) | 103 | `result-track:7ca4517fcdee6392f00e3e2309fb78915b1fdf83c9a12e2a22fbf73df930f6ca` |
| 16 | `theorem` | [theory_model_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/theory-model-iff.md) | 107 | `result-track:15fbfcb3c0ea9b46bc992d54c0b71b3d513dfd926338f26316174b2794fd66bd` |
| 17 | `instance` | [theory_model](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/theory-model.md) | 110 | `declaration-track:3af7fd73c554b57460fd493a4c3d5a00719b223064194fdcf7a2c664e36e5f85` |
| 18 | `instance` | [instNonempty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/instnonempty.md) | 113 | `declaration-track:b66c0f8f96537064dc3b2b2ddc80265d7e1f6eba0fa3c842f08ff0b2070a5ef6` |
| 19 | `theorem` | [elementarilyEquivalent](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/elementarilyequivalent.md) | 116 | `result-track:fb6823622a92df6a4eb408c585b1610a6f21eb332e2a6090527882f629422383` |
| 20 | `theorem` | [isElementary_of_exists](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/iselementary-of-exists.md) | 124 | `result-track:15dce8e83d9bbf0003cc4f073a28c149f22a671d2929d2e3a535e265c00282fe` |
| 21 | `def` | [toElementarySubstructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ElementarySubstructures.lean/declarations/toelementarysubstructure.md) | 133 | `declaration-track:470133bb3793fe207eeda9365bf26c6ab98a3a772492340eaad323d9d91a798a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8171fbadb00e9c4ff1855fbb922481a8320e58239126e28bc9eabdc89500ce5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
