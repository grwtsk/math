# Verification target: Ownership Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fef5756cd204dc8705d99077f1e22c67f8017c62",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ownership/Variant62e1081a51dd4228e979868a12d63d58fc6529553bc850da9d1ff6eefaceade9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fef5756cd204dc8705d99077f1e22c67f8017c62`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ownership/Variant62e1081a51dd4228e979868a12d63d58fc6529553bc850da9d1ff6eefaceade9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ownership/Variant62e1081a51dd4228e979868a12d63d58fc6529553bc850da9d1ff6eefaceade9.lean.json)

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
| 1 | `inductive` | [Project](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/declarations/project.md) | 21 | `declaration-track:c962f0385dce43ab66490d72416e9c4d373bdb19b86c5048b55f04b0e9f25638` |
| 2 | `def` | [identifier](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/declarations/identifier.md) | 33 | `declaration-track:51c7b5d3ab193a001200ab12b4a7221b43706979c5aec297e9a359d2713b75cf` |
| 3 | `def` | [sourceAuthorityClass](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/declarations/sourceauthorityclass.md) | 47 | `declaration-track:f0518bee580edc5e7134fc7f09a86b636f328abeadd44fdd9ccb2ce675dcce97` |
| 4 | `def` | [checkingAuthorityClass](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/declarations/checkingauthorityclass.md) | 56 | `declaration-track:f5fc1d7840686f05343c00737b814f6b4b44b7250b49f8ba99f3e57ef2a00407` |
| 5 | `def` | [executionAuthorityClass](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/declarations/executionauthorityclass.md) | 69 | `declaration-track:ee7b8905cd9ec2eaceb76a62a993bd6e23f786ddf922f30568c2d9ea7dfeaf66` |
| 6 | `theorem` | [leanSemantics_source_checking_boundary](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/declarations/leansemantics-source-checking-boundary.md) | 79 | `result-track:61dc19b9d9400cb37dbfc80d9688fb9b32bc8eb295de22a74f110df6a2f16185` |
| 7 | `theorem` | [cubicalAgda_source_checking_boundary](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/declarations/cubicalagda-source-checking-boundary.md) | 88 | `result-track:685ce94100a72c166b3d8cdb944153c93bda7b2d75444617c136fdda735d79d4` |
| 8 | `theorem` | [rustAudit_source_execution_boundary](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/declarations/rustaudit-source-execution-boundary.md) | 97 | `result-track:533c27bea4ccd77d580217d6cd00fa6a16ed645f2d130e0a8d77aa317750c89f` |
| 9 | `theorem` | [providerAdapter_source_execution_boundary](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/declarations/provideradapter-source-execution-boundary.md) | 105 | `result-track:4309bbbff7dd4b0488e3eb28aaafe6aef8465230dee42450a3e32951f9a3529a` |
| 10 | `structure` | [PublicDeclaration](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/declarations/publicdeclaration.md) | 114 | `declaration-track:32deb05caeacd8afb22d37bbe639683e243ec93c4271e28c83558617c34d7325` |
| 11 | `structure` | [OwnershipRegistry](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/declarations/ownershipregistry.md) | 121 | `declaration-track:8ef69c0a71e0ce07329bbfd66cea42cb5ba1df5548f3c2d610c9d7f5fee5772c` |
| 12 | `def` | [Owns](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/declarations/owns.md) | 128 | `declaration-track:f18ea3e8881b108f9443b31fd7c0f04a8a83bbc2d5efb5713b1c4435c8695bc5` |
| 13 | `theorem` | [exists_unique_owner](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/declarations/exists-unique-owner.md) | 135 | `result-track:8a636cb5a56d9ad00381e0a79b370b6420c5cbc6b4230b58cb22be9dd9fdb136` |
| 14 | `theorem` | [reexport_does_not_change_owner](../../../../../ComputerScience/AlgorithmsInComputerScience/OwnershipNamespaced.lean/declarations/reexport-does-not-change-owner.md) | 146 | `result-track:165289d9baf610263e2bb50152d8bf820073c3c857ebeef5295fe75a53fb4206` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5017d65a5e7865d7ba9fafd84e8f40ddfdcecec417f59eb6f75da701e191351b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ownership/Variant62e1081a51dd4228e979868a12d63d58fc6529553bc850da9d1ff6eefaceade9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ownership/Variant62e1081a51dd4228e979868a12d63d58fc6529553bc850da9d1ff6eefaceade9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
