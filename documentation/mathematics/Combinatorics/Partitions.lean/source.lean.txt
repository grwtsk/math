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
