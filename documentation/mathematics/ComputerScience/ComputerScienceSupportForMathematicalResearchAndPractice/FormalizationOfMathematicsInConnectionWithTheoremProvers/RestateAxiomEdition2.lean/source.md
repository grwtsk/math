# Restate Axiom Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7811bb0f4484f1a2c4d4668b0ca0c68fd71ed18` · SHA-256 `a0bd0612b6a3147ab3b6796ec2be4def424ed9700426ca101bbbc9b1a2ac5432`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.RestateAxiom

structure A :=
  (x : Nat)
  (a' : x = 1 := by rfl)
  (borp : x = 2 := by rfl)

#check A.a'
restate_axiom A.a'
#check A.a
restate_axiom A.a' foo
#check A.foo
restate_axiom A.borp
#check A.borp_lemma
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e5cf71e7cfb46c27b85a06bd1fb679bcf42d74e5f6d33028bb21624e454223b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RestateAxiom/Varianta0bd0612b6a3147ab3b6796ec2be4def424ed9700426ca101bbbc9b1a2ac5432.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
