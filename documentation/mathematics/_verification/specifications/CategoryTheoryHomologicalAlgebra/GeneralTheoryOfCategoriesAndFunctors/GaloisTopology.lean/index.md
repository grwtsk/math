# Verification target: Galois Topology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0894b48571e413247e1e9d8c0a8f51d1def46940",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variantdb6bf75c2dd445fc72114037ea2aa9cda354bec8631310b7d1b501d0d99c0446.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0894b48571e413247e1e9d8c0a8f51d1def46940`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variantdb6bf75c2dd445fc72114037ea2aa9cda354bec8631310b7d1b501d0d99c0446.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variantdb6bf75c2dd445fc72114037ea2aa9cda354bec8631310b7d1b501d0d99c0446.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Galois.Prorepresentability` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ContinuousMonoidHom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [autEmbedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/autembedding.md) | 39 | `declaration-track:5a9afbcb119f3be99092707c21303ca0e2bed7ae57e2bef8731add97469c9d08` |
| 2 | `lemma` | [autEmbedding_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/autembedding-apply.md) | 43 | `result-track:83b2f838e42a0b6ab2bf9897a05990adb905f15b8f169a01643fb33dc09811dd` |
| 3 | `lemma` | [autEmbedding_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/autembedding-injective.md) | 46 | `result-track:14548ca033d3b04a6ad49a149314f0f8e84cac4e52f1a8b05ebdcf532be8743d` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/instance-source-edition-5.md) | 53 | `declaration-track:883081f093c2cd85740e1940c94b116dacc2fde50971205e7ae69424de5c612d` |
| 5 | `lemma` | [obj_discreteTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/obj-discretetopology.md) | 56 | `result-track:17c5489e3271607d311f85c6fd5a035acaa4d0d2fb815c5fe006118a59e0fa6b` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/instance.md) | 59 | `declaration-track:04757ae22f72b59f3459967eb59929a9d19940335c84acf477e483a6a817efab` |
| 7 | `lemma` | [aut_discreteTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/aut-discretetopology.md) | 62 | `result-track:40729d00fa9dafa709a394efd51bd077ecf950841470d2fe522fb8b1f726462f` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/instance-source-edition-9.md) | 65 | `declaration-track:e46f5b64349e1a06381854b55c4386d029395700a8a0bba1e5cf11ce73ef6252` |
| 9 | `lemma` | [autEmbedding_range](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/autembedding-range.md) | 70 | `result-track:a945a0206a5a1767b7643cd2046d6c1a34c21ce047b5228b7a4d20f9f94e600c` |
| 10 | `lemma` | [autEmbedding_range_isClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/autembedding-range-isclosed.md) | 80 | `result-track:b71d67cb33357efdb35a2d056365a34986ef96fa470341f0f5fbf4d9825f082a` |
| 11 | `lemma` | [autEmbedding_isClosedEmbedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/autembedding-isclosedembedding.md) | 86 | `result-track:d5a36e89a1efa9dc1dca36914df435a9717f238f9c8fd6793b7692b302df6058` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/instance-source-edition-11.md) | 91 | `declaration-track:e894c56f76e598ec4d33496767f68a92538f3cc6fa5bb18415c6f7d6a1536241` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/instance-source-edition-4.md) | 93 | `declaration-track:4d0900877e9d6a6134c4e92f84b6ca4d14c99ec6e380cc3776016ffd75d947cf` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/instance-source-edition-8.md) | 96 | `declaration-track:c4e1f431936ad53dbdf56172a3658ce4b45a911c0019996a3a6813a50c0fb8cd` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/instance-source-edition-2.md) | 100 | `declaration-track:2164931605adcc85abbf7f77feb5351511316dd11d361a6b2744b9304bf5ca6a` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/instance-source-edition-3.md) | 103 | `declaration-track:2802cabd90367cdcf407dacbb28b15db0f87693e904a7f90a5fbe66ffa787dd0` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/instance-source-edition-6.md) | 106 | `declaration-track:8ebdfde44ad5948ab8e7373327df73ea72e37b9698c30a57d4ee00189eb5032d` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/instance-source-edition-10.md) | 108 | `declaration-track:e73233b206863a51af664aca9398aec6dc8602968adfbf3cd122599bf34e1fb9` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/instance-source-edition-7.md) | 110 | `declaration-track:bc21908c4ec19c79afaa009c3ee3c04920ed6afe37c41d5ea296d91ffe854ede` |
| 20 | `instance` | [continuousSMul_aut_fiber](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/continuoussmul-aut-fiber.md) | 114 | `declaration-track:6c546107e65f62356506f1dd2dc4cdc7e17c8a5838c9bff86fca582965aed3d5` |
| 21 | `lemma` | [continuous_mapAut_whiskeringRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/continuous-mapaut-whiskeringright.md) | 124 | `result-track:2072cc025f4f62fd2f4d9f90acae729e360c4889eee7908b7ac23aa6a38faee7` |
| 22 | `def` | [autEquivAutWhiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/autequivautwhiskerright.md) | 134 | `declaration-track:9a0dfc140396eb2e9477728108afd9d7f730f32b47f15157ad1aa327c99a2ff7` |
| 23 | `lemma` | [exists_set_ker_evaluation_subset_of_isOpen](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/exists-set-ker-evaluation-subset-of-isopen.md) | 151 | `result-track:7779523e754cba61797ae28c76e2c3cf65ad820d7a9ba72cbe9ab91a0045ffd5` |
| 24 | `lemma` | [nhds_one_has_basis_stabilizers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopology.lean/declarations/nhds-one-has-basis-stabilizers.md) | 179 | `result-track:d06b8608028dc3b326007b343a38eb7b0a433b81c327716c1efb8da101104d93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f587a76509c6df2405e637e94638a997938b0dd1f51eb536114415efa8b29268 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variantdb6bf75c2dd445fc72114037ea2aa9cda354bec8631310b7d1b501d0d99c0446.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Topology/Variantdb6bf75c2dd445fc72114037ea2aa9cda354bec8631310b7d1b501d0d99c0446.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
