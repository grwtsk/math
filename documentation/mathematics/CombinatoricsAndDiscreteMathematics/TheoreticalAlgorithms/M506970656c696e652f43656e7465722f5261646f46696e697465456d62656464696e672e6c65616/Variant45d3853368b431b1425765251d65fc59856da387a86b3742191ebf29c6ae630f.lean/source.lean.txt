-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteBoolGraph.Variantf20c170120a8f23b8f8f53dca448f278e321598062cef90e31e22e4acd959bb8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f20c170120a8f23b8f8f53dca448f278e321598062cef90e31e22e4acd959bb8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FiniteBoolGraph.Variantf20c170120a8f23b8f8f53dca448f278e321598062cef90e31e22e4acd959bb8","mathematical_subject":"Computation.DataStructures","original_sha256":"f20c170120a8f23b8f8f53dca448f278e321598062cef90e31e22e4acd959bb8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit1/Bit0/Bit1/Bit0/Bit1/Bit0/M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e672e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=00101010|role=proof_code_atom|slug=pipeline-center-radofiniteembedding|owner=canonical_owner|core=Pipeline/Center/RadoFiniteEmbedding.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e672e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteBoolGraph.Variantf20c170120a8f23b8f8f53dca448f278e321598062cef90e31e22e4acd959bb8

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoFiniteEmbedding

open Think.Pipeline.Center.RadoExtension

/-!
Finite induced-subgraph bridge for the bit-coded Rado graph.

This is deliberately finite.  It does not claim countable Rado universality or
any heatflow/modular/spectral theorem.  It says that any finite loopless
symmetric Boolean graph admits an induced embedding into the already checked
bit-coded Rado carrier.
-/

structure FiniteBoolGraph where
  n : Nat
  edge : Nat -> Nat -> Bool
  symmetric : ∀ i j : Nat, i < n -> j < n -> edge i j = edge j i
  loopless : ∀ i : Nat, i < n -> edge i i = false

def InjectiveOnPrefix (n : Nat) (f : Nat -> Nat) : Prop :=
  ∀ i j : Nat, i < n -> j < n -> f i = f j -> i = j

def PreservesOrderedEdgesUpTo
    (G : FiniteBoolGraph) (k : Nat) (f : Nat -> Nat) : Prop :=
  ∀ i j : Nat, i < j -> j < k ->
    (bitRadoEdge (f j) (f i) ↔ G.edge j i = true)

def PreservesInducedEdges (G : FiniteBoolGraph) (f : Nat -> Nat) : Prop :=
  ∀ i j : Nat, i < G.n -> j < G.n -> i ≠ j ->
    (bitRadoEdge (f i) (f j) ↔ G.edge i j = true)

theorem bool_eq_false_of_ne_true {b : Bool} (h : b ≠ true) :
    b = false := by
  cases b <;> simp at h ⊢

def yesNeighbors (G : FiniteBoolGraph) (f : Nat -> Nat) (k : Nat) :
    List Nat :=
  (List.range k).filterMap
    (fun i => if G.edge k i then some (f i) else none)

def noNeighbors (G : FiniteBoolGraph) (f : Nat -> Nat) (k : Nat) :
    List Nat :=
  (List.range k).filterMap
    (fun i => if G.edge k i then none else some (f i))

theorem mem_yesNeighbors
    {G : FiniteBoolGraph} {f : Nat -> Nat} {k i : Nat}
    (hi : i < k) (h : G.edge k i = true) :
    f i ∈ yesNeighbors G f k := by
  unfold yesNeighbors
  exact List.mem_filterMap.2 ⟨i, List.mem_range.2 hi, by simp [h]⟩

theorem mem_noNeighbors
    {G : FiniteBoolGraph} {f : Nat -> Nat} {k i : Nat}
    (hi : i < k) (h : G.edge k i = false) :
    f i ∈ noNeighbors G f k := by
  unfold noNeighbors
  exact List.mem_filterMap.2 ⟨i, List.mem_range.2 hi, by simp [h]⟩

