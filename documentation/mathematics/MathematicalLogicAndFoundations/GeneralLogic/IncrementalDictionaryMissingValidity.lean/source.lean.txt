import GRWTSK.Logic.FiniteSequences.IncrementalDictionary

open GRWTSK.Logic.FiniteSequences.IndexedDictionary
open GRWTSK.Logic.FiniteSequences.IncrementalDictionary

private def invalid : Packed Nat Nat := ⟨[], [(11, 0)]⟩

-- Expected type mismatch: this theorem still requires Valid invalid, which is false here.
-- The expansion fills slot zero, so the original none decoding actually changes.
example : unpack (appendEntries invalid [(12, 7)]) =
    (unpack invalid).map (fun rows => rows ++ [(12, 7)]) :=
  unpack_appendEntries invalid [(12, 7)]
