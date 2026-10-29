-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TypedCompleteCode.Variant8cf9857c58746a205b65d6680f19066bd2405dd3a365fdfed3dad8eec4f77bbf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cf9857c58746a205b65d6680f19066bd2405dd3a365fdfed3dad8eec4f77bbf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TypedCompleteCode.Variant8cf9857c58746a205b65d6680f19066bd2405dd3a365fdfed3dad8eec4f77bbf","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8cf9857c58746a205b65d6680f19066bd2405dd3a365fdfed3dad8eec4f77bbf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Model/TypedReconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.DerivationSemantics
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.OwnershipReconstruction
import Mathlib.Data.Fintype.Powerset

/-!
# Complete reconstruction codes for the actual finite first-order catalog

The source and ordered blocks are parameters of the code type. Data records the
selected subfamily, catalog root, catalog payload per slot and ownership masks.
Typing and checked syntax retain each payload's whole dependency support;
ownership subtraction never removes syntax nodes. Gluing is a source-presentation
derivation, while the occurrence decoder restores original source positions.

The cardinal bound counts this fixed-catalog semantic carrier. Proof fields are
irrelevant; it does not bound serialized proof syntax, bytes, native time or an
unbounded term grammar. The actual fixture shares a required atom node between
two typed payloads and charges both visits, although only one slot owns its
source occurrence. Its distinct Atom and Tag(Tag(Atom)) payloads glue by the
actual checked presentation rather than literal syntax equality.

Human research direction and evaluation: grwtsk contributors.
Implementation assistance: Codex AI.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TypedCompleteCode.Variant8cf9857c58746a205b65d6680f19066bd2405dd3a365fdfed3dad8eec4f77bbf

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

open FormalResearch.MathematicalTooling.Coverage
open scoped BigOperators

/-- A bounded catalog reference cannot invoke the total lookup's missing-entry default. -/
def sourceCatalogSyntax (full : CheckedFullDeclaration)
    (index : Fin full.value.catalog.length) : SyntaxCertificate := full.value.catalog.get index

/-- Decode the source term at a bounded checked-catalogue index. -/
def sourceCatalogTerm (full : CheckedFullDeclaration)
    (index : Fin full.value.catalog.length) : Term := termOfSyntax (sourceCatalogSyntax full index)

theorem sourceCatalogSyntax_valid (full : CheckedFullDeclaration)
    (index : Fin full.value.catalog.length) : SyntaxValid full.snapshot
      (sourceCatalogSyntax full index) := full.catalogValid _ (List.get_mem _ index)

theorem sourceCatalogTerm_valid (full : CheckedFullDeclaration)
    (index : Fin full.value.catalog.length) : TermValid full.snapshot.value 0
      (sourceCatalogTerm full index) := by
  have ground : ∀ term ∈ catalogTerms full.value,
      TermValid full.value.coreSnapshot 0 term := by
    have structural := full.structural
    unfold FullStructure at structural
    tauto
  rw [← full.snapshotMatches]
  exact ground _ (List.mem_map.mpr
    ⟨sourceCatalogSyntax full index, List.get_mem _ index, rfl⟩)

/-- Complete finite code, with source, slot ordering and ambient positions fixed in its type. -/
structure TypedCompleteCode (full : CheckedFullDeclaration) {n : ℕ}
    (blocks : Fin n → Finset (SourcePosition full.snapshot.value)) where
  /-- The blocks participating in this complete code. -/
  selected : Finset (Fin n)
  /-- The checked-catalogue index of the reconstructed root term. -/
  root : Fin full.value.catalog.length
  /-- A bounded checked-catalogue term index for each block. -/
  payload : Fin n → Fin full.value.catalog.length
  /-- The ownership masks in the fixed block coordinates. -/
  masks : ReconstructionMasks blocks
  ownedMatches : ∀ i, decodeMask blocks i (masks i) = ownedPiece Finset.univ blocks i
  inactiveEmpty : ∀ i, i ∉ selected → decodeMask blocks i (masks i) = ∅
  covered : ∀ p, ∃ i ∈ selected, p ∈ decodeMask blocks i (masks i)
  rootSyntax : SyntaxValid full.snapshot (sourceCatalogSyntax full root)
  rootTyped : TermValid full.snapshot.value 0 (sourceCatalogTerm full root)
  payloadSyntax : ∀ i, SyntaxValid full.snapshot (sourceCatalogSyntax full (payload i))
  payloadTyped : ∀ i, TermValid full.snapshot.value 0 (sourceCatalogTerm full (payload i))
  glue : ∀ i, RepresentationDerivable full.value
    (sourceCatalogTerm full (payload i)) (sourceCatalogTerm full root)

