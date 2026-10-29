# Verification target: Artifact Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f48572a1cb1f4963809f3285b52588c38dba8364",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Artifact/Variant1ef488c3ffd72d65ce9620ee8cc45ea98e81eca2b4a6dee254964ac233815e84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ArtifactPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ArtifactPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f48572a1cb1f4963809f3285b52588c38dba8364`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Artifact/Variant1ef488c3ffd72d65ce9620ee8cc45ea98e81eca2b4a6dee254964ac233815e84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Artifact/Variant1ef488c3ffd72d65ce9620ee8cc45ea98e81eca2b4a6dee254964ac233815e84.lean.json)

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
| 1 | `structure` | [ToolchainFingerprint](../../../../../ComputerScience/AlgorithmsInComputerScience/ArtifactPublic.lean/declarations/toolchainfingerprint.md) | 14 | `declaration-track:7a04a331679fddd1b663ffb65c098861d31c19e14a7caa008845ff333773ec2a` |
| 2 | `structure` | [CompilerOptionsFingerprint](../../../../../ComputerScience/AlgorithmsInComputerScience/ArtifactPublic.lean/declarations/compileroptionsfingerprint.md) | 20 | `declaration-track:c1ecd993b8589dbd7be472e933dc2dae77cca3c72507ba8d93947b15d9b2343c` |
| 3 | `structure` | [ImportClosureFingerprint](../../../../../ComputerScience/AlgorithmsInComputerScience/ArtifactPublic.lean/declarations/importclosurefingerprint.md) | 25 | `declaration-track:001db5b167f754d77c77ffc0cfe064be7b18f38e9b2e39cacf36b5b8b79010f3` |
| 4 | `structure` | [ArtifactKey](../../../../../ComputerScience/AlgorithmsInComputerScience/ArtifactPublic.lean/declarations/artifactkey.md) | 31 | `declaration-track:c1a6048555e875b625bc7050599b7b7657a36b447fb91cc76001a2f7f614bb8e` |
| 5 | `structure` | [ArtifactObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/ArtifactPublic.lean/declarations/artifactobservation.md) | 42 | `declaration-track:7ab6924cc365032340ea79c3854256afa126b0cb3ef5a98203108a95de7af0c7` |
| 6 | `structure` | [ArtifactReuseEvidence](../../../../../ComputerScience/AlgorithmsInComputerScience/ArtifactPublic.lean/declarations/artifactreuseevidence.md) | 50 | `declaration-track:33350d807b6c3a1d4d70552763cdb92b584ad423cf84be0ec74d6f9b4bcf8b4b` |
| 7 | `def` | [ArtifactReuseEvidence.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/ArtifactPublic.lean/declarations/artifactreuseevidence-valid.md) | 56 | `declaration-track:f75d7a83def461112ffeda43f515f9aabe9f4bd2351e0d5d90dcf99bca43eacb` |
| 8 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ArtifactPublic.lean/declarations/instance.md) | 60 | `declaration-track:3660f9186c0e2006c74bd032d24e37a5a2f51d2bb587a35d87b50fb181917b0c` |
| 9 | `def` | [verifyArtifactReuse](../../../../../ComputerScience/AlgorithmsInComputerScience/ArtifactPublic.lean/declarations/verifyartifactreuse.md) | 64 | `declaration-track:89e5d1144d56fddee9e526aaa2e007b996c84492dc3ba5c9cf9391b04e946422` |
| 10 | `theorem` | [verifyArtifactReuse_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/ArtifactPublic.lean/declarations/verifyartifactreuse-sound.md) | 68 | `result-track:17b91d61d04703476eed8c9f1eb8ebed537b6d4787e6c7ab62e66e3dc02f7c91` |
| 11 | `def` | [artifactReuseAuthority](../../../../../ComputerScience/AlgorithmsInComputerScience/ArtifactPublic.lean/declarations/artifactreuseauthority.md) | 72 | `declaration-track:381b3e848907f7b299387b610e33e42e8b8a6f38f7a5931ac8c6d8991588dea2` |
| 12 | `theorem` | [reuse_receipt_is_not_proof](../../../../../ComputerScience/AlgorithmsInComputerScience/ArtifactPublic.lean/declarations/reuse-receipt-is-not-proof.md) | 76 | `result-track:a44bc1fa31f996d0fc9b98aba1c46224a6e07c73aad4163888b8a33b95a85ef0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45e3eb340932baa5feb578ce83ea7845d3086f205ba621ad9febd1fa102e57f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Artifact/Variant1ef488c3ffd72d65ce9620ee8cc45ea98e81eca2b4a6dee254964ac233815e84.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Artifact/Variant1ef488c3ffd72d65ce9620ee8cc45ea98e81eca2b4a6dee254964ac233815e84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
