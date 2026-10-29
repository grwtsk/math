# Verification target: Preserves Shapes Equalizers Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f46b946fbb4052e516a47f09183a0d8c22587dcf",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f46b946fbb4052e516a47f09183a0d8c22587dcf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean.json)

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
| 1 | `def` | [isLimitMapConeForkEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/islimitmapconeforkequiv.md) | 45 | `declaration-track:12cc0ea418ed8b9a4409afb2f4af5c1ca2dbea7b8aef2509d794349442825691` |
| 2 | `def` | [isLimitForkMapOfIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/islimitforkmapofislimit.md) | 52 | `declaration-track:2e145473831c1fce373e7f28db373deaaf25f91cb8d283255dcfa7fce343de54` |
| 3 | `def` | [isLimitOfIsLimitForkMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/islimitofislimitforkmap.md) | 57 | `declaration-track:6fbff4dfffe21eb1c95a6820fb45de40d6c32bd9003f270fd4b8705edb4063bb` |
| 4 | `def` | [isLimitOfHasEqualizerOfPreservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/islimitofhasequalizerofpreserveslimit.md) | 69 | `declaration-track:09946bd119196e18cc3cb116af88a7ebae395893695ef352012f742fb806d136` |
| 5 | `lemma` | [PreservesEqualizer.of_iso_comparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/preservesequalizer-of-iso-comparison.md) | 80 | `result-track:826fd3e6f2a8ddc29f52fa549ddf5c438fdc4d7e5a527aa12b40ad27c8797c9b` |
| 6 | `def` | [PreservesEqualizer.iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/preservesequalizer-iso.md) | 92 | `declaration-track:38b9665ccc8da7c2ec4a41204ccf67fd537315251e8f2ed606581e1512165895` |
| 7 | `theorem` | [PreservesEqualizer.iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/preservesequalizer-iso-hom.md) | 96 | `result-track:8dcbeac08d7f66dac2896a76eaf551852f6f3b00a8298a7024b388f370696790` |
| 8 | `theorem` | [PreservesEqualizer.iso_inv_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/preservesequalizer-iso-inv.md) | 101 | `result-track:f168c482b854c2bdf9a239daccf9f9d44d7ac2dbf00964f1818eed2c1851e0bd` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/instance-source-edition-3.md) | 107 | `declaration-track:b2ada8cfdf07e4595ddbd26660a230e5b4d351dc9ad51805cb6b764d6356eb40` |
| 10 | `def` | [isColimitMapCoconeCoforkEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/iscolimitmapcoconecoforkequiv.md) | 121 | `declaration-track:bffe4b435965dd39bdb5cc63473828e790b8632c7441fa917dfdce81e8338616` |
| 11 | `def` | [isColimitCoforkMapOfIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/iscolimitcoforkmapofiscolimit.md) | 132 | `declaration-track:ce8f0e81b35611dbbf1b9b0b45be56fe3b66fd57fb23084843d33305c2f63644` |
| 12 | `def` | [isColimitOfIsColimitCoforkMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/iscolimitofiscolimitcoforkmap.md) | 139 | `declaration-track:963cb0363216f3feeb688463e0bee7d353548b7ee784fa6cf83b4062e6879a7b` |
| 13 | `def` | [isColimitOfHasCoequalizerOfPreservesColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/iscolimitofhascoequalizerofpreservescolimit.md) | 153 | `declaration-track:33d86b58781a32762326e5db4e2800819770577b3b3619557afda1fbaa66ba20` |
| 14 | `lemma` | [of_iso_comparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/of-iso-comparison.md) | 163 | `result-track:02b891993a5c1de6c52d35d2725f251bee0da1d7642bdbd96b280ffe692857f1` |
| 15 | `def` | [PreservesCoequalizer.iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/preservescoequalizer-iso.md) | 176 | `declaration-track:331422bdc99da06f4a3f676426698e680954e2053783a0eb31f0145e0e8e2aa1` |
| 16 | `theorem` | [PreservesCoequalizer.iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/preservescoequalizer-iso-hom.md) | 181 | `result-track:743170242323a8d416a49b8794c465f42e59439745faef7a349d20d98dbdc68e` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/instance.md) | 185 | `declaration-track:29be7d2052812494951bc1e7ecceb51ca50f2756813dd463b3140caa727e5c9c` |
| 18 | `instance` | [map_π_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/map-epi.md) | 189 | `declaration-track:f459bfaf5dbfe38c81fa562dc04c752268347923c44950d6b0e2e8e9822d33d5` |
| 19 | `theorem` | [map_π_preserves_coequalizer_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/map-preserves-coequalizer-inv.md) | 197 | `result-track:4e2824431f506f065f88a3428a58b5b80db5974711e5037f7aeb1952dbdb816e` |
| 20 | `theorem` | [map_π_preserves_coequalizer_inv_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/map-preserves-coequalizer-inv-desc.md) | 204 | `result-track:1236846eedc0a4fd92242b35364b2e0bb5b9d2a1a376bca58ce6558edd472aa0` |
| 21 | `theorem` | [map_π_preserves_coequalizer_inv_colimMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/map-preserves-coequalizer-inv-colimmap.md) | 210 | `result-track:b05725fc462144d3af19cd6a1cf5503537bc92794d6bd371d5c8b0e2c18f0a3a` |
| 22 | `theorem` | [map_π_preserves_coequalizer_inv_colimMap_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/map-preserves-coequalizer-inv-colimmap-desc.md) | 220 | `result-track:64a819b4f19674c7a15a87a83f9409f3fd841c48b6b928b0ce08b09b6de22147` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/instance-source-edition-4.md) | 231 | `declaration-track:bbe24354bf7cf30887353552af4d2e02acb1ebbe1b381bd023e947a8a7323e4d` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesEqualizersPublic.lean/declarations/instance-source-edition-2.md) | 240 | `declaration-track:746afe0a26134ae384faf975765512d290c330d40543605ea18a08c8b2cb1e18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c776a0957ca4d97a0fb9866e4228cd61c86b1e1aade1393e6e834d6762c0fd02 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
