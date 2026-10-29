# Verification target: Is Supported Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2757b419f3c9c278e2b4bce0a99b571b5f109ae",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variant40691392122e876c176da9f3c4fcbc448176bdf34615bcfbf0b3d4f00b9c304d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2757b419f3c9c278e2b4bce0a99b571b5f109ae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variant40691392122e876c176da9f3c4fcbc448176bdf34615bcfbf0b3d4f00b9c304d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variant40691392122e876c176da9f3c4fcbc448176bdf34615bcfbf0b3d4f00b9c304d.lean.json)

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
| 1 | `class` | [IsStrictlySupported](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/isstrictlysupported.md) | 52 | `declaration-track:3fe660740e5b79d447743a8d4e2b0e581dba16c9afb34f3d11beaa7c7a81f731` |
| 2 | `lemma` | [isZero_X_of_isStrictlySupported](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/iszero-x-of-isstrictlysupported.md) | 55 | `result-track:e47dbfb3bee72c59d3dc8ca2dc9b353b752688c06722f29a60886733d17f63d3` |
| 3 | `lemma` | [isStrictlySupported_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/isstrictlysupported-of-iso.md) | 62 | `result-track:a192e473342863815c3f13b15aa30a88bf690870458af817fc9a18a99ca5c11d` |
| 4 | `lemma` | [isStrictlySupported_op_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/isstrictlysupported-op-iff.md) | 67 | `result-track:4e453d743eb86996e7e8bceddbd85001a9496ea53ee6c4f62c245819ec2c3f40` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/instance.md) | 72 | `declaration-track:212b1b6259dc3d2885f5dee63c6c78b21ea2b625d91709ddf436cf836a397328` |
| 6 | `class` | [IsSupported](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/issupported.md) | 80 | `declaration-track:79ec0831148e3b05d1a567761c7d5b92cfa51f3ae0956649eb9742b38e83e155` |
| 7 | `lemma` | [exactAt_of_isSupported](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/exactat-of-issupported.md) | 83 | `result-track:b4f2efe08407c6b6edac43c2b714b4de5e1ddaf8edebf756da0d9b3a3cc6ecf2` |
| 8 | `lemma` | [isSupported_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/issupported-of-iso.md) | 89 | `result-track:f0b9e8e2978932d51d90a6304cfeaa7aca6e05c39cc76fa945f8a786b31a7908` |
| 9 | `lemma` | [isSupported_iff_of_quasiIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/issupported-iff-of-quasiiso.md) | 94 | `result-track:efa3e65074035be7297dc0527998bc3aaa2e791f5b9406a2f09c12ee25101ed7` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 99 | `declaration-track:664663996b6f539982c08a65cb0e9f4dcd1b4707d2a164e398a2fe9708644e71` |
| 11 | `lemma` | [isSupported_op_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/issupported-op-iff.md) | 105 | `result-track:44a3dbc9b28d0c299dd836e93784b132099d84a61eca23bf9ecfb5443ad372ec` |
| 12 | `structure` | [IsStrictlySupportedOutside](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/isstrictlysupportedoutside.md) | 112 | `declaration-track:444b86251cd96fe5c6b0aabfce2023220de00324cddb5dc0ad52507a8c03d7b5` |
| 13 | `lemma` | [isStrictlySupportedOutside_op_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/isstrictlysupportedoutside-op-iff.md) | 116 | `result-track:c6b570c201c058ab41322a088ef7b6751e9f6119f1fe550f88a5009064beb8c5` |
| 14 | `structure` | [IsSupportedOutside](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/issupportedoutside.md) | 122 | `declaration-track:dc3d64aeee9590752e3b06e6aea24d4186e5fb86ecca3c3e8981248f1dcf2576` |
| 15 | `lemma` | [isSupportedOutside_op_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/issupportedoutside-op-iff.md) | 126 | `result-track:e64542af55e33f1f3b16ffdd2104f1238b0b21e7c4e42d025a6bc31ab95f21a5` |
| 16 | `lemma` | [IsStrictlySupportedOutside.isSupportedOutside](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/isstrictlysupportedoutside-issupportedoutside.md) | 131 | `result-track:4f9cd850a302397c3fd01c3052e343b117d68c08da7bf442802c08e0f9f752c9` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 135 | `declaration-track:adc5d51422269a15534685051d0c52b2a3d7a8badd69db24e76fad49b17cfa00` |
| 18 | `lemma` | [isZero_iff_isStrictlySupported_and_isStrictlySupportedOutside](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/iszero-iff-isstrictlysupported-and-isstrictlysupportedoutside.md) | 138 | `result-track:73588999e6409d60ec78ca3730095887608aa181738f1321d43059254a7c5d00` |
| 19 | `instance` | [map_isStrictlySupported](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/map-isstrictlysupported.md) | 164 | `declaration-track:4a41a6ac861abce7be1bcd0b55de0fc95c260b7535b1b0b0c60a1a7fe1de47ca` |
| 20 | `lemma` | [isStrictlySupported_mapHomologicalComplex_obj_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupportedNamespacedPublic.lean/declarations/isstrictlysupported-maphomologicalcomplex-obj-iff.md) | 171 | `result-track:9afad79ae097997540ca71674cbdea80921c192940fc676059df60e21220e34a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ef773a077027ed3ed5ea371e8e0ca1d9f1adbccee6c5f6c0594a5af93f43fc2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variant40691392122e876c176da9f3c4fcbc448176bdf34615bcfbf0b3d4f00b9c304d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variant40691392122e876c176da9f3c4fcbc448176bdf34615bcfbf0b3d4f00b9c304d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
