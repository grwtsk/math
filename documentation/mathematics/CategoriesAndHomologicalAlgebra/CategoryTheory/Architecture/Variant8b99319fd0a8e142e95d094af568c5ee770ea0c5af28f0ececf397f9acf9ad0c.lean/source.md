# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Architecture.Variant8b99319fd0a8e142e95d094af568c5ee770ea0c5af28f0ececf397f9acf9ad0c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6347d8099d3b2c97f52cbbd4452137b176294a19` · SHA-256 `8b99319fd0a8e142e95d094af568c5ee770ea0c5af28f0ececf397f9acf9ad0c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Logic.Mathlib.FiveLayer

open CategoryTheory

universe u v

namespace Think.Epistemology.Adjunction

structure EpistemicReceipt
    (Log Inf : Type u) [Category.{v} Log] [Category.{v} Inf] where
  L : Log ⥤ Inf
  E : Inf ⥤ Log
  adjunction : L ⊣ E
  unitReceiptHash : String
  counitReceiptHash : String
  triangleReceiptHash : String
  evaluationHash : String
  receiptHash : String
  claimBearing : Bool

def EpistemicReceipt.accepted
    {Log Inf : Type u} [Category.{v} Log] [Category.{v} Inf]
    (R : EpistemicReceipt Log Inf) : Prop :=
  R.claimBearing = false

def EpistemicReceipt.has_adjunction
    {Log Inf : Type u} [Category.{v} Log] [Category.{v} Inf]
    (R : EpistemicReceipt Log Inf) :
    R.L ⊣ R.E :=
by
  exact R.adjunction

theorem EpistemicReceipt.not_claim_bearing_if_accepted
    {Log Inf : Type u} [Category.{v} Log] [Category.{v} Inf]
    (R : EpistemicReceipt Log Inf) :
    R.accepted → R.claimBearing = false :=
by
  intro h
  exact h

end Think.Epistemology.Adjunction
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d49308cbe82ecacda5aa7d6d2892ab09a46e8081e6cb5a010b3d5deb7aae649b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Architecture/Variant8b99319fd0a8e142e95d094af568c5ee770ea0c5af28f0ececf397f9acf9ad0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
