# Verification target: Group Theory Nielsen Schreier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "872fc174b133aafe54c58d262f7a3fc134162147",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant39b3fa21a3da629abb7d05550e7455d726854ef72d9c573209b772a2080fe210.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `872fc174b133aafe54c58d262f7a3fc134162147`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant39b3fa21a3da629abb7d05550e7455d726854ef72d9c573209b772a2080fe210.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant39b3fa21a3da629abb7d05550e7455d726854ef72d9c573209b772a2080fe210.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Action` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Arborescence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.ConnectedComponent` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.IsFreeGroup` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFreeGroupoid.Generators](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/isfreegroupoid-generators.md) | 68 | `declaration-track:5d76309b6cb2354f2b972ccb9060c1774d88b50f2c361f56ea20d1183aa07fc5` |
| 2 | `class` | [IsFreeGroupoid](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/isfreegroupoid.md) | 80 | `declaration-track:41a58250ebe86630baf7cd2ec047181969696b3f0021140577de0f95b242c71b` |
| 3 | `theorem` | [ext_functor](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/ext-functor.md) | 97 | `result-track:071dfefbbbf9e615086ce1cdfeed71dab240a0880e7cd820d4877f9ca34ca852` |
| 4 | `instance` | [actionGroupoidIsFree](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/actiongroupoidisfree.md) | 110 | `declaration-track:a703da7b6aab863fb24043d83852af4927765a96bb9ea1ebaabfe96e899e946a` |
| 5 | `def` | [root'](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/root.md) | 159 | `declaration-track:3ea8b09e5ce52ada0b0c3a90762ecfa67772cb0bf0c689366405eebdbaca3450` |
| 6 | `def` | [homOfPath](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/homofpath.md) | 167 | `declaration-track:6cbba0500cabac9016092aedced6422e0fed1315224000fb4f3eefb64acb9acf` |
| 7 | `def` | [treeHom](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/treehom.md) | 173 | `declaration-track:f5883ce520ca6c80347407cf4e91468108b40dafc7d7954f8ac1f6e2ac0d5616` |
| 8 | `theorem` | [treeHom_eq](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/treehom-eq.md) | 178 | `result-track:8b68b05313bb1a122b30332a247df2a2a8dc6d753a6f719cd53ff2fd249b7e81` |
| 9 | `theorem` | [treeHom_root](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/treehom-root.md) | 183 | `result-track:03d5ba94a63d9a1572b3f8b8cbad22dd3070de2ccc52a3fb972c0e75942ca950` |
| 10 | `def` | [loopOfHom](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/loopofhom.md) | 190 | `declaration-track:3aefaaead7ae7b36ed61d34d8caa8787d53471e3f3ae029bb8bd1e2860fc1d26` |
| 11 | `theorem` | [loopOfHom_eq_id](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/loopofhom-eq-id.md) | 195 | `result-track:ef77ea2dbdacdbf525664007e13628330833db45c234c513275dbb1ccdea6618` |
| 12 | `def` | [functorOfMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/functorofmonoidhom.md) | 208 | `declaration-track:aabe98a83c819e51cf3c760adcbdfe4b83f8d1f0f6d6ea4f4dfc222dd102f89a` |
| 13 | `def` | [endIsFree](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/endisfree.md) | 225 | `declaration-track:c2c17c18e1eaf3b6e44cc06f9fa0268f840d2eea1ae41abe5effd14ac15c8c79` |
| 14 | `def` | [symgen](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/symgen.md) | 268 | `declaration-track:a6b7ba2d5141f2724e0bcdd540d63e1f4d61f79b54b50b08abbbc1e7ab6f5bf0` |
| 15 | `theorem` | [path_nonempty_of_hom](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/path-nonempty-of-hom.md) | 275 | `result-track:82500a4ca035420a9e6a990fa735a6edc876831904f74f1e721fda518bf44a26` |
| 16 | `instance` | [generators_connected](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/generators-connected.md) | 292 | `declaration-track:d9dd0534000de8b0b5746288710940c06afaf33b46fdaa45013dcafdc9e00ae6` |
| 17 | `instance` | [endIsFreeOfConnectedFree](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/endisfreeofconnectedfree.md) | 299 | `declaration-track:31de08a19592126029764fa6166e7c7f43ba1338336113f28568a78f031206a3` |
| 18 | `instance` | [subgroupIsFreeOfIsFree](../../../../GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreier.lean/declarations/subgroupisfreeofisfree.md) | 307 | `declaration-track:9c0aa11ddce6d9b3ba7d8c4c682d3581c87547cfdb5b6021e22cf189905debaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4705a0ee4174dbebc4fec889caa7adc5dea2d70419d82fb8b1df19a1594b09aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant39b3fa21a3da629abb7d05550e7455d726854ef72d9c573209b772a2080fe210.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant39b3fa21a3da629abb7d05550e7455d726854ef72d9c573209b772a2080fe210.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
