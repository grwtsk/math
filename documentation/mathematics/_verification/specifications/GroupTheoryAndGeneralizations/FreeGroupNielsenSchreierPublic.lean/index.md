# Verification target: Free Group Nielsen Schreier Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7d11ddaa0aacad7ef1562ed8ab7ba8f34a3f78e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante2c5a4143e28314b73a583bf5be021a6f2bd930c5a36b7dc60900a2e07c9869e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7d11ddaa0aacad7ef1562ed8ab7ba8f34a3f78e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante2c5a4143e28314b73a583bf5be021a6f2bd930c5a36b7dc60900a2e07c9869e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante2c5a4143e28314b73a583bf5be021a6f2bd930c5a36b7dc60900a2e07c9869e.lean.json)

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
| 1 | `def` | [IsFreeGroupoid.Generators](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/isfreegroupoid-generators.md) | 65 | `declaration-track:c6ae25f07e9a4beacbce0f546cb900524e7a41ddb844272f6190e055e3c335bf` |
| 2 | `class` | [IsFreeGroupoid](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/isfreegroupoid.md) | 77 | `declaration-track:859fd7e6edb3eedf1a13f06196991f3919bacda5070a55ddc310d52efea9f680` |
| 3 | `theorem` | [ext_functor](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/ext-functor.md) | 93 | `result-track:80fe563ba0c862a03b26b32f674ed1bd2a377b1aed21340d28e063354634cc79` |
| 4 | `instance` | [actionGroupoidIsFree](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/actiongroupoidisfree.md) | 106 | `declaration-track:502eb9cac133dcb6b6d7bf7445765d9ea476e0ddd76b9520a9b7b3e9407c9436` |
| 5 | `def` | [root'](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/root.md) | 160 | `declaration-track:c298a27e9d944cb0d1fd171fc92883e220ee5b42144d2b64f247cdc83f18cd32` |
| 6 | `def` | [homOfPath](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/homofpath.md) | 169 | `declaration-track:255e0bce0f44d39a53fd94f152f156ab10faa7ea4e87b163111a73c24984cd12` |
| 7 | `def` | [treeHom](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/treehom.md) | 177 | `declaration-track:2053a2f7898177a097df0d24409e2bea85e3507d99b357ff260cafb67546af7e` |
| 8 | `theorem` | [treeHom_eq](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/treehom-eq.md) | 182 | `result-track:626246c48f39a50dedfe9196d8924aeb2926b59d75abcca8a25dad296ed296df` |
| 9 | `theorem` | [treeHom_root](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/treehom-root.md) | 188 | `result-track:6367887055d4167670f58c09747b7778c5ae3a6c0da88dd94837ad3d85c24361` |
| 10 | `def` | [loopOfHom](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/loopofhom.md) | 196 | `declaration-track:2117497b623627d476b60b10a3f0ebdc0c6d49a396b29362dcd533aae8465c0c` |
| 11 | `theorem` | [loopOfHom_eq_id](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/loopofhom-eq-id.md) | 203 | `result-track:00303c975195552c5fcd8439f18a90a046938ab8d1eddd3e324295393e4b5014` |
| 12 | `def` | [functorOfMonoidHom](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/functorofmonoidhom.md) | 217 | `declaration-track:898ad37d048f7699f32cbd66cfcddf00bfe9d20016d74c9a477541896891d71d` |
| 13 | `lemma` | [endIsFree](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/endisfree.md) | 237 | `result-track:329212305c06eab1b6a2f9510dabc9e7f1bb50da0f97b673fdac308eeedc091a` |
| 14 | `def` | [symgen](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/symgen.md) | 281 | `declaration-track:7bbb34f6570d401ae050825680e23e7e6498aaa706335a867d0ef9508e75de9b` |
| 15 | `theorem` | [path_nonempty_of_hom](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/path-nonempty-of-hom.md) | 288 | `result-track:2b4443b70cdd639cfdd5b84763fefda04eca17c8406329539e8cbf8942ee4650` |
| 16 | `instance` | [generators_connected](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/generators-connected.md) | 306 | `declaration-track:aa8b2ea410e88e188c043add8e0ebdfa9f2bc7958071636b6a8332ba7767c8e7` |
| 17 | `instance` | [endIsFreeOfConnectedFree](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/endisfreeofconnectedfree.md) | 312 | `declaration-track:5e4084da6bb9ce7c196822d689f750ce6134f43094c8c52db5d63881cee228c3` |
| 18 | `instance` | [subgroupIsFreeOfIsFree](../../../../GroupTheoryAndGeneralizations/FreeGroupNielsenSchreierPublic.lean/declarations/subgroupisfreeofisfree.md) | 321 | `declaration-track:9180fa33defcd8af62aec708e63fb277b7b21af64bd26339f9b592e380e769bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a906eff8d5635f37c4f46e68fa70975f9ed6aa7ce4af90276c11bf5805835d96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante2c5a4143e28314b73a583bf5be021a6f2bd930c5a36b7dc60900a2e07c9869e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante2c5a4143e28314b73a583bf5be021a6f2bd930c5a36b7dc60900a2e07c9869e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
