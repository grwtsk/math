# Bitfield Bitfield Semantics — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c5b965304ece064933aa61003c92ced8bf4bacc` · SHA-256 `848f76745a38fa6e7cdf2545de506941ec00660883f813b013063df958476a12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.PartialBitfield.Order
import Mathematics.BinaryFrontier.Completion.Core

/-!
# Partial-bitfield completion adapter

This is the only edge from the representation-specific bitfield order into
the generic completion semantics.
-/

namespace Mathematics.BinaryFrontier.Completion

open Mathematics.BinaryFrontier

def bitfieldSemantics
    {width : Nat}
    {Constraint : Type*}
    (evaluate :
      FullBitfield width →
        Constraint →
        Prop) :
    Semantics
      (PartialBitfield width)
      (FullBitfield width)
      Constraint where
  refines := Extends
  extendsFull := ExtendsFull
  satisfies := evaluate
  refinement_sound := by
    intro parent child completion
      parentChild childCompletion
    exact
      extends_trans
        parentChild childCompletion

end Mathematics.BinaryFrontier.Completion
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf28b72897259d487d23e9adb1be2e52f6f74f2d1d851ab77692f53d4dc51cf3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant848f76745a38fa6e7cdf2545de506941ec00660883f813b013063df958476a12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
