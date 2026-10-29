# Verification target: Triangulated Spectral Object Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a70a7e43b10658f52750010d47b0b1ff6bec02a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a70a7e43b10658f52750010d47b0b1ff6bec02a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean.json)

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
| 1 | `structure` | [SpectralObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/spectralobject.md) | 46 | `declaration-track:9a23dbf4414499616e1a7e174a4a5ef9e208d8cb6b83042884f4c65eff3b876a` |
| 2 | `def` | [ω₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/anonymous.md) | 62 | `declaration-track:65bdcbdc28d2a24af740c40ef060eb8987bfb262b293e7b5cb37d269082840c3` |
| 3 | `lemma` | [ω₂_obj_distinguished](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/obj-distinguished.md) | 66 | `result-track:3db26e83e46adddf5e47d7fc025a61e2ca6ddaca231e6472ba9c5ef9306ffd9c` |
| 4 | `def` | [δ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/anonymous-source-edition-2.md) | 77 | `declaration-track:c09685d1b48b6521e149a65298b1b226e91a059df2bd450ced9b74cabd83fe01` |
| 5 | `lemma` | [δ_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/naturality.md) | 81 | `result-track:9119f449bd566ab87fbc068ff194d957de3121a173d29a1d20b59bb737f8788e` |
| 6 | `def` | [triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/triangle.md) | 94 | `declaration-track:6bf6ce38ff0ca4dba351d7b30b9e17b3ddaebbf90213ca6b4650c30559a7fe51` |
| 7 | `lemma` | [triangle_distinguished](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/triangle-distinguished.md) | 98 | `result-track:d161e9bd6deb2dad76599cfc7ef4a69da05e05d3a7dfb7634aaf21c46fa2cfd6` |
| 8 | `def` | [mapTriangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/maptriangle.md) | 109 | `declaration-track:1934fd34a60a8fe54c56d887aaa683eb572e00cca70d890fbe0e4870e31d2fad` |
| 9 | `def` | [precomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/precomp.md) | 141 | `declaration-track:f1204b4e13700d76b7230e407a32b870868ab1263e0e50ea556a5d088c1b150b` |
| 10 | `def` | [mapTriangulatedFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/maptriangulatedfunctor.md) | 187 | `declaration-track:95da0e68e92fdda8ef4b8e9f189c30b8d73b22325b6bb32eff31a2ab6b53741a` |
| 11 | `lemma` | [mapTriangulatedFunctor_δ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/maptriangulatedfunctor-source-edition-2.md) | 195 | `result-track:ed1e47bb026ba1d47e34140005c7714bdc1048f5e4b5689ef631b65a7c26a891` |
| 12 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/hom.md) | 202 | `declaration-track:92c995722d0ad30fc82f42aa130b44a8ab7e6a5c4acd3c52c2393c99e8fb61fb` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/instance.md) | 211 | `declaration-track:5bf747a502f5601d0db828dcf48ca1fb27a6844ee5d3b04c62309c7f0b6cc942` |
| 14 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/hom-ext.md) | 221 | `result-track:25727a8f9cec9ef6be87ac5a97866ac121f6f1cba5f28c4a8197b5ceec6d3450` |
| 15 | `def` | [triangleMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/trianglemap.md) | 233 | `declaration-track:3083bc4adcaa915b287e48c08bb14c52aa4bcb31f01c0b2dad5de18b6fd612c5` |
| 16 | `def` | [mapHomologicalFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/maphomologicalfunctor.md) | 248 | `declaration-track:b8fcf5f234aa5759f60a2b0697dc121d2110f074fd0e341ddcd87c211634374f` |
| 17 | `lemma` | [mapHomologicalFunctor_δ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/maphomologicalfunctor-source-edition-2.md) | 270 | `result-track:c1fb9010e6c449b9e5b7f2e06e09602faab663a5410672428ccc3a5ac078656a` |
| 18 | `def` | [mapHomologicalFunctorFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/maphomologicalfunctorfunctor.md) | 279 | `declaration-track:4d37dcddf16e776ccb6d971df44f3e74173484ef8165d73eb81b10a77b4682b4` |
| 19 | `def` | [mapTriangulatedSpectralObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedSpectralObjectPublic.lean/declarations/maptriangulatedspectralobject.md) | 302 | `declaration-track:5b8fd4deda174515efacdb9a1aa9313e75e4486c825fa58c0e7d373f3ad3ffe5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dbca24b54402013334a29dfa243b075412a92b30c0d0f3e80a4cde7b36c0c95e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
