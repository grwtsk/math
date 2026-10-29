# Verification target: Hom Complex Cohomology Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d14fdf3f8cc93ac6d9b85766d515c6af7cea64e5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomComplexCohomology/Variant5cbc464e52f57b0c1330f4930251314a98c781b5663d9e4f41a3453fa56dbf8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d14fdf3f8cc93ac6d9b85766d515c6af7cea64e5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomComplexCohomology/Variant5cbc464e52f57b0c1330f4930251314a98c781b5663d9e4f41a3453fa56dbf8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomComplexCohomology/Variant5cbc464e52f57b0c1330f4930251314a98c781b5663d9e4f41a3453fa56dbf8d.lean.json)

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
| 1 | `def` | [coboundaries](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/coboundaries.md) | 45 | `declaration-track:489c5d0759f9e41d38f829860cf3f3c07945525b553796e6ace8f9cafa97866f` |
| 2 | `lemma` | [mem_coboundaries_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/mem-coboundaries-iff.md) | 57 | `result-track:bcd3f184a76ad6814f7b369acddf15e74e829b29646e2bdc45a8345c0c0078be` |
| 3 | `def` | [CohomologyClass](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/cohomologyclass.md) | 64 | `declaration-track:350c0c310ee05945cd5d50e48ea07cd3c9c436628bd9e5065d0ef29d29bcd8cf` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/instance.md) | 66 | `declaration-track:17b146b17cabdb8f95604917752213f5744b8ba6064dda8d776e2f75ec856b1e` |
| 5 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/mk.md) | 74 | `declaration-track:13385eb290f7a44ef74c13037c3e62e006559c609827c1216045527dde070b5c` |
| 6 | `lemma` | [mk_surjective](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/mk-surjective.md) | 77 | `result-track:ef2b6e27ad20cdbc05c45975fbaa00fa3bba8aef6d0381eaef97f7c9d1eb3c18` |
| 7 | `lemma` | [mk_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/mk-zero.md) | 82 | `result-track:d2c4cf44af1b79b22ff60cb740560660de7bc0904df14b3ec217f541f9cff0ea` |
| 8 | `lemma` | [mk_add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/mk-add.md) | 86 | `result-track:aa44790cff385204b97b06d8b384f14475218ee0d2251cb5bddc6726ac59eff2` |
| 9 | `lemma` | [mk_sub](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/mk-sub.md) | 90 | `result-track:6d5b02d9e484cb51ac3b818015044327bbfd4e63f0a09d809301452e91d9d090` |
| 10 | `lemma` | [mk_neg](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/mk-neg.md) | 94 | `result-track:a9cd2d4d86337edc259ea66e80d62de538d9927e57cfab054b863f668fa498f6` |
| 11 | `lemma` | [mk_eq_zero_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/mk-eq-zero-iff.md) | 97 | `result-track:9affd247df363574f764622a12057148b77cbbaff0a1088fafdddb1ba97d06da` |
| 12 | `def` | [mkAddMonoidHom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/mkaddmonoidhom.md) | 104 | `declaration-track:823ab671f6eef5a8a121598766772539e6711d09dd1de23098242f3156fe7883` |
| 13 | `def` | [descAddMonoidHom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/descaddmonoidhom.md) | 115 | `declaration-track:59095438096c1faade0e399281a8612c591a5bf2c72cab2416dc90575afa4fac` |
| 14 | `lemma` | [descAddMonoidHom_cohomologyClass](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/descaddmonoidhom-cohomologyclass.md) | 120 | `result-track:9b4299d69b464c202305b94dfca29cdbf45b46379ec8e5e90d5cbd14344d266c` |
| 15 | `def` | [toHom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/tohom.md) | 128 | `declaration-track:c34c2764c03bb45d6faedba8134c9360a6b9a9f2dd7297fc2df3b5e984e7e6bc` |
| 16 | `lemma` | [toHom_mk](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/tohom-mk.md) | 139 | `result-track:185cbc5d675584c563969b7f66b6a96331c152f1286c1cdd7d435ad7060abe99` |
| 17 | `lemma` | [toHom_mk_eq_zero_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/tohom-mk-eq-zero-iff.md) | 142 | `result-track:ff63d535bb5c63b199ce81aece23e9f8b48da417bd496f28a6d883fe307c6e61` |
| 18 | `lemma` | [toHom_bijective](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/tohom-bijective.md) | 157 | `result-track:0b8bceaa18f4742539a4c8cd6ed01472b661a28a338638a8c796494d274e6e26` |
| 19 | `def` | [homAddEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/homaddequiv.md) | 168 | `declaration-track:e88f6d1b4c89b77c36b79adfb8d720bf50a9767a67c06bbf973fb862d4a8089e` |
| 20 | `def` | [leftHomologyData'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/lefthomologydata-source-edition-2.md) | 180 | `declaration-track:f17a5e5e461922a037f4488f70a4de615ebae45d9f4a7659b9e626da1e1a2210` |
| 21 | `def` | [leftHomologyData](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/lefthomologydata.md) | 209 | `declaration-track:4247a7cf77f91f2dcaa410d086fe019141c2add97082987dbfaacd37b07410c5` |
| 22 | `def` | [homologyAddEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexCohomologyPublic.lean/declarations/homologyaddequiv.md) | 214 | `declaration-track:d37a18d645a923cbef9d76ffbbe1489e4d0ef5b47c1b9519432ac63b00d57d2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=553a659bc7fc41d2d9438c14694bc5cce99217e00d5d907f55102a9291255558 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomComplexCohomology/Variant5cbc464e52f57b0c1330f4930251314a98c781b5663d9e4f41a3453fa56dbf8d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/HomComplexCohomology/Variant5cbc464e52f57b0c1330f4930251314a98c781b5663d9e4f41a3453fa56dbf8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
