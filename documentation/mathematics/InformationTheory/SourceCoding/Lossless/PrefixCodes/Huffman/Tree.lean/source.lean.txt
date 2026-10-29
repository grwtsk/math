import Std

/-!
# Concrete binary prefix trees

Leaves carry byte values. A path uses false for the left edge and true for the
right edge, matching the deterministic Huffman implementations. No codec law
is a field of a structure or a hypothesis below.
-/

namespace GRWTSK.InformationTheory.Huffman

inductive Tree where
  | leaf : UInt8 → Tree
  | branch : Tree → Tree → Tree
  deriving DecidableEq, Repr

def Tree.symbols : Tree → List UInt8
  | .leaf a => [a]
  | .branch left right => left.symbols ++ right.symbols

def Tree.path : Tree → UInt8 → Option (List Bool)
  | .leaf a, b => if b = a then some [] else none
  | .branch left right, a =>
    match left.path a with
    | some bits => some (false :: bits)
    | none => (right.path a).map (true :: ·)

def Tree.readPath : Tree → List Bool → Option (UInt8 × List Bool)
  | .leaf a, bits => some (a, bits)
  | .branch _ _, [] => none
  | .branch left right, bit :: bits =>
    if bit then right.readPath bits else left.readPath bits

theorem Tree.path_exists (tree : Tree) (a : UInt8) :
    a ∈ tree.symbols → ∃ bits, tree.path a = some bits := by
  induction tree with
  | leaf b =>
    intro h
    have hab : a = b := by simpa [Tree.symbols] using h
    subst a
    exact ⟨[], by simp [Tree.path]⟩
  | branch left right ihl ihr =>
    intro h
    simp only [Tree.symbols, List.mem_append] at h
    cases hl : left.path a with
    | some bits => exact ⟨false :: bits, by simp [Tree.path, hl]⟩
    | none =>
      have hr : a ∈ right.symbols := by
        rcases h with h | h
        · obtain ⟨bits, hb⟩ := ihl h
          simp [hl] at hb
        · exact h
      obtain ⟨bits, hb⟩ := ihr hr
      exact ⟨true :: bits, by simp [Tree.path, hl, hb]⟩

theorem Tree.readPath_path (tree : Tree) (a : UInt8)
    (bits tail : List Bool) (h : tree.path a = some bits) :
    tree.readPath (bits ++ tail) = some (a, tail) := by
  induction tree generalizing bits tail with
  | leaf b =>
    simp only [Tree.path] at h
    split at h
    · rename_i hab
      subst a
      cases h
      rfl
    · simp at h
  | branch left right ihl ihr =>
    simp only [Tree.path] at h
    cases hl : left.path a with
    | some path =>
      simp only [hl] at h
      cases h
      simpa [Tree.readPath] using ihl path tail hl
    | none =>
      simp only [hl] at h
      cases hr : right.path a with
      | none => simp [hr] at h
      | some path =>
        simp only [hr, Option.map_some] at h
        cases h
        simpa [Tree.readPath] using ihr path tail hr

/-- A singleton alphabet gets the explicit one-bit word false. -/
def Tree.word (tree : Tree) (a : UInt8) : Option (List Bool) :=
  match tree with
  | .leaf b => if a = b then some [false] else none
  | .branch _ _ => tree.path a

def Tree.readWord (tree : Tree) (bits : List Bool) : Option (UInt8 × List Bool) :=
  match tree with
  | .leaf a =>
    match bits with
    | false :: tail => some (a, tail)
    | _ => none
  | .branch _ _ => tree.readPath bits

theorem Tree.word_exists (tree : Tree) (a : UInt8)
    (h : a ∈ tree.symbols) : ∃ bits, tree.word a = some bits := by
  cases tree with
  | leaf b =>
    have hab : a = b := by simpa [Tree.symbols] using h
    subst a
    exact ⟨[false], by simp [Tree.word]⟩
  | branch left right => exact Tree.path_exists (.branch left right) a h

theorem Tree.readWord_word (tree : Tree) (a : UInt8)
    (bits tail : List Bool) (h : tree.word a = some bits) :
    tree.readWord (bits ++ tail) = some (a, tail) := by
  cases tree with
  | leaf b =>
    simp only [Tree.word] at h
    split at h
    · rename_i hab
      subst a
      cases h
      rfl
    · simp at h
  | branch left right => exact Tree.readPath_path (.branch left right) a bits tail h

end GRWTSK.InformationTheory.Huffman
