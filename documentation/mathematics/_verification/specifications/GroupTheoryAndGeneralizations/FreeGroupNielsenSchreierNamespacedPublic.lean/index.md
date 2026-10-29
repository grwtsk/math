# Verification target: Free Group Nielsen Schreier Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71621bf15a90d24e7c6700738b893c4b2bc473b8",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71621bf15a90d24e7c6700738b893c4b2bc473b8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFreeGroupoid.Generators](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/isfreegroupoid-generators.md) | 73 | `declaration-track:cd7ef856556b516011c128650031e5f5a4d27bbe40a93cda16ed51bd56667146` |
| 2 | `class` | [IsFreeGroupoid](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/isfreegroupoid.md) | 85 | `declaration-track:ee35b4f74ee5aba5173a3564982a7756b9f0a6161d335ae403111f74f35089b6` |
| 3 | `theorem` | [ext_functor](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/ext-functor.md) | 101 | `result-track:623316044dbf90523a1720bbe52cfee8ba59dddc766969dce5e1b3f9c62e7b5e` |
| 4 | `instance` | [actionGroupoidIsFree](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/actiongroupoidisfree.md) | 114 | `declaration-track:5f45f9adfaaed2ffffce5124bec794aba5c14dd02637d553b45dce9b0002ef17` |
| 5 | `def` | [root'](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/root.md) | 168 | `declaration-track:4a83dc38cfdca8d2ff14c5d0e95cb9517fa5e6ccfad49a04477510dd5e25ac6e` |
| 6 | `def` | [homOfPath](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/homofpath.md) | 177 | `declaration-track:e18538d369bd1331002016fdc3a4fc46a53ccdfcdab4c1dcaa0055a225122b29` |
| 7 | `def` | [treeHom](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/treehom.md) | 185 | `declaration-track:a1da131362dfa3810f774983c25daa361cfcb6d2c0c9be1a0ff779bc191c1dfd` |
| 8 | `theorem` | [treeHom_eq](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/treehom-eq.md) | 190 | `result-track:60920c767bebd05b03ce6afec1952f89273b8cdcd65cf75b4272d5099d0f308a` |
| 9 | `theorem` | [treeHom_root](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/treehom-root.md) | 196 | `result-track:539d6d312820071da71df55a94425a5f747245f0e1edc24260986fccde9bda9d` |
| 10 | `def` | [loopOfHom](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/loopofhom.md) | 204 | `declaration-track:bc3a1561943ac53b38b4c9c169d1d4dd99294761ca06d73719df9b8618e75442` |
| 11 | `theorem` | [loopOfHom_eq_id](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/loopofhom-eq-id.md) | 211 | `result-track:55d1ae37189b47e1870257d0085ff27964e7fefa923e4a67d10fc7a5b11d64b2` |
| 12 | `def` | [functorOfMonoidHom](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/functorofmonoidhom.md) | 225 | `declaration-track:fba37ea44c07f6fb6eafefd79f37ffbe70452efb8f6cf06e41111d82ef4f8963` |
| 13 | `lemma` | [endIsFree](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/endisfree.md) | 245 | `result-track:a3ff4ac6a24dac0d7ad7cb6870d7f6643a7fa3242014cefdc2015ea34b24ab7c` |
| 14 | `def` | [symgen](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/symgen.md) | 289 | `declaration-track:290215a833253481ecfa731e0619290886b94f30ca3e5ce0a7c511ef04ca5e17` |
| 15 | `theorem` | [path_nonempty_of_hom](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/path-nonempty-of-hom.md) | 296 | `result-track:fe3c494817025b94394ed079314ce06f5da1841423e50f5baa46131976e46353` |
| 16 | `instance` | [generators_connected](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/generators-connected.md) | 314 | `declaration-track:30f16a07751d08ffc3fca5961bd55589e8e0a2e2edde42e7616249c1ac4eabcb` |
| 17 | `instance` | [endIsFreeOfConnectedFree](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/endisfreeofconnectedfree.md) | 320 | `declaration-track:cedfcff5aa8cc630170b1184508a966b8557b00f0fc0480d876d26063050d73d` |
| 18 | `instance` | [subgroupIsFreeOfIsFree](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierNamespacedPublic.lean/declarations/subgroupisfreeofisfree.md) | 329 | `declaration-track:46918e3d0a4d41e1635dbff2f1c2824a8d8d5c34dc39117144fbf1ad6d9f4fb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=733c0e5ada857b2e809a4e1b888af809b92052a0607a41227386d817b96bec99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
