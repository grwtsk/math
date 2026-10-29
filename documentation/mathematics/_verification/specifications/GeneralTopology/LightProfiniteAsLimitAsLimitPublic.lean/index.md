# Verification target: Light Profinite As Limit As Limit Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2902c050aac1f640c6ad53bb02a8999dc766e3aa",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant78e66adfc52250eb0a53824dce8f032fbca45d119f7db6489e8471c4f0f4eb7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/index.md) · [Full source](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2902c050aac1f640c6ad53bb02a8999dc766e3aa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant78e66adfc52250eb0a53824dce8f032fbca45d119f7db6489e8471c4f0f4eb7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant78e66adfc52250eb0a53824dce8f032fbca45d119f7db6489e8471c4f0f4eb7b.lean.json)

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
| 1 | `abbrev` | [fintypeDiagram](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/fintypediagram.md) | 34 | `declaration-track:0c7985ae0b0294a99e69cc8db94791f2c93d38c0d73054608251a4d72c40dc7b` |
| 2 | `abbrev` | [diagram](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/diagram.md) | 37 | `declaration-track:42fc5426775e59a775a8509036ed924d625e32d1e574d87058d0388f7ee90f64` |
| 3 | `def` | [asLimitConeAux](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/aslimitconeaux.md) | 43 | `declaration-track:b5ed18e274dfc28c4a3d106e525b19c517529fef23a0345ec606d3cff11b5176` |
| 4 | `def` | [isoMapCone](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/isomapcone.md) | 49 | `declaration-track:768ff5889f706a2bb4577f6eb4965df4c9b710eb00d2db2b76cec8b987c92909` |
| 5 | `def` | [asLimitAux](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/aslimitaux.md) | 58 | `declaration-track:e1132ef887b5f7d28a689dd44731c606cec04e38fb203547f1102aa1d2423038` |
| 6 | `def` | [asLimitCone](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/aslimitcone.md) | 64 | `declaration-track:aa918af4369b53fd6e774408286f89b4a6e78bee3df69f51cd03b5f0803ddb67` |
| 7 | `def` | [asLimit](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/aslimit.md) | 72 | `declaration-track:49eecedd9e73c68b8a7268a6856f3c65f24ff9abdedc157022a5234908a61e32` |
| 8 | `def` | [lim](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/lim.md) | 77 | `declaration-track:0569204788bdc223ed2e50273f8ac83e590135ef527751dcd9194db3adfe3584` |
| 9 | `abbrev` | [proj](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/proj.md) | 80 | `declaration-track:d532d225ac29b3b468bd0ac72f4a899465f9dd916e682e8fb838b32bb5d43435` |
| 10 | `lemma` | [lightToProfinite_map_proj_eq](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/lighttoprofinite-map-proj-eq.md) | 82 | `result-track:06e9f69c798a43d66faa25ecbb283dd07ba4a8a1310402ccb57204ea69f360ce` |
| 11 | `lemma` | [proj_surjective](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/proj-surjective.md) | 89 | `result-track:b805f1432cefd70bbad257485574b00fe256515544d01e1db71728b56294b595` |
| 12 | `abbrev` | [component](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/component.md) | 95 | `declaration-track:f9e92883149f1d2476ab9b988ea658985f2c97ebed3daad00c7552a3e3bb7032` |
| 13 | `abbrev` | [transitionMap](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/transitionmap.md) | 98 | `declaration-track:ab5a61166bc15f2d43210ed5ae824a535ffb8fb12540a9d8121fc025cce59a15` |
| 14 | `abbrev` | [transitionMapLE](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/transitionmaple.md) | 102 | `declaration-track:ec9d36216859c319b1f93f0eb92dc5509594379fcda117986ce641935cfed745` |
| 15 | `lemma` | [proj_comp_transitionMap](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/proj-comp-transitionmap-source-edition-2.md) | 105 | `result-track:880eb2f784361d5ad7f72b8ce9dfbbdde0488f9d5990d3c38e9f89df435aedd6` |
| 16 | `lemma` | [proj_comp_transitionMap'](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/proj-comp-transitionmap.md) | 109 | `result-track:4ed3c9775434f4dfcc84506ca3560bfb5fef155e28ccfb0ae350338833f7679c` |
| 17 | `lemma` | [proj_comp_transitionMapLE](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/proj-comp-transitionmaple.md) | 113 | `result-track:5263616943f7fdf27e4e114b515f924ce06d348b933c59197a1a58e5231c0a24` |
| 18 | `lemma` | [proj_comp_transitionMapLE'](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/proj-comp-transitionmaple-source-edition-2.md) | 117 | `result-track:64f89f6221335c7c7d2fac55c512c74e4ca5c300000088d08d6ac464d98918ed` |
| 19 | `lemma` | [surjective_transitionMap](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/surjective-transitionmap.md) | 122 | `result-track:afe727a1162c9eec2352ba6ec671f88d7bc96867ed086f4be7a79c3839c81e52` |
| 20 | `lemma` | [surjective_transitionMapLE](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitPublic.lean/declarations/surjective-transitionmaple.md) | 126 | `result-track:dc1118737308c5dedc5e036dd00a48aad139bbbf197d69a6db6055b0e32ea081` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a058fa97836e527277346db2f73cc4e1b69190c72f151dff9fdaa51e0c3d5c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant78e66adfc52250eb0a53824dce8f032fbca45d119f7db6489e8471c4f0f4eb7b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant78e66adfc52250eb0a53824dce8f032fbca45d119f7db6489e8471c4f0f4eb7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
