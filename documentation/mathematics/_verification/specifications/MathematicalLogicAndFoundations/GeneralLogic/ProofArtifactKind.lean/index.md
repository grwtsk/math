# Verification target: Proof Artifact Kind

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67a0fb48847a0d40b898850b7663f728d9324d1b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant057b761fa5a38f9c0ad142b736be08737d8a29802a0ac762144c939832ce102d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofArtifactKind.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofArtifactKind.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67a0fb48847a0d40b898850b7663f728d9324d1b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant057b761fa5a38f9c0ad142b736be08737d8a29802a0ac762144c939832ce102d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant057b761fa5a38f9c0ad142b736be08737d8a29802a0ac762144c939832ce102d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kernel.AuthorityGate` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArtifactKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofArtifactKind.lean/declarations/artifactkind.md) | 7 | `declaration-track:ce64315783fbf7899797afcea081e2a616ac2388976d80351cbc9e7f9f6895fd` |
| 2 | `inductive` | [TheoremAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofArtifactKind.lean/declarations/theoremauthority.md) | 21 | `declaration-track:6a21e10f2175f4f7708f5570ed30da6bd0cb8f67e20e63859888b05c2f4bb6e8` |
| 3 | `theorem` | [theoremAuthority_has_two_checked_import_constructors](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofArtifactKind.lean/declarations/theoremauthority-has-two-checked-import-constructors.md) | 27 | `result-track:68449c88b49a5fe55b6460befda86aafcdd465109e50874688aea0d76fbb7d43` |
| 4 | `def` | [artifactCanSupplyTheoremAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofArtifactKind.lean/declarations/artifactcansupplytheoremauthority.md) | 30 | `declaration-track:a6aa11f99477855cec463806508b03c77d112815b5cca26047c3b89161ef7949` |
| 5 | `theorem` | [receipt_refused](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofArtifactKind.lean/declarations/receipt-refused.md) | 35 | `result-track:43c629524c1bb67a8e75dede3f6ae198f63931a842bfca2bcfff52713de7560e` |
| 6 | `theorem` | [finite_artifact_does_not_automatically_imply_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofArtifactKind.lean/declarations/finite-artifact-does-not-automatically-imply-authority.md) | 39 | `result-track:17d9840318df22837d8dda1cb9b96eee9d9e0e673655519dabf064c90558175b` |
| 7 | `theorem` | [checked_authority_safety_theorem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofArtifactKind.lean/declarations/checked-authority-safety-theorem.md) | 46 | `result-track:c683a3a88a9795e78aadfbeef649804392191dbb905db64c013d2636210503ff` |
| 8 | `theorem` | [checked_non_authoritative_surface_not_theorem_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofArtifactKind.lean/declarations/checked-non-authoritative-surface-not-theorem-authority.md) | 54 | `result-track:bb065e3a529d068e1630401eb50d7a39884bc2d3f874824e55ff51753be5411e` |
| 9 | `theorem` | [checked_authority_non_promotion_for_gate_free_runs](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofArtifactKind.lean/declarations/checked-authority-non-promotion-for-gate-free-runs.md) | 60 | `result-track:5bc648b141dd47fe322da6934c2c71a4a1c7b0543effac43988dac75f289afb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1763f5688e2d7058418fe756fe4a40498dcdeb63bf0a78b2420c1c2072b4a711 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant057b761fa5a38f9c0ad142b736be08737d8a29802a0ac762144c939832ce102d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant057b761fa5a38f9c0ad142b736be08737d8a29802a0ac762144c939832ce102d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