namespace TypedCompleteCode

variable {full : CheckedFullDeclaration} {n : ℕ}
    {blocks : Fin n → Finset (SourcePosition full.snapshot.value)}

/-- Selected slots are traversed in the declared first-owner ordering. -/
def selectedInOrder (code : TypedCompleteCode full blocks) : List (Fin n) :=
  code.selected.sort (· ≤ ·)

/-- The decoder retains the actual checked syntax, including all dependency nodes. -/
def decodeSyntax (code : TypedCompleteCode full blocks) : CheckedSyntax full.snapshot :=
  ⟨sourceCatalogSyntax full code.root, code.rootSyntax⟩

/-- Recover the root term from its bounded catalogue reference. -/
def decodeTerm (code : TypedCompleteCode full blocks) : Term := sourceCatalogTerm full code.root

theorem decodeTerm_valid (code : TypedCompleteCode full blocks) :
    TermValid full.snapshot.value 0 code.decodeTerm := code.rootTyped

theorem decodeSyntax_source (code : TypedCompleteCode full blocks) :
    code.decodeSyntax.certificate.snapshot = full.snapshot.value :=
  checkedSyntax_snapshot full.snapshot code.decodeSyntax

/-- Recover ambient source positions from the owned block masks. -/
def decodePositions (code : TypedCompleteCode full blocks) :
    List (SourcePosition full.snapshot.value) :=
  (List.finRange full.snapshot.value.occurrences.length).filter fun p =>
    decide (∃ i ∈ code.selected, p ∈ decodeMask blocks i (code.masks i))

theorem decodePositions_eq (code : TypedCompleteCode full blocks) :
    code.decodePositions = List.finRange full.snapshot.value.occurrences.length := by
  apply List.filter_eq_self.mpr
  intro p _
  exact decide_eq_true (code.covered p)

/-- Recover the ordered source occurrence inventory from decoded positions. -/
def decodeInventory (code : TypedCompleteCode full blocks) : List Occurrence :=
  code.decodePositions.map (occurrenceAt full.snapshot.value)

theorem blocks_cover (code : TypedCompleteCode full blocks) : ∀ p, ∃ i, p ∈ blocks i := by
  intro p
  obtain ⟨i, _, hi⟩ := code.covered p
  exact ⟨i, decodeMask_subset blocks i (code.masks i) hi⟩

/-- The complete code supplies a stable interleaving, rather than a block concatenation. -/
theorem decodeInventory_eq_stable (code : TypedCompleteCode full blocks) :
    code.decodeInventory = stableReassemble full.snapshot.value blocks := by
  rw [decodeInventory, decodePositions_eq, stableReassemble,
    stablePositions_eq full.snapshot.value blocks code.blocks_cover]

theorem decodeInventory_exact (code : TypedCompleteCode full blocks) :
    code.decodeInventory = full.snapshot.value.occurrences :=
  code.decodeInventory_eq_stable.trans
    (stableReassemble_eq full.snapshot.value blocks code.blocks_cover)

theorem ordered_fold_recovery {M : Type*} (code : TypedCompleteCode full blocks)
    (step : M → Occurrence → M) (initial : M) :
    code.decodeInventory.foldl step initial =
      full.snapshot.value.occurrences.foldl step initial := by
  rw [decodeInventory_exact]

/-- Gluing consumes the actual presentation semantics and preserves its partial readout. -/
theorem fragment_evaluation (code : TypedCompleteCode full blocks)
    (outputs : TableOutputBounded full.value.interpreter.table)
    (generators : GeneratorsPartiallyInterpreted full.value full.value.interpreter.table)
    (assignment : List ℕ)
    (bounded : ∀ value ∈ assignment, value < full.value.interpreter.table.cardinality)
    (i : Fin n) :
    evaluateTerm full.value.interpreter.table assignment
        (sourceCatalogTerm full (code.payload i)) =
      evaluateTerm full.value.interpreter.table assignment code.decodeTerm :=
  representationDerivable_evaluateTerm outputs generators (code.glue i) assignment bounded

