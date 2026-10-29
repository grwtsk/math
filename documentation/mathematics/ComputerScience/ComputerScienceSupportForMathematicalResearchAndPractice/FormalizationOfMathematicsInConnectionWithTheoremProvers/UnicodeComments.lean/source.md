# Unicode Comments — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64633875903c009da9952c95cbb0d0652b3f988a` · SHA-256 `5813f1ca778f8e08b35f2349cb218c8c430775eeb5a2bd0ec2be4b0b51db6904`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Unicode is source data, not an identifier-normalization license: λ, Δ, 色. -/
namespace Corpus

def λValue : Nat := 205169

theorem nested_identity (α : Type) (x : α) : x = x := by
  rfl

end Corpus
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e0daf03efae14a868b36edb164556425a31fc29610fb013e4209e3c725a3d3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeComments/Variant5813f1ca778f8e08b35f2349cb218c8c430775eeb5a2bd0ec2be4b0b51db6904.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