theorem yesNeighbors_member_edge_true
    {G : FiniteBoolGraph} {f : Nat -> Nat} {k x : Nat}
    (hx : x ∈ yesNeighbors G f k) :
    ∃ i : Nat, i < k ∧ G.edge k i = true ∧ f i = x := by
  unfold yesNeighbors at hx
  obtain ⟨i, hirange, hsome⟩ := List.mem_filterMap.1 hx
  have hi : i < k := List.mem_range.1 hirange
  cases hki : G.edge k i <;> simp [hki] at hsome
  exact ⟨i, hi, by simp [hki], hsome⟩

theorem noNeighbors_member_edge_false
    {G : FiniteBoolGraph} {f : Nat -> Nat} {k x : Nat}
    (hx : x ∈ noNeighbors G f k) :
    ∃ i : Nat, i < k ∧ G.edge k i = false ∧ f i = x := by
  unfold noNeighbors at hx
  obtain ⟨i, hirange, hsome⟩ := List.mem_filterMap.1 hx
  have hi : i < k := List.mem_range.1 hirange
  cases hki : G.edge k i <;> simp [hki] at hsome
  exact ⟨i, hi, by simp [hki], hsome⟩

theorem yes_no_disjoint
    {G : FiniteBoolGraph} {f : Nat -> Nat} {k : Nat}
    (hf : InjectiveOnPrefix k f) :
    DisjointNatLists (yesNeighbors G f k) (noNeighbors G f k) := by
  intro x hx hy
  obtain ⟨i, hi, hitrue, hfix⟩ := yesNeighbors_member_edge_true hx
  obtain ⟨j, hj, hjfalse, hfjx⟩ := noNeighbors_member_edge_false hy
  have hij : i = j := hf i j hi hj (by rw [hfix, hfjx])
  subst j
  rw [hitrue] at hjfalse
  contradiction

def extend (f : Nat -> Nat) (k z i : Nat) : Nat :=
  if i = k then z else f i

theorem lt_of_lt_succ_ne {i k : Nat} (h : i < k + 1) (hne : i ≠ k) :
    i < k := by
  have hle : i ≤ k := Nat.le_of_lt_succ h
  exact Nat.lt_of_le_of_ne hle hne

