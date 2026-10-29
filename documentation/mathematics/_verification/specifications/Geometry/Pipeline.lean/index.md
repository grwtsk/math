# Verification target: Pipeline

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b910250487337b4665be1a1db1b4aa8def7bac77",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Pipeline/Variant7f763ef8e0f38555dbc28c814adcd4406561f3e744f15af2784b3f284921ccd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/Pipeline.lean/index.md) · [Full source](../../../../Geometry/Pipeline.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b910250487337b4665be1a1db1b4aa8def7bac77`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Pipeline/Variant7f763ef8e0f38555dbc28c814adcd4406561f3e744f15af2784b3f284921ccd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Pipeline/Variant7f763ef8e0f38555dbc28c814adcd4406561f3e744f15af2784b3f284921ccd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Authority` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.AssuranceLevel` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Dependency` — import line 3; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Evidence` — import line 4; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Ownership` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProgressivePipelineStage](../../../../Geometry/Pipeline.lean/declarations/progressivepipelinestage.md) | 31 | `declaration-track:666a1381e96ec8f2edac54ccea6c6a0fae5e0743f0568f37348ba4fe11c7d1b5` |
| 2 | `def` | [assuranceLevel](../../../../Geometry/Pipeline.lean/declarations/assurancelevel.md) | 42 | `declaration-track:0534bf6511bcdeb0f46e5430ef8d1fe2a467ba5c6e2cb9344c63a5ec84fafac2` |
| 3 | `inductive` | [Depends](../../../../Geometry/Pipeline.lean/declarations/depends-source-edition-2.md) | 50 | `declaration-track:f20ce439ecec67963182754c5f81aa7edd18e0aa9fcaea41ddd981f78e195571` |
| 4 | `theorem` | [assuranceLevel_monotone_on_edge](../../../../Geometry/Pipeline.lean/declarations/assurancelevel-monotone-on-edge.md) | 56 | `result-track:51eee04c9d4ba690b6b1d0da1509ba4e5eaab5a15a5666b2350138343f3dcc8f` |
| 5 | `theorem` | [interactiveDevelopment_level](../../../../Geometry/Pipeline.lean/declarations/interactivedevelopment-level.md) | 64 | `result-track:2b16a57515a98980c8dc07bd1afaf4c555946fa3d480bc822e1644f1d3ab7b11` |
| 6 | `inductive` | [PipelineStage](../../../../Geometry/Pipeline.lean/declarations/pipelinestage.md) | 71 | `declaration-track:8e61018d6020707673a983f41be9806a6e77ce51402e61aaa8e6a64db836581f` |
| 7 | `structure` | [PipelineState](../../../../Geometry/Pipeline.lean/declarations/pipelinestate.md) | 83 | `declaration-track:7d9b35e97b36321e8ba4344390dcf7638c502d53dd767ccb20b3f8a39ae6bedd` |
| 8 | `structure` | [StageSpec](../../../../Geometry/Pipeline.lean/declarations/stagespec.md) | 92 | `declaration-track:5eabf5395db4b101e508866aa0f9c989451eeaa8e75c5b967322528de84f63a5` |
| 9 | `inductive` | [CanonicalStageDepends](../../../../Geometry/Pipeline.lean/declarations/canonicalstagedepends.md) | 106 | `declaration-track:b1ff101caf6cfbdfce1e1e1a5a7e35703b55fb34f61f4e002e7751bad642ec6b` |
| 10 | `def` | [canonicalStageRank](../../../../Geometry/Pipeline.lean/declarations/canonicalstagerank.md) | 123 | `declaration-track:c6b9fd5b82d4559ae37f0459a8f0572b8d5673c3a243289e6a4efc2b3d61a700` |
| 11 | `def` | [canonicalStageGraph](../../../../Geometry/Pipeline.lean/declarations/canonicalstagegraph.md) | 134 | `declaration-track:46b74df09ec6b27a6dea84e6f15e00ebe5f4c5c080a99a270c6547d623d62e7d` |
| 12 | `def` | [canonicalStageTransition](../../../../Geometry/Pipeline.lean/declarations/canonicalstagetransition.md) | 146 | `declaration-track:b56bbb21d8ebfec2a20c9e29991b02a50dd35a36b6676c25e8fd8da0c7cb1264` |
| 13 | `def` | [canonicalStageSpec](../../../../Geometry/Pipeline.lean/declarations/canonicalstagespec.md) | 174 | `declaration-track:44516dd6b91d564911115bf64b67e69ba40a48bb8a9f38eab700764597fa060d` |
| 14 | `theorem` | [canonicalStageTransition_satisfies_spec](../../../../Geometry/Pipeline.lean/declarations/canonicalstagetransition-satisfies-spec.md) | 266 | `result-track:d9833990fc1c6058a6f070e5dfd3a974694aad9fff381ccc261e34d23616aa1f` |
| 15 | `theorem` | [canonicalStageDependency_mem_spec](../../../../Geometry/Pipeline.lean/declarations/canonicalstagedependency-mem-spec.md) | 274 | `result-track:2c2e7b80678dba85cdc397bf397d3e29e224fff6e070b3d2520e900ca8d16352` |
| 16 | `theorem` | [collectEvidence_source_execution_boundary](../../../../Geometry/Pipeline.lean/declarations/collectevidence-source-execution-boundary.md) | 281 | `result-track:c18de7d97cd1b2085888fcd79ed2ed5c94dc2159a40f906d136b1f113a5daa2d` |
| 17 | `theorem` | [classifyClaims_source_execution_boundary](../../../../Geometry/Pipeline.lean/declarations/classifyclaims-source-execution-boundary.md) | 288 | `result-track:95d1c26d6f21dd2c570d7d3b45a925a2860513865e79237461668be2765920d8` |
| 18 | `theorem` | [rustOwnedStage_source_not_certified](../../../../Geometry/Pipeline.lean/declarations/rustownedstage-source-not-certified.md) | 295 | `result-track:db78078f321e2445cfd2034f60b191394ee10528fec4ca86edfd31a41dfd03d2` |
| 19 | `theorem` | [canonicalStageGraph_wellFounded](../../../../Geometry/Pipeline.lean/declarations/canonicalstagegraph-wellfounded.md) | 302 | `result-track:f0ca4b75224bcfd4c3a225a2f9f304e484573640ff536d4faffc89377d5dfa21` |
| 20 | `theorem` | [canonicalStageGraph_acyclic](../../../../Geometry/Pipeline.lean/declarations/canonicalstagegraph-acyclic.md) | 308 | `result-track:f5f762765a166d7fc098e179947e2e601f324c562ad21cdaea8ed2b1948312d7` |
| 21 | `inductive` | [OptionalAnalysisStage](../../../../Geometry/Pipeline.lean/declarations/optionalanalysisstage.md) | 322 | `declaration-track:877ca7c7830bcdee55305ac6fc838f80d6c36137c5c1ae64493c46a97d716b25` |
| 22 | `def` | [developerDefault](../../../../Geometry/Pipeline.lean/declarations/developerdefault.md) | 334 | `declaration-track:dfd30a0cbc2f7cc1e843e29b0a393091f9ec05973ce6c138c8ee74f19b2ee795` |
| 23 | `def` | [assuranceLevel](../../../../Geometry/Pipeline.lean/declarations/assurancelevel-source-edition-2.md) | 337 | `declaration-track:bd6032686eab9046e9cd2ea491b5efce1fa71c10c44a053553084c667aacd409` |
| 24 | `def` | [inputs](../../../../Geometry/Pipeline.lean/declarations/inputs.md) | 346 | `declaration-track:63ae0ed1daaf71c8fc9f3d4632e288a138690845870b9fe9460009cd57a457cd` |
| 25 | `structure` | [Spec](../../../../Geometry/Pipeline.lean/declarations/spec-source-edition-2.md) | 361 | `declaration-track:ef39c8d8205b6d6a7ab526426a7dd627ab88aa9271ad8a833ba4f19ae17d78f4` |
| 26 | `inductive` | [Depends](../../../../Geometry/Pipeline.lean/declarations/depends.md) | 375 | `declaration-track:3ac6d3fd95dae03b55742432ab6fc5b8f43b3be0636f828b2a10de0886711b52` |
| 27 | `def` | [rank](../../../../Geometry/Pipeline.lean/declarations/rank.md) | 390 | `declaration-track:07de6dd6bcb8e04942833f8796be7b97346c3ce95e58f7808b6e2117a6120401` |
| 28 | `def` | [dependencyGraph](../../../../Geometry/Pipeline.lean/declarations/dependencygraph.md) | 399 | `declaration-track:1416b829c7e8a4bf9069e1a8b83045b1a7b414a31d118e98f3dfa76084295ad4` |
| 29 | `def` | [transition](../../../../Geometry/Pipeline.lean/declarations/transition.md) | 407 | `declaration-track:03964a32fa40a4f151a8e76b26ef2b2d32028b694322a4eb8cfe027a4d06aa6d` |
| 30 | `def` | [spec](../../../../Geometry/Pipeline.lean/declarations/spec.md) | 428 | `declaration-track:c30530a56b3438b8823e2d6dd445f7607db00bbf69b153419051ac479b2e4bf9` |
| 31 | `theorem` | [transition_satisfies_spec](../../../../Geometry/Pipeline.lean/declarations/transition-satisfies-spec.md) | 510 | `result-track:fe7adb42c282e3a5c1ba833eaa4a96d39ff8ab3363400ad2042dd7d1cd3f6310` |
| 32 | `theorem` | [dependency_mem_spec](../../../../Geometry/Pipeline.lean/declarations/dependency-mem-spec.md) | 517 | `result-track:2da5da042865bfaa7ea6df3541224fc01e6efdb27cd914f6e51d778aa9efe6f5` |
| 33 | `theorem` | [assurance_monotone_on_edge](../../../../Geometry/Pipeline.lean/declarations/assurance-monotone-on-edge.md) | 524 | `result-track:50a95089e203c03e0f5631f5a3fb32e1167b1ebdf1fa3073c6bc5eda3556b661` |
| 34 | `theorem` | [dependencyGraph_wellFounded](../../../../Geometry/Pipeline.lean/declarations/dependencygraph-wellfounded.md) | 531 | `result-track:a7fa9990b5c4fe454514e5c74fdfffe51e787f3f31671f5f7db05b6f08085aca` |
| 35 | `theorem` | [dependencyGraph_acyclic](../../../../Geometry/Pipeline.lean/declarations/dependencygraph-acyclic.md) | 537 | `result-track:7e0beb54c1d89d6acdccac5beab257899444dad1629b8b03ac548489371082e7` |
| 36 | `theorem` | [source_execution_boundary](../../../../Geometry/Pipeline.lean/declarations/source-execution-boundary.md) | 542 | `result-track:3d2dfd082be743bf4f67e84d5cb25823199843dd89c312f14e8e2c844c4ddfc9` |
| 37 | `theorem` | [developerDefault_false](../../../../Geometry/Pipeline.lean/declarations/developerdefault-false.md) | 549 | `result-track:4b8b46d4ad1d1a5cdca30fe065b784b6b7e1a70ba3667b90164c06a7e27f2295` |
| 38 | `def` | [all](../../../../Geometry/Pipeline.lean/declarations/all.md) | 554 | `declaration-track:72d11a0be7752c57cf88c08515801dd81ec044ecf9dcbaf14c262f3dc2684085` |
| 39 | `theorem` | [absent_from_default_development](../../../../Geometry/Pipeline.lean/declarations/absent-from-default-development.md) | 563 | `result-track:fb38e40b9d7b0521fcd5ff6d4980b9ef82320468e8205e1a6dbeccf9f80a3560` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6b34cfdb5b03f4bc147042735b3a483d67f30daaa50b5d1b99f8eefe979fc98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Pipeline/Variant7f763ef8e0f38555dbc28c814adcd4406561f3e744f15af2784b3f284921ccd3.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Pipeline/Variant7f763ef8e0f38555dbc28c814adcd4406561f3e744f15af2784b3f284921ccd3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
