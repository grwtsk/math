# Verification target: Bool Ring Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cf42aa88f9644d20b427f34389953a031d77759",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6bec9d13c66a773397b138f16adb459b482a21dbb2122bf779ccbf310b156d9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cf42aa88f9644d20b427f34389953a031d77759`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6bec9d13c66a773397b138f16adb459b482a21dbb2122bf779ccbf310b156d9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6bec9d13c66a773397b138f16adb459b482a21dbb2122bf779ccbf310b156d9d.lean.json)

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
| 1 | `structure` | [BoolRing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/boolring.md) | 30 | `declaration-track:c214a8055bb422186e7b9b7ea35bce1a25f5784622fd187ecc7c6cd225e88d4e` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/instance.md) | 41 | `declaration-track:2c87682db8b0e0b07012123508de10a3c0cb90eb45446d6ab16d8e0653119ec1` |
| 3 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/coe-of.md) | 48 | `result-track:4412f3589646a4e7685e9dceb8bf4631cf6970087ac0fe282985c83db4c135a9` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/instance-source-edition-4.md) | 51 | `declaration-track:9867ab7c1638253f243117399bfa59fc92f1b84acb0015c14d233d13b414ce1d` |
| 5 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/hom.md) | 57 | `declaration-track:57b8413485f60d3349e7f6aa292a15b624a9d48c40ff1fb55f37fec2835fb5d9` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/instance-source-edition-5.md) | 62 | `declaration-track:bbbe5bab7865f114ffafbf62002cc82a922b73bd19891967139de457cae0d2f2` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/instance-source-edition-2.md) | 67 | `declaration-track:6d5567bd6254aeedc071597161101bbebf3e3b34db4e3a91e3509d088a3f7223` |
| 8 | `abbrev` | [Hom.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/hom-hom.md) | 72 | `declaration-track:c733c0ecb886c0e612528f16039c9b1e2f79fa56d8869af31a9afc98b0219632` |
| 9 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/ofhom.md) | 76 | `declaration-track:9e9f84ca5c6b475c71f8dfd220622cae7e146fcace66bf607efb811b810a53f8` |
| 10 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/hom-ext.md) | 80 | `result-track:db093e80987492e380ba7d733a96f69edb46bae5d84d8bd697554019645f25c9` |
| 11 | `instance` | [hasForgetToCommRing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/hasforgettocommring.md) | 83 | `declaration-track:4dfd3a4e2fd2148e63fde4488f7173e9367184b33261245a84e18df9b18cd453` |
| 12 | `def` | [Iso.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/iso-mk.md) | 90 | `declaration-track:802629a51300344bdedc8f13a40c0b473f637f13d282203dff088ae84d888e7a` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/instance-source-edition-3.md) | 101 | `declaration-track:8760ce5e227743db4f91d7d0d12c617df458a429ec6b3cdf346bc2c0b5eb8b58` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/instance-source-edition-6.md) | 106 | `declaration-track:e630efa2ae2c61d9429499a1d46e710c2eb272dd395aeff04d80cae18519111d` |
| 15 | `instance` | [BoolRing.hasForgetToBoolAlg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/boolring-hasforgettoboolalg.md) | 111 | `declaration-track:626892d20ed4d352cc403ce01fbe97bc34ffa475551b0f67424757d82c841af0` |
| 16 | `instance` | [BoolAlg.hasForgetToBoolRing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/boolalg-hasforgettoboolring.md) | 116 | `declaration-track:38f12679b81e052cb3064db47798a69bd0c287f4b0afae9901a3650ff92bf3cd` |
| 17 | `def` | [boolRingCatEquivBoolAlg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/boolringcatequivboolalg.md) | 122 | `declaration-track:6e1cfab1e563573dcdfa0c571424f37f6e2733811f2663c95c8881548fc67315` |
| 18 | `def` | [BoolRing.delabOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BoolRingPublic.lean/declarations/boolring-delabof.md) | 136 | `declaration-track:9f1b3300c51000d710a4de5ee0b333e521d8ed785f678c17bd5bc80cf7aa84a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b5849b860f7fee8131d778c0aac0e55482cad3b92882f662528a71542728b8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6bec9d13c66a773397b138f16adb459b482a21dbb2122bf779ccbf310b156d9d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6bec9d13c66a773397b138f16adb459b482a21dbb2122bf779ccbf310b156d9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
