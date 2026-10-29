# Verification target: Verification Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "415aaa2b09724df44089788804bbd585f5cbbd6c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant0bc7d39d3d6e439f771f0647191026f89b70961cbfbf9ad1c6aa0a58f8efd35c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/VerificationPublicEdition1.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/VerificationPublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `415aaa2b09724df44089788804bbd585f5cbbd6c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant0bc7d39d3d6e439f771f0647191026f89b70961cbfbf9ad1c6aa0a58f8efd35c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant0bc7d39d3d6e439f771f0647191026f89b70961cbfbf9ad1c6aa0a58f8efd35c.lean.json)

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
| 1 | `structure` | [StatementPreservationEvidence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/VerificationPublicEdition1.lean/declarations/statementpreservationevidence.md) | 19 | `declaration-track:24573c30650f9d13c697cbb4d9f5ffb5ae4dec1f15a27cfbaa58969943a432d7` |
| 2 | `def` | [StatementPreservationEvidence.Valid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/VerificationPublicEdition1.lean/declarations/statementpreservationevidence-valid.md) | 24 | `declaration-track:c79f9d8592acb1d5df953678a1c1b5abcb2c472842047ac90999a73ebf7e8ab1` |
| 3 | `def` | [verifyStatementPreservation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/VerificationPublicEdition1.lean/declarations/verifystatementpreservation.md) | 28 | `declaration-track:fd0e16ff62467c29d72c7590881ef5ba3b6a8f811e97cfd111da5ac8d840493d` |
| 4 | `theorem` | [verifyStatementPreservation_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/VerificationPublicEdition1.lean/declarations/verifystatementpreservation-sound.md) | 33 | `result-track:684ec8b94e2672a346326335663b404f34bbebbb7900653ceb4db58edea0463e` |
| 5 | `theorem` | [KernelReceipt.matchesTask_preserves_statement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/VerificationPublicEdition1.lean/declarations/kernelreceipt-matchestask-preserves-statement.md) | 43 | `result-track:54e5e80ad60bf2df860db5e764f5e8be92c076dabc88c6b80ae0705d813c3634` |
| 6 | `theorem` | [CheckedTrial.statement_preserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/VerificationPublicEdition1.lean/declarations/checkedtrial-statement-preserved.md) | 52 | `result-track:89bfc68c18e66e1652eed3549c33819fa6cd94f424a308b986d64e54d61c4b39` |
| 7 | `theorem` | [CheckedTrial.kernel_proof](../../../../../MathematicalLogicAndFoundations/GeneralLogic/VerificationPublicEdition1.lean/declarations/checkedtrial-kernel-proof.md) | 58 | `result-track:169e6784b84fd7acc19fba91fda7a09774756f7ca959a025b8b11e56ee8f5b4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b50b62273d87580fc24e4d3c5c45ba89fb06711fc2a85d82a44e73013792f0f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant0bc7d39d3d6e439f771f0647191026f89b70961cbfbf9ad1c6aa0a58f8efd35c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant0bc7d39d3d6e439f771f0647191026f89b70961cbfbf9ad1c6aa0a58f8efd35c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
