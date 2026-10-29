# Verification target: Workspace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c13c881cdfe5741395a001de6b9c4cdf454cb3fa",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Workspace/Variantac5b16f8d084df1dd4e0f124e44579bba0e1cdc76b6a7e4bc4353d12d697a432.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c13c881cdfe5741395a001de6b9c4cdf454cb3fa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Workspace/Variantac5b16f8d084df1dd4e0f124e44579bba0e1cdc76b6a7e4bc4353d12d697a432.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Workspace/Variantac5b16f8d084df1dd4e0f124e44579bba0e1cdc76b6a7e4bc4353d12d697a432.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Authority` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RelativePath](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/relativepath.md) | 18 | `declaration-track:3f9798e08120e3ec1affcb9b2e74657858706d743016801ee09fe90aad2002d1` |
| 2 | `def` | [IsBelow](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/isbelow.md) | 25 | `declaration-track:c62ceb54cfc696574972f77551f7e467373586b916c9c78dcda8dc02a75b1bc2` |
| 3 | `theorem` | [below_append](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/below-append.md) | 28 | `result-track:353f5bf9b70f38f3781934d730fd0a4e5860e01d87f65cc1eabf87a8ad08ad40` |
| 4 | `inductive` | [WorkspaceComponentKind](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/workspacecomponentkind.md) | 37 | `declaration-track:aab8da8de7e833d57aaa0cb2bc26ffb681d8f0885ec915b548443b00339a5d32` |
| 5 | `inductive` | [WorkspaceSourceStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/workspacesourcestatus.md) | 47 | `declaration-track:c02369faaac4bd1efbfd56687141b32c251fa1b83734ff3683815b6e8075d854` |
| 6 | `def` | [authorityClass](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/authorityclass.md) | 57 | `declaration-track:7f1eef897324587b452155e18be2d2293f72dfde8b336f964367976e0a5f80f4` |
| 7 | `structure` | [WorkspaceComponent](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/workspacecomponent.md) | 66 | `declaration-track:7cdd4071d2a4b34df87594776c781f4c7e935d7ee20efc76122a9add9186cfa8` |
| 8 | `structure` | [WorkspaceModel](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/workspacemodel.md) | 76 | `declaration-track:6ce4678a3022d3eccac9dcd79264f5935e8b7e349a57a217c436aa9d2a6348c5` |
| 9 | `theorem` | [every_nonLean_canonical_source_rooted](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/every-nonlean-canonical-source-rooted.md) | 106 | `result-track:e519810a1f0b47219a72b201ca55d815fa2cfdda398584bc9451b4945261d633` |
| 10 | `theorem` | [lean_root_separate](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/lean-root-separate.md) | 115 | `result-track:7d89b292596648abead8085ff30b26febb1712ffcad534727f747c8635b81d4c` |
| 11 | `theorem` | [generated_root_adapter_has_canonical_owner](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/generated-root-adapter-has-canonical-owner.md) | 121 | `result-track:5c197fb779f9d909120b4d2cfc28e5f31d820f81b8df1a5643bdbbcb93379ca2` |
| 12 | `theorem` | [generated_evidence_is_not_certified_source](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/generated-evidence-is-not-certified-source.md) | 132 | `result-track:c82addd1feb63e991cc16ca679fbbcc53b5343aed721877dfc6f3653c9d06227` |
| 13 | `theorem` | [authority_assignment_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/authority-assignment-sound.md) | 141 | `result-track:ed1ba94a98617fe826313d89646c099ced97903444c4ebc3b2623286d185e04c` |
| 14 | `theorem` | [component_is_not_kernel_trusted_base](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/component-is-not-kernel-trusted-base.md) | 149 | `result-track:bf5c2ebeb748b3da38d26b8a4032bdfbb15f7520b611e4e8e6ee9155a7bbda47` |
| 15 | `theorem` | [declarative_artifact_is_not_certified_source](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/declarative-artifact-is-not-certified-source.md) | 158 | `result-track:541d4e61284373cd43ef254dd2c60e3e348f693cfaecf72f2ab45342721d856a` |
| 16 | `def` | [continuousAssuranceRoot](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/continuousassuranceroot.md) | 170 | `declaration-track:eaa3750e7420f4c1b97384ae99a86556a97c35131d105243377b163aa9b6502c` |
| 17 | `def` | [surfaceRoot](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/surfaceroot.md) | 174 | `declaration-track:ae51edc4c01bacf7da1a0fd8de3a9c908211b86d2b374829d5a10e5a1311daa1` |
| 18 | `def` | [localDevelopmentModelComponent](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/localdevelopmentmodelcomponent.md) | 182 | `declaration-track:42d1a0b1322a9d8ccea29bff850a84fe6b4d2d9ec002fd61f98321504bb7d018` |
| 19 | `theorem` | [localDevelopmentModelComponent_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/localdevelopmentmodelcomponent-authority.md) | 192 | `result-track:d6d5570c56c1442180acdeee7b5097f005560532f6777d80920183ab5e0ff737` |
| 20 | `def` | [rustAuditComponent](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/rustauditcomponent.md) | 196 | `declaration-track:f50629a3c8aa4393f12ab5445511d06aeba087065318a7e8c116a8ada7d04e81` |
| 21 | `def` | [agdaComponent](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/agdacomponent.md) | 204 | `declaration-track:821657348cafd595c7d9d4b2b67e5180eb00e30cde3b2576e2bc57a38d98d30c` |
| 22 | `def` | [githubAdapterSource](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/githubadaptersource.md) | 212 | `declaration-track:517f00d66d9a47c4a5c1ab3ab9e30f430bc9540bfd119d3cca9be8134112f4fe` |
| 23 | `def` | [generatedGithubAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/generatedgithubadapter.md) | 220 | `declaration-track:eb0bf12dcf24590db580fce6641c2c8ce3d2bd0e7851f8ccafc8e98bbb49a692` |
| 24 | `def` | [rootAnalyticTheoremConfig](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/rootanalytictheoremconfig.md) | 228 | `declaration-track:444dc68810401140cd625448bfb7efe97d09f73b43f60f17bb4da219507627d3` |
| 25 | `def` | [generatedAuditEvidence](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/generatedauditevidence.md) | 236 | `declaration-track:f095519eddf3a117286e4ab6ce24634090d1f2f7cd0589b0b4fbe73cae99936c` |
| 26 | `def` | [leanSemanticsComponent](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/leansemanticscomponent.md) | 244 | `declaration-track:393c46cd0a14d9d93cc36ae1f35e9728a787833f1f0c99ca53fe8f340d61dc32` |
| 27 | `def` | [canonicalWorkspace](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/canonicalworkspace.md) | 253 | `declaration-track:003a4a446a9456658d322d320dee88cfc42f632b2192217ffb05cb694be57c29` |
| 28 | `theorem` | [canonicalWorkspace_nonLean_rooted](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/canonicalworkspace-nonlean-rooted.md) | 305 | `result-track:5d54d7bd6f877954b24d82f9a72de1ea6ea801b61447b61262c9990bef700908` |
| 29 | `theorem` | [canonicalWorkspace_roots_separate](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/canonicalworkspace-roots-separate.md) | 313 | `result-track:c131ffe51e4c518f5d5d53c936decb84f74d875884d863da97a2e0ce1dff51eb` |
| 30 | `theorem` | [canonicalWorkspace_root_analytic_config_owned](../../../../../ComputerScience/AlgorithmsInComputerScience/Workspace.lean/declarations/canonicalworkspace-root-analytic-config-owned.md) | 322 | `result-track:2dc66d383bae90bf5908e3d265c0b263fa8b55fe4e5ea8f82aa38b90615aaedd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd0b2acca9694cf39b319b4b93db3fb5be1a17ccdfb384ca36dd499683499264 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Workspace/Variantac5b16f8d084df1dd4e0f124e44579bba0e1cdc76b6a7e4bc4353d12d697a432.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Workspace/Variantac5b16f8d084df1dd4e0f124e44579bba0e1cdc76b6a7e4bc4353d12d697a432.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
