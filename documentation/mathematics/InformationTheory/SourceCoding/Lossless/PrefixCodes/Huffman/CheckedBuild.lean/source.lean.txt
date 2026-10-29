import GRWTSK.InformationTheory.Huffman.HeapRefinement
import GRWTSK.InformationTheory.Huffman.Bounds

/-!
# Checked merge refinement of a least-two heap trace

The heap API premises are explicit in `HeapBuild`. This layer discharges every
frequency-addition guard from a bound on initial total weight; a separate
no-overflow premise for each merge is not needed. Fuel is only the finite
number-of-entries bound used by the concrete Lean constructor.
-/
namespace GRWTSK.InformationTheory.Huffman.CheckedBuild

open HeapRefinement CheckedArithmetic

inductive CheckedHeapBuild : Nat → Nat → List Entry → Option Tree → Prop where
  | empty (fuel order) : CheckedHeapBuild fuel order [] none
  | singleton (fuel order) (entry) : CheckedHeapBuild fuel order [entry] (some entry.tree)
  | exhausted (order) (left right) (tail) :
      CheckedHeapBuild 0 order (left :: right :: tail) none
  | step {fuel order queue left afterLeft right tail pushed result}
      (leftPop : Pop queue left afterLeft) (rightPop : Pop afterLeft right tail)
      (push : pushed.Perm (mergeEntry order left right :: tail))
      (add : checkedAdd left.weight right.weight = some (left.weight + right.weight))
      (rest : CheckedHeapBuild fuel (order + 1) pushed result) :
      CheckedHeapBuild (fuel + 1) order queue result

/-- Every checked addition in the actual merge order succeeds when total
frequency mass fits `u64`, for every permitted heap layout. -/
theorem all_merges_checked {fuel order queue result}
    (run : HeapBuild fuel order queue result) (bounded : queueMass queue ≤ maxU64) :
    CheckedHeapBuild fuel order queue result := by
  induction run with
  | empty fuel order => exact .empty fuel order
  | singleton fuel order entry => exact .singleton fuel order entry
  | exhausted order left right tail => exact .exhausted order left right tail
  | @step fuel order queue left afterLeft right tail pushed result hl hr hp rest ih =>
    have add := Bounds.merge_checked_of_mass left.weight right.weight
      (queueMass queue) (popped_pair_le_mass hl hr) bounded
    have next : queueMass pushed ≤ maxU64 := by
      rw [heap_step_mass hl hr hp]
      exact bounded
    exact .step hl hr hp add (ih next)

/-- The source-facing constructor bridge: the supplied premise is a standard
heap API trace, never a codec law or assumed merge-overflow result. -/
theorem fromWeights_refinement (weights : UInt8 → Nat) {result : Option Tree}
    (total : (alphabet.map weights).sum ≤ maxU64)
    (run : HeapBuild (seedEntries weights 0 alphabet).length
      (seedEntries weights 0 alphabet).length (seedEntries weights 0 alphabet) result) :
    fromWeights weights = result ∧
      CheckedHeapBuild (seedEntries weights 0 alphabet).length
        (seedEntries weights 0 alphabet).length (seedEntries weights 0 alphabet) result := by
  refine ⟨fromWeights_heap_refines weights run, all_merges_checked run ?_⟩
  rw [initial_mass]
  exact total

end GRWTSK.InformationTheory.Huffman.CheckedBuild
