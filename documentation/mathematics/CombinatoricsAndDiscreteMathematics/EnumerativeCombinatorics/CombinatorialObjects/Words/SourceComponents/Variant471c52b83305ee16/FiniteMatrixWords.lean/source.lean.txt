/-
FiniteMatrixWords — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86
Organized SHA-256: 1a5e1838d7e63111d0c54c4c25fd90269f20bdf63ff13b8bacfa93338ec5bfaa
PMD: 510.7.010.030.080 words (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole finite matrix-word carrier and dependent extensionality, empty/concat/restrict/map and every exact length/access theorem with all bounds retained. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Folder.Carrier.BinaryMatrix

/-!
# Folder.Carrier.BinaryMatrixStream

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: carrier.binary_matrix_stream
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace Carrier
structure BinaryMatrixStream where
  k : Nat
  layer : Fin k → BinaryMatrix

namespace BinaryMatrixStream
@[ext (iff := false)]
theorem ext
    {S T : BinaryMatrixStream}
    (hk : S.k = T.k)
    (h :
      ∀ i : Fin S.k,
        S.layer i = T.layer (Fin.cast hk i)) :
    S = T := by
  cases S with
  | mk k layer =>
    cases T with
    | mk k' layer' =>
      simp at hk
      subst hk
      simp at h
      have hlayer : layer = layer' := by
        funext i
        exact h i
      subst hlayer
      rfl

def length (s : BinaryMatrixStream) : Nat :=
  s.k

def get (s : BinaryMatrixStream) (i : Fin s.k) : BinaryMatrix :=
  s.layer i

def empty : BinaryMatrixStream where
  k := 0
  layer := fun i => nomatch i

def concat (a b : BinaryMatrixStream) : BinaryMatrixStream where
  k := a.k + b.k
  layer := fun i =>
    if h : i.val < a.k then
      a.layer ⟨i.val, h⟩
    else
      b.layer ⟨i.val - a.k, by
        have hi := i.isLt
        omega⟩

def restrict
    (s : BinaryMatrixStream)
    (start len : Nat)
    (h : start + len ≤ s.k) :
    BinaryMatrixStream where
  k := len
  layer := fun i =>
    s.layer ⟨start + i.val, by
      have hi := i.isLt
      omega⟩

def mapMatrix
    (f : BinaryMatrix → BinaryMatrix)
    (s : BinaryMatrixStream) :
    BinaryMatrixStream where
  k := s.k
  layer := fun i => f (s.layer i)

@[simp]
theorem length_empty : length empty = 0 :=
  rfl

@[simp]
theorem length_concat (a b : BinaryMatrixStream) :
    length (concat a b) = length a + length b :=
  rfl

@[simp]
theorem length_restrict
    (s : BinaryMatrixStream)
    (start len : Nat)
    (h : start + len ≤ s.k) :
    length (restrict s start len h) = len :=
  rfl

@[simp]
theorem length_mapMatrix
    (f : BinaryMatrix → BinaryMatrix)
    (s : BinaryMatrixStream) :
    length (mapMatrix f s) = length s :=
  rfl

@[simp]
theorem get_mapMatrix
    (f : BinaryMatrix → BinaryMatrix)
    (s : BinaryMatrixStream)
    (i : Fin s.k) :
    get (mapMatrix f s) i = f (get s i) :=
  rfl

theorem get_concat_left
    (a b : BinaryMatrixStream)
    (i : Fin a.k) :
    get (concat a b) ⟨i.val, by
      change i.val < a.k + b.k
      have hi : i.val < a.k := i.isLt
      omega⟩ = get a i := by
  simp [get, concat, i.isLt]

theorem get_concat_right
    (a b : BinaryMatrixStream)
    (j : Fin b.k) :
    get (concat a b) ⟨a.k + j.val, by
      change a.k + j.val < a.k + b.k
      have hj : j.val < b.k := j.isLt
      omega⟩ = get b j := by
  have hnot : ¬ a.k + j.val < a.k := by omega
  have hsub : a.k + j.val - a.k = j.val := by omega
  simp [get, concat, hnot, hsub]

theorem get_restrict
    (s : BinaryMatrixStream)
    (start len : Nat)
    (h : start + len ≤ s.k)
    (i : Fin len) :
    get (restrict s start len h) i =
    get s ⟨start + i.val, by omega⟩ :=
  rfl

/-
A BinaryMatrix is the finite binary word/state.

A BinaryMatrixStream is temporal: its index is time. The existing
`BinaryMatrixStream` is a finite time-window with `k` frames.
-/

end BinaryMatrixStream
end Carrier
end Folder
