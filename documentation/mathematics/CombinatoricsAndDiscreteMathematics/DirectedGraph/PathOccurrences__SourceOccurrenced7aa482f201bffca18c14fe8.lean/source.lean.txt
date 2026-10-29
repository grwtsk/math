/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib Path: David Waern, Kim Morrison, Matteo Cipollina, Runtian Zhou;
Path.Vertices: Matteo Cipollina; SingleObj: Antoine Labelle.
Mathlib and Lean imports retain upstream authorship and Apache-2.0 licensing. -/
import Mathlib.Combinatorics.Quiver.Path.Vertices
import Mathlib.Combinatorics.Quiver.SingleObj

/-!
# Ordered occurrences of actual typed quiver paths

All paths are the existing `Quiver.Path`; no replacement path type is introduced.
`Path.vertices` lists vertices chronologically, including both endpoints, whereas
`Path.toList` lists edge sources in reverse order. The explicit conversion below
fixes that convention and supports exact typed splitting at occurrence positions.

For single-object quivers, the existing path/list equivalence records complete
edge identity. Reversing its list gives chronological edge occurrences and exact
reconstruction and composition. Two Bool parallel loops have the same endpoints,
length and vertex list but are different actual paths. Vertex-only reconstruction
requires an extra uniqueness hypothesis on arrows; that safe case reuses the
upstream `Path.toList_injective` theorem.

These results concern typed edges and actual paths. They neither construct an
arbitrary DAG unfolding nor identify reachability, proof implication, provenance,
or communication roles; no JSON/runtime refinement or candidate promotion follows.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.PathOccurrences

open Quiver

variable {V : Type*} [Quiver V] {a b c : V}

/-- Explicit conversion between chronological vertices and reverse source occurrences. -/
theorem vertices_reverse (path : Quiver.Path a b) :
    path.vertices.reverse = b :: path.toList := by
  induction path with
  | nil => rfl
  | cons path edge ih =>
    simp [Quiver.Path.vertices_cons, Quiver.Path.toList, ih]

/-- Composition keeps every left occurrence and drops only the duplicate joining start on the right. -/
theorem vertices_comp_keep_left (left : Quiver.Path a b) (right : Quiver.Path b c) :
    (left.comp right).vertices = left.vertices ++ right.vertices.tail := by
  have hright : b :: right.vertices.tail = right.vertices := by
    simpa only [right.vertices_head_eq] using (List.cons_head_tail right.vertices_ne_nil)
  calc
    (left.comp right).vertices = left.vertices.dropLast ++ right.vertices :=
      Quiver.Path.vertices_comp left right
    _ = left.vertices.dropLast ++ ([b] ++ right.vertices.tail) := by rw [← hright]; rfl
    _ = (left.vertices.dropLast ++ [b]) ++ right.vertices.tail :=
      (List.append_assoc _ _ _).symm
    _ = left.vertices ++ right.vertices.tail := by rw [left.dropLast_append_end_eq]

/-- The whole left occurrence sequence is retained literally as an ordered prefix. -/
theorem vertices_prefix_comp (left : Quiver.Path a b) (right : Quiver.Path b c) :
    left.vertices <+: (left.comp right).vertices := by
  rw [vertices_comp_keep_left]
  exact List.prefix_append _ _

/-- Composition retains every existing occurrence at its exact original position. -/
theorem vertex_position_comp (left : Quiver.Path a b) (right : Quiver.Path b c)
    (index : Nat) (hi : index < left.vertices.length) :
    (left.comp right).vertices[index]? = some left.vertices[index] :=
  List.prefix_iff_getElem?.mp (vertices_prefix_comp left right) index hi

/-- A vertex occurrence is witnessed by actual typed prefix/suffix paths of the exact prefix length. -/
theorem split_at_occurrence (path : Quiver.Path a b)
    (index : Nat) (hi : index < path.vertices.length) :
    ∃ (initial : Quiver.Path a path.vertices[index])
      (suffix : Quiver.Path path.vertices[index] b),
      path = initial.comp suffix ∧ initial.length = index := by
  obtain ⟨vertex, initial, suffix, hcomp, hlength, hvertex⟩ :=
    path.exists_eq_comp_and_length_eq_of_lt_length index hi
  subst vertex
  exact ⟨initial, suffix, hcomp, hlength⟩

/-- Even repeated source vertices have distinct prefix occurrences at distinct positions. -/
theorem distinct_occurrence_prefixes (path : Quiver.Path a b)
    (i j : Nat) (hi : i < path.vertices.length) (hj : j < path.vertices.length)
    (hij : i ≠ j) :
    ∃ (pi : Quiver.Path a path.vertices[i]) (si : Quiver.Path path.vertices[i] b)
      (pj : Quiver.Path a path.vertices[j]) (sj : Quiver.Path path.vertices[j] b),
      path = pi.comp si ∧ path = pj.comp sj ∧ pi.length = i ∧ pj.length = j ∧
      (⟨path.vertices[i], pi⟩ : Σ vertex : V, Quiver.Path a vertex) ≠
        ⟨path.vertices[j], pj⟩ := by
  obtain ⟨pi, si, hpi, hli⟩ := split_at_occurrence path i hi
  obtain ⟨pj, sj, hpj, hlj⟩ := split_at_occurrence path j hj
  refine ⟨pi, si, pj, sj, hpi, hpj, hli, hlj, ?_⟩
  intro hequal
  have hlength := congrArg (fun initial : Σ vertex : V, Quiver.Path a vertex =>
    initial.2.length) hequal
  exact hij (hli.symm.trans (hlength.trans hlj))

