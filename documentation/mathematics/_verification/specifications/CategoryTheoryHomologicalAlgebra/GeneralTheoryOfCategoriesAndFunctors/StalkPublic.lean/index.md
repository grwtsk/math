# Verification target: Stalk Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7ff927896957f258c81699645dfad13d76f10e0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variantf49dddf048987d219b1d7ec14e7460ce1af3771ed28e2fa58e46b19502f28853.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StalkPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StalkPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7ff927896957f258c81699645dfad13d76f10e0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variantf49dddf048987d219b1d7ec14e7460ce1af3771ed28e2fa58e46b19502f28853.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variantf49dddf048987d219b1d7ec14e7460ce1af3771ed28e2fa58e46b19502f28853.lean.json)

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
| 1 | `def` | [colimit.smul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StalkPublic.lean/declarations/colimit-smul.md) | 41 | `declaration-track:b812871c39b334848626638fa19df458daa3c813e7e7003bc1b5623085c1844e` |
| 2 | `abbrev` | [filteredColimitsModule](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StalkPublic.lean/declarations/filteredcolimitsmodule.md) | 62 | `declaration-track:8bb3ae98fda5b72d53b5f5dfa85e1d2ed556f816830b2f376cd640544d523b76` |
| 3 | `abbrev` | [IsColimit.module](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StalkPublic.lean/declarations/iscolimit-module.md) | 122 | `declaration-track:ca97edcbbb108da7932d8cc1dfe74fe472382b9fb57352ddbe0fae9c5a8c0e4d` |
| 4 | `lemma` | [IsColimit.ι_smul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StalkPublic.lean/declarations/iscolimit-smul.md) | 134 | `result-track:a9b3eb1e7f02a8fa5d5a02bfa8cd05319182f290907326d1e0050aef290558a8` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StalkPublic.lean/declarations/instance.md) | 165 | `declaration-track:1b2b8e27fbf11cb7a30c5f93b42b8485f9c3c0542ecdf68ebdf7c79fe038561f` |
| 6 | `lemma` | [germ_ringCat_smul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StalkPublic.lean/declarations/germ-ringcat-smul.md) | 174 | `result-track:3b18cedc361b693dd2d411c9f1e55d2f9b361dfe3f05cf3ec2f6cd2a60a9dc01` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StalkPublic.lean/declarations/instance-source-edition-2.md) | 192 | `declaration-track:fc8d472ae249d4733e3aa752b22117c71d59d1b50d0e1b908d9c58604b3ef44f` |
| 8 | `lemma` | [germ_smul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StalkPublic.lean/declarations/germ-smul.md) | 203 | `result-track:260bf03451ed252e82c52787d126abe57edaecf00ee707866d32e190de9d049e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6835d91e28fbce8d6402d26567f9d46b04829e8f8e8caddca391e93c4fb64aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variantf49dddf048987d219b1d7ec14e7460ce1af3771ed28e2fa58e46b19502f28853.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variantf49dddf048987d219b1d7ec14e7460ce1af3771ed28e2fa58e46b19502f28853.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
