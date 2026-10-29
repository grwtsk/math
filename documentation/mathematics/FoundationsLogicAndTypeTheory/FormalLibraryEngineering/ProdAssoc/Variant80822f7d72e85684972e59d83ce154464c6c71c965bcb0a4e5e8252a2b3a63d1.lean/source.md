# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProdAssoc.Variant80822f7d72e85684972e59d83ce154464c6c71c965bcb0a4e5e8252a2b3a63d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38927efb92ffa04a75773d16bb0e2a71dc4e979e` · SHA-256 `80822f7d72e85684972e59d83ce154464c6c71c965bcb0a4e5e8252a2b3a63d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.ProdAssoc

variable {α β γ δ : Type*}

example : (α × β) × (γ × δ) ≃ α × (β × γ) × δ := by
  exact (prod_assoc% : (α × β) × (γ × δ) ≃ α × (β × γ) × δ)

example : (α × β) × (γ × δ) ≃ α × (β × γ) × δ := prod_assoc%

example : (α × β) × (γ × δ) ≃ α × (β × γ) × δ :=
  (prod_assoc% : _ ≃ α × β × γ × δ).trans prod_assoc%

example {α β γ δ : Type*} (x : (α × β) × (γ × δ)) : α × (β × γ) × δ := prod_assoc% x

example : Nat ≃ Nat := prod_assoc%

example (x : α) (y : β) (z : γ) (w : δ) :
    prod_assoc% ((x,y),(z,w)) = (x,y,z,w) :=
  rfl

example (x : α) (y : β) (z : γ) (w : δ) :
    prod_assoc% ((x,y),(z,w)) = (x,(y,z),w) :=
  rfl

example : (α × β) × (γ × δ) → α × (β × γ) × δ :=
  prod_assoc%
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ee37455d845999ee9e417caf5637d5bb35a96f3fa042a337797b06aa46c42d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant80822f7d72e85684972e59d83ce154464c6c71c965bcb0a4e5e8252a2b3a63d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