/-- Dependency support is retained separately even when the owned mask is empty. -/
def typingNodeSupport (code : TypedCompleteCode full blocks) (i : Fin n) : Finset NodeId :=
  ((sourceCatalogSyntax full (code.payload i)).nodes.map SyntaxNode.id).toFinset

/-- Charge each retained typed payload's nodes; overlap does not make those visits disappear. -/
def typingNodeVisits (code : TypedCompleteCode full blocks) : ℕ :=
  ∑ i, (sourceCatalogSyntax full (code.payload i)).nodes.length

/-- Finite semantic data of the fixed complete code, with proof fields omitted. -/
abbrev Data (full : CheckedFullDeclaration) {n : ℕ}
    (blocks : Fin n → Finset (SourcePosition full.snapshot.value)) :=
  Finset (Fin n) × Fin full.value.catalog.length ×
    (Fin n → Fin full.value.catalog.length) × ReconstructionMasks blocks

/-- Project a validated complete code to its finite semantic data. -/
def eraseData (code : TypedCompleteCode full blocks) : Data full blocks :=
  (code.selected, code.root, code.payload, code.masks)

theorem eraseData_injective : Function.Injective (eraseData (full := full) (blocks := blocks)) := by
  intro left right equal
  cases left
  cases right
  simp only [eraseData, Prod.mk.injEq] at equal
  rcases equal with ⟨selected, root, payload, masks⟩
  cases selected
  cases root
  cases payload
  cases masks
  rfl

noncomputable instance : Fintype (TypedCompleteCode full blocks) :=
  Fintype.ofInjective eraseData eraseData_injective

/-- The complete semantic code count includes subfamily, root and every payload,
as well as every mask. It is independent of the individual-fragment catalogue bound. -/
theorem card_le : Fintype.card (TypedCompleteCode full blocks) ≤
    2 ^ n * (full.value.catalog.length *
      (full.value.catalog.length ^ n * 2 ^ (∑ i, (blocks i).card))) := by
  have bound := Fintype.card_le_of_injective
    (eraseData (full := full) (blocks := blocks)) eraseData_injective
  simpa only [Data, Fintype.card_prod, Fintype.card_finset, Fintype.card_fin,
    Fintype.card_fun, card_reconstructionMasks] using bound

end TypedCompleteCode

/-- Construct complete codes from the checked catalog and an actual ordered source cover. -/
def encodeTypedCatalog (full : CheckedFullDeclaration) {n : ℕ}
    (blocks : Fin n → Finset (SourcePosition full.snapshot.value))
    (cover : ∀ p, ∃ i, p ∈ blocks i) (root : Fin full.value.catalog.length) :
    TypedCompleteCode full blocks where
  selected := Finset.univ.filter fun i => (ownedPiece Finset.univ blocks i).Nonempty
  root := root
  payload := fun _ => root
  masks := encodeOwnedMasks Finset.univ blocks
  ownedMatches := decode_ownedPiece_mask Finset.univ blocks
  inactiveEmpty := by
    intro i inactive
    rw [encodeOwnedMasks, decode_ownedPiece_mask]
    apply Finset.not_nonempty_iff_eq_empty.mp
    simpa only [Finset.mem_filter, Finset.mem_univ, true_and] using inactive
  covered := by
    intro p
    obtain ⟨i, hi, _⟩ := source_position_unique_owner full.snapshot.value blocks cover p
    refine ⟨i, ?_, ?_⟩
    · exact Finset.mem_filter.mpr ⟨Finset.mem_univ _, ⟨p, hi⟩⟩
    · rw [encodeOwnedMasks, decode_ownedPiece_mask]
      exact hi
  rootSyntax := sourceCatalogSyntax_valid full root
  rootTyped := sourceCatalogTerm_valid full root
  payloadSyntax := fun _ => sourceCatalogSyntax_valid full root
  payloadTyped := fun _ => sourceCatalogTerm_valid full root
  glue := fun _ => .reflexivity _

theorem decode_encodeTypedCatalog (full : CheckedFullDeclaration) {n : ℕ}
    (blocks : Fin n → Finset (SourcePosition full.snapshot.value))
    (cover : ∀ p, ∃ i, p ∈ blocks i) (root : Fin full.value.catalog.length) :
    (encodeTypedCatalog full blocks cover root).decodeTerm = sourceCatalogTerm full root := rfl

namespace TypedReconstructionFixtures

open FullFixtures