/-- Vertex-only reconstruction is valid when every typed arrow space is a subsingleton. -/
theorem path_eq_of_vertices_eq [∀ x y : V, Subsingleton (x ⟶ y)]
    (left right : Quiver.Path a b) (hvertices : left.vertices = right.vertices) :
    left = right := by
  apply Quiver.Path.toList_injective a b
  have hsource := congrArg (fun vertices : List V => vertices.reverse.tail) hvertices
  simpa only [vertices_reverse, List.tail_cons] using hsource

variable {Edge : Type*}

/-- Forward edge occurrences, obtained from the actual existing single-object path equivalence. -/
def edgeOccurrences
    (path : Quiver.Path (SingleObj.star Edge) (SingleObj.star Edge)) : List Edge :=
  (SingleObj.pathEquivList path).reverse

/-- The upstream single-object edge list is contravariant under actual path composition. -/
theorem pathToList_comp
    (left : Quiver.Path (SingleObj.star Edge) (SingleObj.star Edge))
    {finish : SingleObj Edge} (right : Quiver.Path (SingleObj.star Edge) finish) :
    SingleObj.pathToList (left.comp right) =
      SingleObj.pathToList right ++ SingleObj.pathToList left := by
  induction right with
  | nil => rfl
  | cons right edge ih =>
    change edge :: SingleObj.pathToList (left.comp right) =
      (edge :: SingleObj.pathToList right) ++ SingleObj.pathToList left
    rw [ih]
    rfl

/-- Chronological edge occurrences compose by exact list append, retaining every edge identity. -/
theorem edgeOccurrences_comp
    (left right : Quiver.Path (SingleObj.star Edge) (SingleObj.star Edge)) :
    edgeOccurrences (left.comp right) = edgeOccurrences left ++ edgeOccurrences right := by
  change (SingleObj.pathToList (left.comp right)).reverse =
    (SingleObj.pathToList left).reverse ++ (SingleObj.pathToList right).reverse
  rw [pathToList_comp, List.reverse_append]

/-- Reconstruction uses the actual inverse path/list equivalence, not an assumed codec law. -/
theorem reconstruct_edgeOccurrences
    (path : Quiver.Path (SingleObj.star Edge) (SingleObj.star Edge)) :
    SingleObj.pathEquivList.symm (edgeOccurrences path).reverse = path := by
  simp [edgeOccurrences]

/-- An edge list also survives actual construction followed by chronological projection. -/
theorem edgeOccurrences_reconstruct (edges : List Edge) :
    edgeOccurrences (SingleObj.pathEquivList.symm edges.reverse) = edges := by
  simp [edgeOccurrences]

/-- Full edge occurrences distinguish actual single-object paths. -/
theorem edgeOccurrences_injective : Function.Injective (edgeOccurrences (Edge := Edge)) := by
  intro left right hequal
  have hreverse := congrArg List.reverse hequal
  apply SingleObj.pathEquivList.injective
  simpa only [edgeOccurrences, List.reverse_reverse] using hreverse

/-- One of the two actual parallel loop edges in the single-object Bool quiver. -/
def parallelLoop (edge : Bool) :
    Quiver.Path (SingleObj.star Bool) (SingleObj.star Bool) :=
  (SingleObj.toHom edge).toPath

theorem parallel_loops_ne : parallelLoop false ≠ parallelLoop true := by
  intro hequal
  have hedges := congrArg edgeOccurrences hequal
  change ([false] : List Bool) = [true] at hedges
  simp at hedges

/-- Same typed endpoints, length, and full vertex sequence can erase parallel-edge identity. -/
theorem parallel_loop_summary_counterexample :
    (parallelLoop false).length = 1 ∧ (parallelLoop true).length = 1 ∧
      (parallelLoop false).end = (parallelLoop true).end ∧
      (parallelLoop false).vertices = [SingleObj.star Bool, SingleObj.star Bool] ∧
      (parallelLoop true).vertices = [SingleObj.star Bool, SingleObj.star Bool] ∧
      (parallelLoop false).vertices = (parallelLoop true).vertices ∧
      parallelLoop false ≠ parallelLoop true :=
  ⟨rfl, rfl, rfl, rfl, rfl, rfl, parallel_loops_ne⟩

/-- Even with endpoints fixed by the type, length-plus-vertices is not an injective path summary. -/
theorem endpoint_vertex_summary_not_injective :
    ¬ Function.Injective (fun path :
      Quiver.Path (SingleObj.star Bool) (SingleObj.star Bool) =>
        (path.length, path.vertices)) := by
  intro hinjective
  exact parallel_loops_ne (hinjective (show
    ((parallelLoop false).length, (parallelLoop false).vertices) =
      ((parallelLoop true).length, (parallelLoop true).vertices) from rfl))

end GRWTSK.Combinatorics.DirectedGraph.PathOccurrences
