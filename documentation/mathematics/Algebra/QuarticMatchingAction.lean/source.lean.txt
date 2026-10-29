import GRWTSK.Algebra.PolygonalQuarticSeparable

/-!
# Finite relabeling of quartic matching partitions

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

An unordered edge is a two-element Finset (Fin 4); a matching is a
Finset of such edges. Relabeling is a genuine permutation action on
these finite combinatorial objects. The three reference partitions
are concrete elements. Restricting this action to precisely those
three partitions and identifying its kernel as the Klein four group
is a separate, still-open theorem in this source.

All statements here are independent of a coefficient ring or field.
-/

namespace GRWTSK.Algebra.QuarticMatchingAction

open GRWTSK.Algebra.PolygonalQuarticDescent

private abbrev Vertex := Fin 4
private abbrev Edge := Finset Vertex
private abbrev Matching := Finset Edge

/-- An unordered pair of vertices. -/
def pair (i j : Vertex) : Edge := {i,j}

/-- A perfect matching of the four formal root labels. -/
def matching01_23 : Matching := {pair 0 1, pair 2 3}
def matching02_13 : Matching := {pair 0 2, pair 1 3}
def matching03_12 : Matching := {pair 0 3, pair 1 2}

/-- The three explicit perfect matchings. -/
def threeMatchings : Finset Matching :=
  {matching01_23, matching02_13, matching03_12}

theorem threeMatchings_card : threeMatchings.card = 3 := by
  decide

/-- Relabel both endpoints of every edge, then every edge of the matching. -/
def relabel (σ : Equiv.Perm Vertex) (m : Matching) : Matching :=
  m.image (fun e => e.image σ)

theorem relabel_one (m : Matching) :
    relabel (1 : Equiv.Perm Vertex) m = m := by
  simp [relabel]

/-- Relabeling is compatible with permutation composition (rightmost first). -/
theorem relabel_mul (σ τ : Equiv.Perm Vertex) (m : Matching) :
    relabel (σ * τ) m = relabel σ (relabel τ m) := by
  simp [relabel, Finset.image_image, Function.comp_def]

/-- A concrete nontrivial action: exchanging labels 1 and 2 exchanges
the 01|23 and 02|13 matchings. -/
theorem swap_takes_first_to_second :
    relabel (Equiv.swap (1 : Vertex) 2) matching01_23 =
      matching02_13 := by
  decide

theorem swap_takes_second_to_first :
    relabel (Equiv.swap (1 : Vertex) 2) matching02_13 =
      matching01_23 := by
  decide

/-- The three distinct matchings are the exact partitions targeted by
the eventual S₄ → S₃ permutation representation. -/
theorem reference_matchings_distinct :
    matching01_23 ≠ matching02_13 ∧
    matching01_23 ≠ matching03_12 ∧
    matching02_13 ≠ matching03_12 := by
  decide


/-- The relabeling action preserves the three concrete perfect matchings.
This is a finite proposition about 24 permutations and three matchings. -/
theorem threeMatchings_closed :
    ∀ σ : Equiv.Perm Vertex, ∀ m ∈ threeMatchings,
      relabel σ m ∈ threeMatchings := by
  have h : ∀ σ : Equiv.Perm Vertex,
      relabel σ matching01_23 ∈ threeMatchings ∧
      relabel σ matching02_13 ∈ threeMatchings ∧
      relabel σ matching03_12 ∈ threeMatchings := by
    decide
  intro σ m hm
  simp only [threeMatchings, Finset.mem_insert, Finset.mem_singleton] at hm
  rcases hm with rfl | rfl | rfl
  · exact (h σ).1
  · exact (h σ).2.1
  · exact (h σ).2.2

