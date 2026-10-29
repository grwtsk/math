/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex.
List, multiset and arithmetic results retain Mathlib attribution. -/
import Mathlib.Data.List.Nodup
import Mathlib.Data.List.Perm.Basic
import Mathlib.Data.Multiset.AddSub
import Mathlib.Data.Multiset.Count
import Mathlib.Tactic

/-!
# Directed edge-instance trail splicing

The edge type consists of individual identities, rather than endpoint pairs.
Distinct parallel edges and loops remain distinct. Walk endpoints are indices
of an actual inductive walk; no existence or composability premise is hidden
in a proposition field. Inserting a closed trail at a visited vertex preserves
the exact endpoints and adds precisely its edge instances.

This is the splicing step of Hierholzer's construction. No Euler-existence
theorem from degree balance or connectivity is asserted here.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedEulerSplicing

universe u v w

/-- A directed walk records its exact edge identities and both endpoints. -/
inductive Walk {V : Type u} {E : Type v} (tail head : E → V) :
    V → V → Type (max u v)
  | nil (a : V) : Walk tail head a a
  | cons (e : E) {b : V} (rest : Walk tail head (head e) b) :
      Walk tail head (tail e) b

namespace Walk

variable {V : Type u} {E : Type v} {tail head : E → V}
variable {a b c : V}

/-- The traversed edge identities, in their actual directed order. -/
def edges : {a b : V} → Walk tail head a b → List E
  | _, _, .nil _ => []
  | _, _, .cons e rest => e :: rest.edges

/-- Concatenation uses the common indexed endpoint. -/
def append : {a b c : V} → Walk tail head a b → Walk tail head b c →
    Walk tail head a c
  | _, _, _, .nil _, q => q
  | _, _, _, .cons e rest, q => .cons e (rest.append q)

@[simp] theorem edges_nil (a : V) : (nil (tail := tail) (head := head) a).edges = [] := rfl

@[simp] theorem edges_cons (e : E) (rest : Walk tail head (head e) b) :
    (cons e rest).edges = e :: rest.edges := rfl

@[simp] theorem edges_append (p : Walk tail head a b) (q : Walk tail head b c) :
    (p.append q).edges = p.edges ++ q.edges := by
  induction p with
  | nil => rfl
  | cons e rest ih => simp only [append, edges, ih, List.cons_append]

/-- Splice a closed walk into an existing walk at the exact split vertex. -/
def splice (p : Walk tail head a b) (loop : Walk tail head b b)
    (q : Walk tail head b c) : Walk tail head a c :=
  (p.append loop).append q

/-- The insertion changes no ordering inside the old prefix, loop or suffix. -/
@[simp] theorem edges_splice (p : Walk tail head a b) (loop : Walk tail head b b)
    (q : Walk tail head b c) :
    (p.splice loop q).edges = (p.edges ++ loop.edges) ++ q.edges := by
  simp only [splice, edges_append]

/-- Up to permutation, the spliced edge list is exactly the old edge list
followed by the inserted loop, without deletion or new multiplicity. -/
theorem splice_edges_perm (p : Walk tail head a b) (loop : Walk tail head b b)
    (q : Walk tail head b c) :
    (p.splice loop q).edges.Perm ((p.append q).edges ++ loop.edges) := by
  simp only [edges_splice, edges_append]
  simpa only [List.append_assoc] using
    (List.perm_append_comm (l₁ := loop.edges) (l₂ := q.edges)).append_left p.edges

/-- Edge-instance uniqueness is preserved when the inserted closed trail
uses no edge identity from the entire old trail. -/
theorem splice_nodup (p : Walk tail head a b) (loop : Walk tail head b b)
    (q : Walk tail head b c)
    (hold : (p.append q).edges.Nodup) (hloop : loop.edges.Nodup)
    (hdisjoint : List.Disjoint (p.append q).edges loop.edges) :
    (p.splice loop q).edges.Nodup := by
  exact (splice_edges_perm p loop q).nodup_iff.mpr (hold.append hloop hdisjoint)

/-- Exact additive conservation of the multiset of individual edge IDs. -/
theorem splice_edges_multiset (p : Walk tail head a b) (loop : Walk tail head b b)
    (q : Walk tail head b c) :
    ((p.splice loop q).edges : Multiset E) =
      ((p.append q).edges : Multiset E) + (loop.edges : Multiset E) := by
  rw [Multiset.coe_add]
  exact Multiset.coe_eq_coe.mpr (splice_edges_perm p loop q)

