# Transport Adapter Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `150a42ce6ca1a88f50a39d68430b5a327aa2a05f` · SHA-256 `58130ef10ffced4a8747743815c381d8b8f69e261eb44693ce32ecc49eaf1401`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Refactor.TheoremEnvelope

/-!
# Checked theorem-envelope adapter

Only this proof-bearing adapter crosses from transported identity metadata to
the exact task proposition, and it does so by storing an actual Lean proof.
-/

public section

namespace Surface.Refactor

open Surface.Core

@[surface_novel, surface_certificate]
structure CheckedTransportedTheorem where
  envelope : TransportedTheoremEnvelope
  task : TheoremTask
  declarationMatches : envelope.declarationName = task.declarationName
  statementMatches : envelope.statementHash = task.statementHash
  moduleMatches : envelope.moduleIdentity = task.targetModule
  checkedProof : task.proposition

@[surface_novel, surface_published]
theorem checkedTransportedTheorem_exposes_exact_task
    (checked : CheckedTransportedTheorem) : checked.task.proposition :=
  checked.checkedProof

@[surface_novel, surface_published]
theorem checkedTransportedTheorem_preserves_statement_identity
    (checked : CheckedTransportedTheorem) :
    checked.envelope.statementHash = checked.task.statementHash :=
  checked.statementMatches

end Surface.Refactor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f18a5d5b2fb9cc9b4ca4db880e1114bca854359194bc6032a5f58c46c50711c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransportAdapter/Variant58130ef10ffced4a8747743815c381d8b8f69e261eb44693ce32ecc49eaf1401.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
