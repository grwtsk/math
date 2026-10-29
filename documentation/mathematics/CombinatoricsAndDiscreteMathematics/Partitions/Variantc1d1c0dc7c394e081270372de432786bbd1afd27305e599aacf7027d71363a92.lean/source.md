# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Partitions.Variantc1d1c0dc7c394e081270372de432786bbd1afd27305e599aacf7027d71363a92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8c7eb227bbf2636fcc4f9862d1ae24784064aa0` · SHA-256 `c1d1c0dc7c394e081270372de432786bbd1afd27305e599aacf7027d71363a92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Analysis.Decoupling.Basic

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace Partitions

/--
Finite scale partition surface for `[0, 1]`.

The exact analytic partition theorem from arXiv:1812.04760 is not proved here;
the fields record the obligations that a later proof must discharge.
-/
structure ScalePartition where
  delta : ℝ
  intervals : Finset (Set ℝ)
  coversUnitInterval : Prop
  intervalLengthEq : Prop
  pairwiseDisjoint : Prop
  exactPaperPartitionMatched : Bool

def partitionResidue : String :=
  "exact_delta_sqrt_partition_theorem_open_residue"

def hasExactPaperPartition (P : ScalePartition) : Bool :=
  P.exactPaperPartitionMatched

theorem exact_partition_false_blocks_paper_match
    (P : ScalePartition)
    (h : P.exactPaperPartitionMatched = false) :
    hasExactPaperPartition P = false := h

end Partitions
end Think.Analysis.Decoupling
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2fc9332042c3c0fe748e1367293dcd0fa7ebc84463c0023a8dc2e11b58043f97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Partitions/Variantc1d1c0dc7c394e081270372de432786bbd1afd27305e599aacf7027d71363a92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
