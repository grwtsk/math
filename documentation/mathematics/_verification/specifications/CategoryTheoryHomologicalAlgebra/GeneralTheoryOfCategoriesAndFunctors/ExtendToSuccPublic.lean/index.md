# Verification target: Extend To Succ Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7426f532daafaf37fa3c5a6bc6dd6b6736eb0704",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variante670c87c64df6da5f840a3951c49c99a8ec0977f58c1c8f6dd09731b6dfb40de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7426f532daafaf37fa3c5a6bc6dd6b6736eb0704`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variante670c87c64df6da5f840a3951c49c99a8ec0977f58c1c8f6dd09731b6dfb40de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variante670c87c64df6da5f840a3951c49c99a8ec0977f58c1c8f6dd09731b6dfb40de.lean.json)

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
| 1 | `def` | [obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/obj.md) | 43 | `declaration-track:9a0c16e2aada0b1640a52d748a8b65b1eebc4946f13c737c35822523af1923f8` |
| 2 | `lemma` | [obj_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/obj-eq.md) | 46 | `result-track:4f2aeec4f9256817d388bd6eff5b96029396657aa7c0c83380ddcda4f9792994` |
| 3 | `def` | [objIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/objiso.md) | 50 | `declaration-track:22292fdd277cfa01e0076a1baeb2aeb29f62c50009c5fca8efa1043fe15db068` |
| 4 | `lemma` | [obj_succ_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/obj-succ-eq.md) | 55 | `result-track:c44b0179aad9627808eb307164f58793279dd6bc2a5f7399487672ff56d2b0a4` |
| 5 | `def` | [objSuccIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/objsucciso.md) | 59 | `declaration-track:9552b8afc0bbe7a487a863ee49812684b78286fadd4bf39c925e78160d38b604` |
| 6 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/map.md) | 66 | `declaration-track:ed708985d47ecea66c4b4ad9317b7eb1bf1d0b6418f71fb31c868a932486198a` |
| 7 | `lemma` | [map_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/map-eq.md) | 82 | `result-track:cb8326042988035a34d08cbc8d740a7726a4c1a952d11dd5afcb9a9a20844fec` |
| 8 | `lemma` | [map_self_succ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/map-self-succ.md) | 88 | `result-track:88eafa8e4982eaa96e4bfe06edee31cf98d03f50ebe7ce3b4013e7b8fb35af37` |
| 9 | `lemma` | [map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/map-id.md) | 96 | `result-track:11508e666a295d3dea5bbb14e7243d7c55402b7aecb56b5ea3abaf77116880df` |
| 10 | `lemma` | [map_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/map-comp.md) | 105 | `result-track:718d2de6ccd23648740c09d5761b31ade5dbd0c7e20296f7a434553d11d4050f` |
| 11 | `def` | [extendToSucc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/extendtosucc.md) | 127 | `declaration-track:51f02c5509da72a0285e120309a5fe0632b6aa0965666b51928acb1962d73954` |
| 12 | `lemma` | [extendToSucc_obj_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/extendtosucc-obj-eq.md) | 133 | `result-track:3fb1bdb9d29cb8750e3276171a9bcdccc7e090bc6abc436de122342dbe2fa0bc` |
| 13 | `def` | [extendToSuccObjIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/extendtosuccobjiso.md) | 138 | `declaration-track:12619670e776d0b72512fe6870b3befe8d2756aaf8cdf05130c2185da4207951` |
| 14 | `lemma` | [extendToSucc_obj_succ_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/extendtosucc-obj-succ-eq.md) | 142 | `result-track:ae7b3a35fd6addee476662ffcf0d7d786e001a8f0f00bb3f045e7188b60974e5` |
| 15 | `def` | [extendToSuccObjSuccIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/extendtosuccobjsucciso.md) | 147 | `declaration-track:02c0f93ba95020b9ac6829c4f75e39d49d1cea56092d41bd17fe5d91dcb4154d` |
| 16 | `lemma` | [extendToSuccObjIso_hom_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/extendtosuccobjiso-hom-naturality.md) | 152 | `result-track:3d14a43846755833dc47b9a722a272604763a17fe2110012d29fbfb259c44b46` |
| 17 | `def` | [extendToSuccRestrictionLEIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/extendtosuccrestrictionleiso.md) | 162 | `declaration-track:be9e031d1540e65d63b3a0ea0ebfcbedb1b78bb252663ced1db61a661ccfdcc5` |
| 18 | `lemma` | [extendToSucc_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/extendtosucc-map.md) | 168 | `result-track:6f4cd1e55fa6d5171df2b3f5807fd2acb3fab96b6d58f77368b74c19bd0c67bd` |
| 19 | `lemma` | [extendToSucc_map_le_succ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/extendtosucc-map-le-succ.md) | 175 | `result-track:f608e0c9ebdd51bfb49fb8849cf7da4e9260479a1efe2d658b473d5063e647f0` |
| 20 | `lemma` | [arrowMap_extendToSucc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/arrowmap-extendtosucc.md) | 182 | `result-track:ec361d00f7a14af0fad28c9d9c1f6edd91c1adf4d5b4c24b85990d988d3aeb9c` |
| 21 | `lemma` | [arrowSucc_extendToSucc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtendToSuccPublic.lean/declarations/arrowsucc-extendtosucc.md) | 189 | `result-track:d6dc40763789a454c5d3e922d52d4f7dcb24ef6b0584fc44201f2fe331822fe5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4b2dc501e83a68b5a88480b45481c4f7eb5ba6fc622e58c1271533c57b3848e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variante670c87c64df6da5f840a3951c49c99a8ec0977f58c1c8f6dd09731b6dfb40de.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variante670c87c64df6da5f840a3951c49c99a8ec0977f58c1c8f6dd09731b6dfb40de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
