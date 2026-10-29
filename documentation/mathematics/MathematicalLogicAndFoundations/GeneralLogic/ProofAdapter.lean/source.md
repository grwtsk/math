# Proof Adapter — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdb6047e715daec4dfa571ebd33d9d60b0adb79e` · SHA-256 `0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.ProofSyntax
import Surface.Legacy.BinaryLogicMatrix.TheoremAdapter

namespace Surface.Legacy

structure ProofAdapterDescriptor where
  term : ProofTerm
  theoremDescriptor : EncodedTheorem
  syntaxRoundTrip : Prop
  proofAuthorityBoundary : String

theorem proofAdapter_syntax_roundTrip_projects
    (A : ProofAdapterDescriptor) :
    A.syntaxRoundTrip -> A.syntaxRoundTrip := by
  intro h
  exact h

theorem proofAdapter_preserves_theorem_statement
    (A : ProofAdapterDescriptor) :
    A.theoremDescriptor.statement :=
  A.theoremDescriptor.soundProof

end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cef99b99d892b4784e999e4e19b9a26ec32a988369679bcc8564e3b3e3347965 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ProofAdapter/Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
