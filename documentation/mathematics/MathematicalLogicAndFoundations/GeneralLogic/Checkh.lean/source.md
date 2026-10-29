# Checkh — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1c0ec36c71a752cb61b9e2c5bb6f2e2932b5325` · SHA-256 `96e908b63989ee68211839c0f0356c4c854c1a0a1a492d25a89cbe46ae14115b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ProofWidgets.Extra.CheckHighlight

/-- info: Decidable.em (p : Prop) : p ∨ ¬p -/
#guard_msgs in
#checkh Decidable.em

/-- info: Decidable.em (p : Prop) [Decidable p] : p ∨ ¬p -/
#guard_msgs in
#checkh' Decidable.em
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5301567527d93a48bd452ff7e809a768798a680e9d63a957a1e64f6ebdc18cde -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Checkh/Variant96e908b63989ee68211839c0f0356c4c854c1a0a1a492d25a89cbe46ae14115b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
