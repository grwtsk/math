# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Verification.Variant0bc7d39d3d6e439f771f0647191026f89b70961cbfbf9ad1c6aa0a58f8efd35c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `415aaa2b09724df44089788804bbd585f5cbbd6c` · SHA-256 `0bc7d39d3d6e439f771f0647191026f89b70961cbfbf9ad1c6aa0a58f8efd35c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Receipt

/-!
# Executable evidence verification

Evidence is finite data, verification is executable, and soundness is a Lean
theorem.  No structure carries a proposition together with an assumptive proof
field supplied by an external process.
-/

public section

namespace Surface.Core

/-- Finite evidence that an observed statement has an expected identity. -/
@[surface_novel, surface_certificate]
structure StatementPreservationEvidence where
  expected : Digest
  observed : Digest
deriving DecidableEq, Repr

@[expose] def StatementPreservationEvidence.Valid
    (evidence : StatementPreservationEvidence) : Prop :=
  evidence.observed = evidence.expected

@[expose] def verifyStatementPreservation
    (evidence : StatementPreservationEvidence) : Bool :=
  evidence.observed == evidence.expected

@[surface_novel, surface_published, surface_certificate]
theorem verifyStatementPreservation_sound
    (evidence : StatementPreservationEvidence)
    (h : verifyStatementPreservation evidence = true) :
    evidence.Valid := by
  change evidence.observed = evidence.expected
  apply eq_of_beq
  simpa [verifyStatementPreservation] using h

/-- Receipt verification implies exact statement preservation for its task. -/
@[surface_novel, surface_published, surface_certificate]
theorem KernelReceipt.matchesTask_preserves_statement
    (receipt : KernelReceipt)
    (task : TheoremTask)
    (h : receipt.matchesTask task = true) :
    receipt.statementHash = task.statementHash :=
  (receipt.matchesTask_sound task h).2.2.2.1

/-- A checked trial always refers to the immutable statement of its task. -/
@[surface_novel, surface_published]
theorem CheckedTrial.statement_preserved (trial : CheckedTrial) :
    trial.receipt.statementHash = trial.task.statementHash :=
  trial.receiptMatchesTask.2.2.2.1

/-- Kernel acceptance exposes the task proposition only because it stores a Lean proof term. -/
@[surface_novel, surface_published]
theorem CheckedTrial.kernel_proof (trial : CheckedTrial) :
    trial.task.proposition :=
  trial.checkedProof

end Surface.Core
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=160b2011b57e3b11e19404be9bcc4239d191b29254059a6dc000ac97206fdb3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant0bc7d39d3d6e439f771f0647191026f89b70961cbfbf9ad1c6aa0a58f8efd35c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
