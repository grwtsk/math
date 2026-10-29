# Verification target: Abelian Comm Sq Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d545579bdbb172d6828d937b7c37b701576ddce4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant4a0462dc736ad2ef63416b8498ed214dc13a41908041ddb621f7397bc72d5c78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d545579bdbb172d6828d937b7c37b701576ddce4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant4a0462dc736ad2ef63416b8498ed214dc13a41908041ddb621f7397bc72d5c78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant4a0462dc736ad2ef63416b8498ed214dc13a41908041ddb621f7397bc72d5c78.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqPublic.lean/declarations/instance-source-edition-2.md) | 43 | `declaration-track:4ac98f9e8078874fc3102927ae9c2246d853364168a46675f9c03e15d03bc082` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqPublic.lean/declarations/instance.md) | 46 | `declaration-track:23ddecfbc44083026380e86fbfca6c14f6016c541363a07155ec7929dc44db6a` |
| 3 | `lemma` | [exact_shortComplex](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqPublic.lean/declarations/exact-shortcomplex.md) | 55 | `result-track:659b200ae1154813aa002c9292f9b694866cb210924dec16141796e5ddf4dd16` |
| 4 | `lemma` | [hom_eq_add_up_to_refinements](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqPublic.lean/declarations/hom-eq-add-up-to-refinements.md) | 72 | `result-track:aff3c83657c94d37f46dfef6fc33bce7c8b693b3a57c3dd0434994233a497a69` |
| 5 | `lemma` | [mono_of_isPullback_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqPublic.lean/declarations/mono-of-ispullback-of-mono.md) | 98 | `result-track:0de7126260ca004e6690cc72a6edd2ec536f539608782ea3db7d11755619bf7f` |
| 6 | `lemma` | [exact_shortComplex'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqPublic.lean/declarations/exact-shortcomplex-source-edition-2.md) | 119 | `result-track:c1fc1f5e459501259b03230479360599065e941f3dff3de80daa225b4235312e` |
| 7 | `lemma` | [mono_cokernel_map_of_isPullback](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqPublic.lean/declarations/mono-cokernel-map-of-ispullback.md) | 137 | `result-track:e2d879c51dea59c49f58e79ad1c805e1638c8f80a90e557ca90f48ef101194a2` |
| 8 | `lemma` | [epi_kernel_map_of_isPushout](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqPublic.lean/declarations/epi-kernel-map-of-ispushout.md) | 150 | `result-track:3d904d57e700bda8cffe160c77365176f9f914f5adc1de8801dbf4dd4caa576e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50d719d827d4cc8d9cc246940c022c44ef98622cc0000cadaa5f2ecfe47e1451 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant4a0462dc736ad2ef63416b8498ed214dc13a41908041ddb621f7397bc72d5c78.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant4a0462dc736ad2ef63416b8498ed214dc13a41908041ddb621f7397bc72d5c78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
