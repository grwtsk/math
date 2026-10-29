# Verification target: Sheaves Functors Map Diagram

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17093c431f9b8ebbb2a2ed27dedac54b841b1f74",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SheavesFunctorsMapDiagram.lean/index.md) · [Full source](../../../../GeneralTopology/SheavesFunctorsMapDiagram.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17093c431f9b8ebbb2a2ed27dedac54b841b1f74`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.SheafCondition.PairwiseIntersections` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_diagram](../../../../GeneralTopology/SheavesFunctorsMapDiagram.lean/declarations/map-diagram.md) | 42 | `result-track:31b07ab1461a18d382acb32714455170f46090330a06dfde2078025db8db0a9e` |
| 2 | `theorem` | [mapCocone](../../../../GeneralTopology/SheavesFunctorsMapDiagram.lean/declarations/mapcocone.md) | 53 | `result-track:c2ab1aeef445cad58c8be59e1c5db5f107bb816ab6492a154de6f4eb39ffa61e` |
| 3 | `theorem` | [pushforward_sheaf_of_sheaf](../../../../GeneralTopology/SheavesFunctorsMapDiagram.lean/declarations/pushforward-sheaf-of-sheaf.md) | 63 | `result-track:5fa6b0f1b091f1889f7ed1208163882830ac56d1c10aace15c13ce40b596f4ed` |
| 4 | `theorem` | [pushforward_sheaf_of_sheaf](../../../../GeneralTopology/SheavesFunctorsMapDiagram.lean/declarations/pushforward-sheaf-of-sheaf-source-edition-2.md) | 82 | `result-track:d125aa4c7754d15cc8569a8a9e7d287b4f16cf7b6bddac4356ec0177ed6cbfda` |
| 5 | `def` | [pushforward](../../../../GeneralTopology/SheavesFunctorsMapDiagram.lean/declarations/pushforward.md) | 90 | `declaration-track:eaca5078ca538b83402239cd1f05b13b0ed653b4bfcdfaf900cea52549b3d08c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c92ddadd12c4dfe537038d0c8d83f74939472e591c430c80fb4355e8da02d42c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
