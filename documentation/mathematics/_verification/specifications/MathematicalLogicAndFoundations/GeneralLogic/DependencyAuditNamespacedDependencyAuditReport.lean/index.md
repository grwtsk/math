# Verification target: Dependency Audit Namespaced Dependency Audit Report

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "546a8f9d0ad43dbd9ec1b2e9c270fdc89eadb592",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variantf5581e41559b1c47b226a9a01df20a36f01b53fff6f86c8e4c5e609e5e252f19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyAuditNamespacedDependencyAuditReport.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyAuditNamespacedDependencyAuditReport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `546a8f9d0ad43dbd9ec1b2e9c270fdc89eadb592`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variantf5581e41559b1c47b226a9a01df20a36f01b53fff6f86c8e4c5e609e5e252f19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variantf5581e41559b1c47b226a9a01df20a36f01b53fff6f86c8e4c5e609e5e252f19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.ProofSafety.AssumptionBudget` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DependencyAuditReport](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyAuditNamespacedDependencyAuditReport.lean/declarations/dependencyauditreport.md) | 33 | `declaration-track:dd67962b3f9ea526626f395d03646e4f4088fd2d095d0929ef27bf1c0edcd947` |
| 2 | `theorem` | [dependency_audit_imports_only_allowed_layers](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyAuditNamespacedDependencyAuditReport.lean/declarations/dependency-audit-imports-only-allowed-layers.md) | 50 | `result-track:fc584a013d299da2cae0929d98323e4094dab2b6db8d3d89e766f012c970ad39` |
| 3 | `theorem` | [dependency_audit_no_contract_modules](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyAuditNamespacedDependencyAuditReport.lean/declarations/dependency-audit-no-contract-modules.md) | 55 | `result-track:93d00e9a55653b51ff67326a175993e840f664309746d53e0969de027868d9b2` |
| 4 | `theorem` | [dependency_audit_no_external_witness_modules](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyAuditNamespacedDependencyAuditReport.lean/declarations/dependency-audit-no-external-witness-modules.md) | 60 | `result-track:a76349a17add00cef688f4cdabc551bdfb1996a9cb5c0fb4ff3fb2b15a900f1c` |
| 5 | `theorem` | [dependency_audit_no_if_supplied_accessors](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyAuditNamespacedDependencyAuditReport.lean/declarations/dependency-audit-no-if-supplied-accessors.md) | 65 | `result-track:afd68e5ee6fd67ffdecb5e93d57a60c2f68d4db8f61752cd9c9076ca01dd556b` |
| 6 | `theorem` | [dependency_audit_no_certified_projection_proofs](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyAuditNamespacedDependencyAuditReport.lean/declarations/dependency-audit-no-certified-projection-proofs.md) | 70 | `result-track:f4ce6a58cc21aed6a41f85586380c5ddaea4e497a32aab65f791ab3d8ef2a8db` |
| 7 | `theorem` | [dependency_audit_no_gap_tokens](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyAuditNamespacedDependencyAuditReport.lean/declarations/dependency-audit-no-gap-tokens.md) | 75 | `result-track:c03c150edddb93debb4f1ac5670753b5099f6d7ebf5c3f99c6563e427186fe4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=639dfcf2315ff04e9c3934e988633fe6bb21d44f757d9c3f584f15ea9db175c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variantf5581e41559b1c47b226a9a01df20a36f01b53fff6f86c8e4c5e609e5e252f19.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variantf5581e41559b1c47b226a9a01df20a36f01b53fff6f86c8e4c5e609e5e252f19.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
