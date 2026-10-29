# Verification target: Free Group Nielsen Schreier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32d8df1b593dd34b5981914d428e9e2fa1e94ca4",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant85f1715dd6f2c9245a2271d9becb01c68b3398248b40ea947a9e39c4dd087c93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32d8df1b593dd34b5981914d428e9e2fa1e94ca4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant85f1715dd6f2c9245a2271d9becb01c68b3398248b40ea947a9e39c4dd087c93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant85f1715dd6f2c9245a2271d9becb01c68b3398248b40ea947a9e39c4dd087c93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Action` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Arborescence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.ConnectedComponent` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeGroup.IsFreeGroup` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFreeGroupoid.Generators](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/isfreegroupoid-generators.md) | 63 | `declaration-track:1201cdbf881a49118634fbb135b138122778f328e9614624a9bda36a70f9358c` |
| 2 | `class` | [IsFreeGroupoid](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/isfreegroupoid.md) | 75 | `declaration-track:1ec95be4ae0aad3649128514bd03f58eeac1d681ce694386918ead9824f4f201` |
| 3 | `theorem` | [ext_functor](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/ext-functor.md) | 91 | `result-track:a4bbbf16c4e532e303b684bb07a90975461b68a7ac120d1f79eccfc498c10779` |
| 4 | `instance` | [actionGroupoidIsFree](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/actiongroupoidisfree.md) | 106 | `declaration-track:ae4768c0a822bf2e38a441f95560d6123b48e974a1fa1fdbdbf1466012c03cc4` |
| 5 | `def` | [root'](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/root.md) | 153 | `declaration-track:7dcf86c422c4ce9d4781953e16063ed97afb1ebfdd9d829c2ae1a5ad2e45d8d9` |
| 6 | `def` | [homOfPath](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/homofpath.md) | 160 | `declaration-track:70305a13939a5a14a8fee99eebe0486db5ba1e59979bde1bbc9494723ec75dca` |
| 7 | `def` | [treeHom](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/treehom.md) | 165 | `declaration-track:da29cb87aa2e177aff041d4b791be85867d6a78606307a64c28d85b879cdf6c0` |
| 8 | `theorem` | [treeHom_eq](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/treehom-eq.md) | 169 | `result-track:1a7b7ff25cbf81906fc3f296ab210178483d4eb55334c77152bbf3f46b6a392e` |
| 9 | `theorem` | [treeHom_root](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/treehom-root.md) | 173 | `result-track:9e0048a7547da2f57520f75d7089088b85d44345c331d5ba05beb64a558a7519` |
| 10 | `def` | [loopOfHom](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/loopofhom.md) | 179 | `declaration-track:c8d26485082ed7f7187559a11d8cb5fea0dce1e30df982f0494f1f1c8187f884` |
| 11 | `theorem` | [loopOfHom_eq_id](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/loopofhom-eq-id.md) | 183 | `result-track:d875f490317b73db30b8685fe1437eb485312984431911b7700f0dcbd4488566` |
| 12 | `def` | [functorOfMonoidHom](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/functorofmonoidhom.md) | 195 | `declaration-track:0b158b6134a897004ca1792bcbb5b6264d544e14a514c70df3bde5332540b2ac` |
| 13 | `lemma` | [endIsFree](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/endisfree.md) | 212 | `result-track:49d41b7ef50dbaa173b5f877c1147bb6a49a15b692f0ccc76474deaa5b041b0c` |
| 14 | `def` | [symgen](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/symgen.md) | 257 | `declaration-track:0dda12bde041f30dd0ba0d8b10a15b1cff125043c8e9826a8a380a3afb2d285d` |
| 15 | `theorem` | [path_nonempty_of_hom](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/path-nonempty-of-hom.md) | 263 | `result-track:cdd7fc10fd6f45484f84d9aca125b22986159c6b21dba2cbc7c7d50d9351f483` |
| 16 | `instance` | [generators_connected](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/generators-connected.md) | 279 | `declaration-track:db840a92e5b048aaaef1bbc719e0d3b52ae9e386dc56ef718159489a949546a4` |
| 17 | `instance` | [endIsFreeOfConnectedFree](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/endisfreeofconnectedfree.md) | 285 | `declaration-track:0a00aafdf97a08de409b301942dc7ee22c0012b86c9b8b8ecb50bab364e53de7` |
| 18 | `instance` | [subgroupIsFreeOfIsFree](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreier.lean/declarations/subgroupisfreeofisfree.md) | 293 | `declaration-track:2afea639188c05913cd31e1f79c94b4021eafe746f23e6d798d031a2cbeb45ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1dcd0efaf7b8b1c957829504951d8952256c384747dfe4e554e2eb24fd7ee8c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant85f1715dd6f2c9245a2271d9becb01c68b3398248b40ea947a9e39c4dd087c93.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant85f1715dd6f2c9245a2271d9becb01c68b3398248b40ea947a9e39c4dd087c93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