/-- Counts of any label add, including labels shared by distinct parallel IDs. -/
theorem splice_label_count {L : Type w} [DecidableEq L] (label : E → L) (l : L)
    (p : Walk tail head a b) (loop : Walk tail head b b) (q : Walk tail head b c) :
    ((p.splice loop q).edges.map label).count l =
      ((p.append q).edges.map label).count l + (loop.edges.map label).count l := by
  simp only [edges_splice, edges_append, List.map_append, List.count_append]
  omega

/-- The number of edges increases by exactly the inserted loop length. -/
theorem splice_length (p : Walk tail head a b) (loop : Walk tail head b b)
    (q : Walk tail head b c) :
    (p.splice loop q).edges.length = (p.append q).edges.length + loop.edges.length := by
  simp only [edges_splice, edges_append, List.length_append]
  omega

/-- A nonempty disjoint closed trail gives a strictly longer closed trail.
The witness is the concrete splice, and the exact edge partition is retained. -/
theorem exists_strict_closed_trail_extension
    (p : Walk tail head a b) (loop : Walk tail head b b) (q : Walk tail head b a)
    (hold : (p.append q).edges.Nodup) (hloop : loop.edges.Nodup)
    (hdisjoint : List.Disjoint (p.append q).edges loop.edges)
    (hne : loop.edges ≠ []) :
    ∃ r : Walk tail head a a,
      r.edges.Nodup ∧
      (r.edges : Multiset E) =
        ((p.append q).edges : Multiset E) + (loop.edges : Multiset E) ∧
      (p.append q).edges.length < r.edges.length := by
  refine ⟨p.splice loop q, splice_nodup p loop q hold hloop hdisjoint,
    splice_edges_multiset p loop q, ?_⟩
  rw [splice_length]
  have hpos : 0 < loop.edges.length := List.length_pos_iff_ne_nil.mpr hne
  omega

/-- The directed incidence telescopes to the two exact walk endpoints. -/
theorem incidence_balance [DecidableEq V] (p : Walk tail head a b) (x : V) :
    (p.edges.map tail).count x + (if b = x then 1 else 0) =
      (p.edges.map head).count x + (if a = x then 1 else 0) := by
  induction p with
  | nil => simp only [edges_nil, List.map_nil, List.count_nil]
  | cons e rest ih =>
      simp only [edges_cons, List.map_cons, List.count_cons]
      by_cases ht : tail e = x <;> by_cases hh : head e = x <;>
        simp_all only [beq_iff_eq, if_true, if_false] <;> omega

/-- A closed walk removes equally many incoming and outgoing incidences
at every vertex, including vertices repeated in the walk. -/
theorem closed_incidence_balance [DecidableEq V]
    (p : Walk tail head a a) (x : V) :
    (p.edges.map tail).count x = (p.edges.map head).count x := by
  exact Nat.add_right_cancel (incidence_balance p x)

/-- Removing the exact edge multiset of a closed walk preserves degree
balance of the residual edge multiset. This is an actual counting identity,
not an assumed residual-balance field. -/
theorem residual_incidence_balance [DecidableEq V]
    (p : Walk tail head a a) (all remaining : Multiset E)
    (hpartition : all = (p.edges : Multiset E) + remaining)
    (hbalance : ∀ x : V, (all.map tail).count x = (all.map head).count x) :
    ∀ x : V, (remaining.map tail).count x = (remaining.map head).count x := by
  intro x
  have htotal := hbalance x
  simp only [hpartition, Multiset.map_add, Multiset.count_add] at htotal
  have hused : ((p.edges : Multiset E).map tail).count x =
      ((p.edges : Multiset E).map head).count x := by
    simpa only [Multiset.map_coe, Multiset.coe_count] using closed_incidence_balance p x
  rw [hused] at htotal
  exact Nat.add_left_cancel htotal

/-- A walk in a balanced edge supply cannot be stuck at a different endpoint:
if no residual edge leaves its terminal vertex, that vertex is its start.
The edge partition is exact; no maximality or Euler existence is assumed. -/
theorem terminal_eq_start_of_no_residual_outgoing [DecidableEq V]
    (p : Walk tail head a b) (all remaining : Multiset E)
    (hpartition : all = (p.edges : Multiset E) + remaining)
    (hbalance : ∀ x : V, (all.map tail).count x = (all.map head).count x)
    (hstop : (remaining.map tail).count b = 0) : a = b := by
  by_contra hne
  have htotal := hbalance b
  simp only [hpartition, Multiset.map_add, Multiset.count_add,
    Multiset.map_coe, Multiset.coe_count] at htotal
  have hinc := incidence_balance p b
  simp only [if_neg hne, if_true] at hinc
  change (p.edges.map tail).count b + (remaining.map tail).count b =
    (p.edges.map head).count b + (remaining.map head).count b at htotal
  rw [hstop] at htotal
  omega

end Walk

end GRWTSK.Combinatorics.DirectedEulerSplicing
