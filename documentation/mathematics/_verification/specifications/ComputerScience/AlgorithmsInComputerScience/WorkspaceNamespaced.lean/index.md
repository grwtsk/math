# Verification target: Workspace Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92e89cc19126b6f56e3d5ba34245860d26b67a2b",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Workspace/Variant88753910f00a63f70c8bb13a346208afd43b553401513fe4ddb1c00408d32855.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92e89cc19126b6f56e3d5ba34245860d26b67a2b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Workspace/Variant88753910f00a63f70c8bb13a346208afd43b553401513fe4ddb1c00408d32855.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Workspace/Variant88753910f00a63f70c8bb13a346208afd43b553401513fe4ddb1c00408d32855.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Authority` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RelativePath](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/relativepath.md) | 26 | `declaration-track:0f3a77d63e71c15d798a1a1d982dc2452cb60c08d9ef23246b3cad2f515a3e47` |
| 2 | `def` | [IsBelow](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/isbelow.md) | 33 | `declaration-track:acfc632b6082c88382a41cecb2ca7af04463a1e31bbff1761ebc646bf20086b8` |
| 3 | `theorem` | [below_append](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/below-append.md) | 36 | `result-track:bfd85e683f77be65bcae5ea102b27822d1d205b539b1ee3c506863c3f16a420e` |
| 4 | `inductive` | [WorkspaceComponentKind](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/workspacecomponentkind.md) | 45 | `declaration-track:7b3c49aa5ff71e154665b423b21f37269b9e4a357edc7633e358a10a6f0c4853` |
| 5 | `inductive` | [WorkspaceSourceStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/workspacesourcestatus.md) | 55 | `declaration-track:2c2d242bcb85c1bece0d21473be7edae8b7ac2688d33498ddf3bb1e340b52d81` |
| 6 | `def` | [authorityClass](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/authorityclass.md) | 65 | `declaration-track:7beba40dcca32a0132a30524e9ed41650655e7d20069d9bd275f31152f606d5a` |
| 7 | `structure` | [WorkspaceComponent](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/workspacecomponent.md) | 74 | `declaration-track:3002f9dcc9c48c7cf563588a31fda1a7b98259f9a444ca76a41e0babcd68d503` |
| 8 | `structure` | [WorkspaceModel](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/workspacemodel.md) | 84 | `declaration-track:b8d9c05cc0244d2cf7d8de40fb3f288ebd7700121cfd6ee89c404d8defff9ec8` |
| 9 | `theorem` | [every_nonLean_canonical_source_rooted](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/every-nonlean-canonical-source-rooted.md) | 114 | `result-track:95771fd57e6d65cf94bd4368786f61fc0fc050598e249b6f74316104f50eaf2d` |
| 10 | `theorem` | [lean_root_separate](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/lean-root-separate.md) | 123 | `result-track:eeb6542f966cc94f1ae0424146e0f57c70dfd1ab9c45cb50cc2a7984bcdd04eb` |
| 11 | `theorem` | [generated_root_adapter_has_canonical_owner](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/generated-root-adapter-has-canonical-owner.md) | 129 | `result-track:decc6d5e6416428e136715110f0b6403594039838530e66b6473a1be4bb02f3a` |
| 12 | `theorem` | [generated_evidence_is_not_certified_source](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/generated-evidence-is-not-certified-source.md) | 140 | `result-track:ed23bdc0028508654f6b64ef0d608ac01a1073ed430a497f854d11c1dfba2599` |
| 13 | `theorem` | [authority_assignment_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/authority-assignment-sound.md) | 149 | `result-track:21f272f50ade2b8f568a688689d5c573ef5bdd3177849fc9c582a7abe0dffa51` |
| 14 | `theorem` | [component_is_not_kernel_trusted_base](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/component-is-not-kernel-trusted-base.md) | 157 | `result-track:7e6b2e8b37057a29bf0c8fd4e8f1f1acf994013342294c3a1327283496d7ecce` |
| 15 | `theorem` | [declarative_artifact_is_not_certified_source](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/declarative-artifact-is-not-certified-source.md) | 166 | `result-track:74d23e2e5ccbc5e8d9a61241b9d55aed31b0e033611f5379d217065758e21653` |
| 16 | `def` | [continuousAssuranceRoot](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/continuousassuranceroot.md) | 178 | `declaration-track:2edc9e5aedf5f48d4615e0c9234aed712681a77d0354d6b898e0e6f4087af00c` |
| 17 | `def` | [surfaceRoot](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/surfaceroot.md) | 182 | `declaration-track:cefb6cbd5f5a72516f56c57e7a29398a281c10851ab467ea83a181f0c9cf886b` |
| 18 | `def` | [localDevelopmentModelComponent](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/localdevelopmentmodelcomponent.md) | 190 | `declaration-track:00a423a713724b17f84efa6f2564ba2537c06912dddebe88216e866995f0f174` |
| 19 | `theorem` | [localDevelopmentModelComponent_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/localdevelopmentmodelcomponent-authority.md) | 200 | `result-track:9f7dacfd80eeda77d4b0e6416abd9fbaa8aa928773090328243e9c08cddd649e` |
| 20 | `def` | [rustAuditComponent](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/rustauditcomponent.md) | 204 | `declaration-track:b35011bc230e39f63220fb7569afec6ac68523b488a031d768d70c3781b53ec8` |
| 21 | `def` | [agdaComponent](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/agdacomponent.md) | 212 | `declaration-track:892d8c959f7e5a723450d07be466d6dc88ad993f2984f63ee8a2741732b73a70` |
| 22 | `def` | [githubAdapterSource](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/githubadaptersource.md) | 220 | `declaration-track:ced8befb9aee2887cc3b3c2e7a00fd66a406aec7ad2a55a91a70612203ec0a8a` |
| 23 | `def` | [generatedGithubAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/generatedgithubadapter.md) | 228 | `declaration-track:9ce652a146eb157f5ce12c4c893d0bab1f6a733f0a21879e33c698ca47896f29` |
| 24 | `def` | [rootAnalyticTheoremConfig](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/rootanalytictheoremconfig.md) | 236 | `declaration-track:2e68fe58e1096c37e23a2238809b0c7b524b785cfdaccabc68d4e0b73cedf005` |
| 25 | `def` | [generatedAuditEvidence](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/generatedauditevidence.md) | 244 | `declaration-track:b03bd0307dbc77ccc38d6bb500b81a2d1ab20addc64df6e174f515170e99db20` |
| 26 | `def` | [leanSemanticsComponent](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/leansemanticscomponent.md) | 252 | `declaration-track:fdedf1ea6265238da6bbbcadc29284f625345dbccd39817965ccfc68a8b57f4e` |
| 27 | `def` | [canonicalWorkspace](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/canonicalworkspace.md) | 261 | `declaration-track:b0e59e881c967c4d3e8dcfe06255739e0ad9e436151108f4b5881f5ece7b0134` |
| 28 | `theorem` | [canonicalWorkspace_nonLean_rooted](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/canonicalworkspace-nonlean-rooted.md) | 313 | `result-track:f1cd308b7b67e274de78aa6ed3d078d9380207e564666d95e45745b071ebca27` |
| 29 | `theorem` | [canonicalWorkspace_roots_separate](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/canonicalworkspace-roots-separate.md) | 321 | `result-track:b588de65fc66c7ccf27a83ce60310f06831830672923802c46ab5c108a0616a9` |
| 30 | `theorem` | [canonicalWorkspace_root_analytic_config_owned](../../../../../ComputerScience/AlgorithmsInComputerScience/WorkspaceNamespaced.lean/declarations/canonicalworkspace-root-analytic-config-owned.md) | 330 | `result-track:3ce02300ff84267e85ae5fab931fe542fd8b170b19f1c97b9b2494683ee2fec7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a67932769a93a524eabe0b3a48314fd4fd575b44caa420e54fe88615e7e1beec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Workspace/Variant88753910f00a63f70c8bb13a346208afd43b553401513fe4ddb1c00408d32855.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Workspace/Variant88753910f00a63f70c8bb13a346208afd43b553401513fe4ddb1c00408d32855.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