/-- The genuine three-element carrier, without identifying it arbitrarily
with Fin 3. -/
def PerfectMatching : Type := {m : Matching // m ∈ threeMatchings}

instance : Fintype PerfectMatching := by
  unfold PerfectMatching
  infer_instance
instance : DecidableEq PerfectMatching := by
  unfold PerfectMatching
  infer_instance

/-- Every vertex permutation induces a permutation of perfect matchings. -/
def matchingPerm (σ : Equiv.Perm Vertex) : Equiv.Perm PerfectMatching where
  toFun m := ⟨relabel σ m.1, threeMatchings_closed σ m.1 m.2⟩
  invFun m := ⟨relabel σ⁻¹ m.1, threeMatchings_closed σ⁻¹ m.1 m.2⟩
  left_inv m := by
    apply Subtype.ext
    change relabel σ⁻¹ (relabel σ m.1) = m.1
    rw [← relabel_mul, inv_mul_cancel, relabel_one]
  right_inv m := by
    apply Subtype.ext
    change relabel σ (relabel σ⁻¹ m.1) = m.1
    rw [← relabel_mul, mul_inv_cancel, relabel_one]

/-- The actual S₄ action on the three matchings as a homomorphism. -/
def matchingActionHom :
    Equiv.Perm Vertex →* Equiv.Perm PerfectMatching where
  toFun := matchingPerm
  map_one' := by
    ext m
    apply Subtype.ext
    exact relabel_one m.1
  map_mul' σ τ := by
    ext m
    apply Subtype.ext
    exact relabel_mul σ τ m.1

/-- The induced permutation is not the trivial action. -/
theorem matchingActionHom_nontrivial :
    matchingActionHom (Equiv.swap (1 : Vertex) 2) ≠ 1 := by
  intro h
  have hh := congrArg (fun f : Equiv.Perm PerfectMatching =>
    f ⟨matching01_23, by decide⟩) h
  have hfirst := swap_takes_first_to_second
  have hne := reference_matchings_distinct.1
  apply hne
  exact (hfirst.symm.trans (congrArg Subtype.val hh)).symm


/-- Three canonical double transpositions, independent of field characteristic. -/
def double01_23 : Equiv.Perm Vertex :=
  Equiv.swap (0 : Vertex) 1 * Equiv.swap (2 : Vertex) 3

def double02_13 : Equiv.Perm Vertex :=
  Equiv.swap (0 : Vertex) 2 * Equiv.swap (1 : Vertex) 3

def double03_12 : Equiv.Perm Vertex :=
  Equiv.swap (0 : Vertex) 3 * Equiv.swap (1 : Vertex) 2

/-- The image is the complete permutation group of the three matching classes. -/
theorem matchingActionHom_surjective :
    Function.Surjective matchingActionHom := by
  classical
  change ∀ τ : Equiv.Perm PerfectMatching,
    ∃ σ : Equiv.Perm Vertex, matchingActionHom σ = τ
  decide

/-- Exact finite kernel, with no classification theorem imported. -/
theorem matchingActionHom_kernel_iff (σ : Equiv.Perm Vertex) :
    matchingActionHom σ = 1 ↔
      σ = 1 ∨ σ = double01_23 ∨
      σ = double02_13 ∨ σ = double03_12 := by
  classical
  have h : ∀ σ : Equiv.Perm Vertex,
      (matchingActionHom σ = 1 ↔
        σ = 1 ∨ σ = double01_23 ∨
        σ = double02_13 ∨ σ = double03_12) := by
    decide
  exact h σ

/-- The four kernel representatives are genuinely different. -/
theorem kernel_representatives_distinct :
    (1 : Equiv.Perm Vertex) ≠ double01_23 ∧
    (1 : Equiv.Perm Vertex) ≠ double02_13 ∧
    (1 : Equiv.Perm Vertex) ≠ double03_12 ∧
    double01_23 ≠ double02_13 ∧
    double01_23 ≠ double03_12 ∧
    double02_13 ≠ double03_12 := by
  decide

/-- The homomorphism kernel as a set is exactly the four-element Klein set. -/
theorem matchingActionHom_mem_ker_iff (σ : Equiv.Perm Vertex) :
    σ ∈ MonoidHom.ker matchingActionHom ↔
      σ = 1 ∨ σ = double01_23 ∨
      σ = double02_13 ∨ σ = double03_12 := by
  change matchingActionHom σ = 1 ↔ _
  exact matchingActionHom_kernel_iff σ

end GRWTSK.Algebra.QuarticMatchingAction