theorem exists_embedding_prefix (G : FiniteBoolGraph) :
    ∀ k : Nat, ∃ f : Nat -> Nat,
      InjectiveOnPrefix k f ∧ PreservesOrderedEdgesUpTo G k f := by
  intro k
  induction k with
  | zero =>
      refine ⟨fun _ => 0, ?_, ?_⟩
      · intro i _j hi _hj _h
        exact False.elim (Nat.not_lt_zero i hi)
      · intro _i j _hij hj
        exact False.elim (Nat.not_lt_zero j hj)
  | succ k ih =>
      obtain ⟨f, hfinj, hfpres⟩ := ih
      let U := yesNeighbors G f k
      let V := noNeighbors G f k
      have hdisj : DisjointNatLists U V := yes_no_disjoint hfinj
      obtain ⟨z, hzU, hzV, hU, hV⟩ :=
        bitRado_finite_extension U V hdisj
      let f' := extend f k z
      refine ⟨f', ?_, ?_⟩
      · intro i j hi hj heq
        by_cases hik : i = k
        · subst i
          by_cases hjk : j = k
          · exact hjk.symm
          · have hjlt : j < k := lt_of_lt_succ_ne hj hjk
            have hgj :
                G.edge k j = true ∨ G.edge k j = false := by
              cases G.edge k j <;> simp
            rcases hgj with hgj | hgj
            · have hmem : f j ∈ U := mem_yesNeighbors hjlt hgj
              have hzneq : z ≠ f j := by
                intro hz
                exact hzU (by rw [hz]; exact hmem)
              have hnew : f' k = z := by simp [f', extend]
              have hold : f' j = f j := by simp [f', extend, hjk]
              rw [hnew, hold] at heq
              exact False.elim (hzneq heq)
            · have hmem : f j ∈ V := mem_noNeighbors hjlt hgj
              have hzneq : z ≠ f j := by
                intro hz
                exact hzV (by rw [hz]; exact hmem)
              have hnew : f' k = z := by simp [f', extend]
              have hold : f' j = f j := by simp [f', extend, hjk]
              rw [hnew, hold] at heq
              exact False.elim (hzneq heq)
        · by_cases hjk : j = k
          · subst j
            have hilt : i < k := lt_of_lt_succ_ne hi hik
            have hgi :
                G.edge k i = true ∨ G.edge k i = false := by
              cases G.edge k i <;> simp
            rcases hgi with hgi | hgi
            · have hmem : f i ∈ U := mem_yesNeighbors hilt hgi
              have hzneq : z ≠ f i := by
                intro hz
                exact hzU (by rw [hz]; exact hmem)
              have hnew : f' k = z := by simp [f', extend]
              have hold : f' i = f i := by simp [f', extend, hik]
              rw [hold, hnew] at heq
              exact False.elim (hzneq heq.symm)
            · have hmem : f i ∈ V := mem_noNeighbors hilt hgi
              have hzneq : z ≠ f i := by
                intro hz
                exact hzV (by rw [hz]; exact hmem)
              have hnew : f' k = z := by simp [f', extend]
              have hold : f' i = f i := by simp [f', extend, hik]
              rw [hold, hnew] at heq
              exact False.elim (hzneq heq.symm)
          · have hilt : i < k := lt_of_lt_succ_ne hi hik
            have hjlt : j < k := lt_of_lt_succ_ne hj hjk
            have holdi : f' i = f i := by simp [f', extend, hik]
            have holdj : f' j = f j := by simp [f', extend, hjk]
            apply hfinj i j hilt hjlt
            rwa [holdi, holdj] at heq
      · intro i j hij hj
        by_cases hjk : j = k
        · subst j
          have hik : i ≠ k := by
            intro h
            subst i
            exact Nat.lt_irrefl k hij
          have hilt : i < k := lt_of_lt_succ_ne (Nat.lt_trans hij hj) hik
          have hnew : f' k = z := by simp [f', extend]
          have hold : f' i = f i := by simp [f', extend, hik]
          by_cases hgi : G.edge k i = true
          · have hmem : f i ∈ U := mem_yesNeighbors hilt hgi
            have hedge : bitRadoEdge z (f i) := hU (f i) hmem
            rw [hnew, hold]
            constructor
            · intro _; exact hgi
            · intro _; exact hedge
          · have hgfalse : G.edge k i = false :=
              bool_eq_false_of_ne_true hgi
            have hmem : f i ∈ V := mem_noNeighbors hilt hgfalse
            have hnot : ¬ bitRadoEdge z (f i) := hV (f i) hmem
            rw [hnew, hold, hgfalse]
            constructor
            · intro hedge; exact False.elim (hnot hedge)
            · intro htrue; cases htrue
        · have hjlt : j < k := lt_of_lt_succ_ne hj hjk
          have hik : i ≠ k := by
            intro h
            subst i
            have hkj : k < j := hij
            exact Nat.lt_asymm hkj hjlt
          have hilt : i < k := lt_of_lt_succ_ne (Nat.lt_trans hij hj) hik
          have holdi : f' i = f i := by simp [f', extend, hik]
          have holdj : f' j = f j := by simp [f', extend, hjk]
          rw [holdj, holdi]
          exact hfpres i j hij hjlt

theorem ordered_to_induced
    {G : FiniteBoolGraph} {f : Nat -> Nat}
    (hordered : PreservesOrderedEdgesUpTo G G.n f) :
    PreservesInducedEdges G f := by
  intro i j hi hj hne
  rcases Nat.lt_or_gt_of_ne hne with hij | hji
  · have hord := hordered i j hij hj
    have hsymGraph : G.edge j i = G.edge i j := G.symmetric j i hj hi
    constructor
    · intro hedge
      have hedge' : bitRadoEdge (f j) (f i) :=
        bitRadoEdge_symmetric hedge
      have hjiEdge : G.edge j i = true := hord.1 hedge'
      rwa [hsymGraph] at hjiEdge
    · intro hijEdge
      have hjiEdge : G.edge j i = true := by
        rwa [hsymGraph]
      exact bitRadoEdge_symmetric (hord.2 hjiEdge)
  · exact hordered j i hji hi

theorem bitRado_finite_induced_embedding
    (G : FiniteBoolGraph) :
    ∃ f : Nat -> Nat,
      InjectiveOnPrefix G.n f ∧ PreservesInducedEdges G f := by
  obtain ⟨f, hfinj, hordered⟩ := exists_embedding_prefix G G.n
  exact ⟨f, hfinj, ordered_to_induced hordered⟩

end Think.Pipeline.Center.RadoFiniteEmbedding