/-- Repeated covering blocks force first ownership while allowing overlapping typing supports. -/
def blocks : Fin 2 → Finset (SourcePosition checkedFull.snapshot.value) := fun _ => Finset.univ

theorem blocks_cover : ∀ p : SourcePosition checkedFull.snapshot.value, ∃ i, p ∈ blocks i := by
  intro p
  exact ⟨0, Finset.mem_univ p⟩

/-- Atom and double Tag glue by the source-bound proof returned by the existing checker. -/
theorem checked_atom_double_tag : RepresentationDerivable declaration
    AssemblyFixtures.atomTerm AssemblyFixtures.tagTagTerm := by
  have derivation := DerivationSemanticsFixtures.actualCheckedEquation.result.proof
  have endpoints : DerivationSemanticsFixtures.actualCheckedEquation.result.equation =
      ⟨AssemblyFixtures.tagTagTerm, AssemblyFixtures.atomTerm⟩ := by decide
  rw [endpoints] at derivation
  exact .symmetry derivation

/-- A concrete complete code keeps root double Tag, with an Atom payload in its first slot. -/
def code : TypedCompleteCode checkedFull blocks :=
  { encodeTypedCatalog checkedFull blocks blocks_cover ⟨2, by decide⟩ with
    payload := fun i => if i = 0 then ⟨0, by decide⟩ else ⟨2, by decide⟩
    payloadSyntax := fun i => sourceCatalogSyntax_valid checkedFull _
    payloadTyped := fun i => sourceCatalogTerm_valid checkedFull _
    glue := by
      intro i
      fin_cases i
      · exact checked_atom_double_tag
      · exact .reflexivity _ }

theorem code_selected_and_ordered : code.selected = {0} ∧ code.selectedInOrder = [0] := by
  have selected : code.selected = {0} := by decide
  refine ⟨selected, ?_⟩
  rw [TypedCompleteCode.selectedInOrder, selected, Finset.sort_singleton]

theorem code_decoder_recovery :
    code.decodeTerm = AssemblyFixtures.tagTagTerm ∧ code.decodeSyntax.certificate = tree ∧
      code.decodeInventory = snapshot.occurrences :=
  ⟨rfl, rfl, code.decodeInventory_exact⟩

theorem code_fragment_evaluation (assignment : List ℕ)
    (bounded : ∀ value ∈ assignment, value < interpreterTable.cardinality) (i : Fin 2) :
    evaluateTerm interpreterTable assignment (sourceCatalogTerm checkedFull (code.payload i)) =
      evaluateTerm interpreterTable assignment code.decodeTerm :=
  code.fragment_evaluation DerivationSemanticsFixtures.interpreter_outputs_bounded
    DerivationSemanticsFixtures.actual_generators_partially_interpreted assignment bounded i

theorem syntax_distinct_semantic_gluing :
    sourceCatalogTerm checkedFull (code.payload 0) ≠ code.decodeTerm ∧
      evaluateTerm interpreterTable [] (sourceCatalogTerm checkedFull (code.payload 0)) =
        evaluateTerm interpreterTable [] code.decodeTerm :=
  ⟨by decide, code_fragment_evaluation [] (by simp) 0⟩

/-- The empty owned second slot still needs its atom dependency; supports overlap. -/
theorem owned_empty_support_overlaps :
    decodeMask blocks 1 (code.masks 1) = ∅ ∧
      (⟨0⟩ : NodeId) ∈ code.typingNodeSupport 0 ∧
      (⟨0⟩ : NodeId) ∈ code.typingNodeSupport 1 ∧ code.typingNodeVisits = 4 := by decide

theorem block_card (i : Fin 2) : (blocks i).card = 1 := by
  change (Finset.univ : Finset (Fin 1)).card = 1
  simp

/-- The two masks store and traverse two source-position bits, separately from typing visits. -/
theorem code_mask_storage_visits : maskStorageSlots blocks = 2 ∧ maskEntryVisits blocks = 2 := by
  constructor
  · rw [maskStorageSlots_eq]
    simp [block_card]
  · simp [maskEntryVisits, block_card]

theorem complete_code_bound : Fintype.card (TypedCompleteCode checkedFull blocks) ≤ 432 := by
  have bound := TypedCompleteCode.card_le (full := checkedFull) (blocks := blocks)
  have catalogueLength : checkedFull.value.catalog.length = 3 := rfl
  rw [catalogueLength] at bound
  norm_num [block_card] at bound
  exact bound

end TypedReconstructionFixtures

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
