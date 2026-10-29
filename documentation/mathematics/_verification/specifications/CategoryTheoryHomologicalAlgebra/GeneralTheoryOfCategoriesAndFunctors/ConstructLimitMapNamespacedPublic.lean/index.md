# Verification target: Construct Limit Map Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c458c6d88c1f12663fa0a99f8eddecff3dc6c814",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructLimitMapNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructLimitMapNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c458c6d88c1f12663fa0a99f8eddecff3dc6c814`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean.json)

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
| 1 | `abbrev` | [left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructLimitMapNamespacedPublic.lean/declarations/left.md) | 43 | `declaration-track:3a45b71c40bcc100dc72a2a5213b20a5528a72acf612024ee2e4dd70a01319a9` |
| 2 | `abbrev` | [right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructLimitMapNamespacedPublic.lean/declarations/right.md) | 46 | `declaration-track:46cb14d405bcde4c56a3885259457ca87ce3a8027d1305b067167fdf38badcf0` |
| 3 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructLimitMapNamespacedPublic.lean/declarations/map.md) | 53 | `declaration-track:9ce5191b6de13f55e3bb16786140532a1350d03026a813f7dcfe0c30d8a8494d` |
| 4 | `lemma` | [isCofiltered_costructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructLimitMapNamespacedPublic.lean/declarations/iscofiltered-costructuredarrow.md) | 62 | `result-track:3cf662b2b05f78e1bf6a6e41d168a39aa1909f0e237954fd50b6d5fce7709a9b` |
| 5 | `lemma` | [initial_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructLimitMapNamespacedPublic.lean/declarations/initial-snd.md) | 72 | `result-track:13e3f589d2cebf28c83f858a7417519a3d71b9a2fa9165abf29631c531e36905` |
| 6 | `lemma` | [Limits.exists_eq_isLimitMap_of_preservesColimit_yoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructLimitMapNamespacedPublic.lean/declarations/limits-exists-eq-islimitmap-of-preservescolimit-yoneda.md) | 86 | `result-track:204ed443aaa2914c7609c39005b4e1aef603603887470d04a93e45c6a6f83897` |
| 7 | `lemma` | [Limits.exists_eq_isColimitMap_of_preservesColimit_coyoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructLimitMapNamespacedPublic.lean/declarations/limits-exists-eq-iscolimitmap-of-preservescolimit-coyoneda.md) | 109 | `result-track:a054ea7a9d23cc156988b1740cd6415adca168efc75279f2488b75a921a9f8aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1d22f9b884b9257440d95fb4e9f267c7fcf45f3781210e161ff770d33d1d943 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
