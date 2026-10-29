-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.QuotientNormData.Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.QuotientNormData.Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"c63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Concept/BanachCompletion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.SemanticEquation
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Normed.Group.SeparationQuotient
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Module.Completion
import Mathlib.Analysis.Seminorm

/-!
# Semantic quotient and Banach completion

The carrier is the completion of finite semantic combinations under one
explicit seminorm profile.  Its null vectors are required to be exactly the
declared relation submodule; neither undeclared collapse nor uncollapsed
declared equations are hidden.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.QuotientNormData.Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1

noncomputable section

namespace Mathematics.Concept

universe u

/-- Exact norm-and-relation data for one atom carrier. -/
structure QuotientNormData (Atom : Type u) where
  relations : Submodule ℂ (SemanticCombination Atom)
  semanticSeminorm : Seminorm ℂ (SemanticCombination Atom)
  null_iff_relations :
    ∀ combination,
      semanticSeminorm combination = 0 ↔
        combination ∈ relations
  normProfileId : StableId
  normProfileDigest : Digest

/--
A wrapper retaining the norm profile in the type.  This prevents two
different seminorm profiles on the same finitely-supported module from
sharing an accidental global topology instance.
-/
structure ProfiledCombination
    {Atom : Type u}
    (data : QuotientNormData Atom) where
  combination : SemanticCombination Atom

namespace ProfiledCombination

variable {Atom : Type u} (data : QuotientNormData Atom)

/-- Forget only the profile tag, not any coefficient. -/
def coefficientEquiv :
    ProfiledCombination data ≃ SemanticCombination Atom where
  toFun := (·.combination)
  invFun := fun combination ↦ ⟨combination⟩
  left_inv := fun _ ↦ rfl
  right_inv := fun _ ↦ rfl

instance instAddCommGroup :
    AddCommGroup (ProfiledCombination data) :=
  (coefficientEquiv data).addCommGroup

instance instModule :
    Module ℂ (ProfiledCombination data) :=
  (coefficientEquiv data).module ℂ

/-- Profile erasure as an exact complex-linear equivalence. -/
def coefficientLinearEquiv :
    ProfiledCombination data ≃ₗ[ℂ] SemanticCombination Atom where
  __ := coefficientEquiv data
  map_add' := fun _ _ ↦ rfl
  map_smul' := fun _ _ ↦ rfl

/-- Insert finite coefficients into one selected profile. -/
def wrapLinear :
    SemanticCombination Atom →ₗ[ℂ] ProfiledCombination data where
  toFun := fun combination ↦ ⟨combination⟩
  map_add' := fun _ _ ↦ rfl
  map_smul' := fun _ _ ↦ rfl

/-- The selected semantic seminorm on the profile-tagged carrier. -/
def seminorm : Seminorm ℂ (ProfiledCombination data) :=
  data.semanticSeminorm.comp
    (coefficientLinearEquiv data).toLinearMap

instance instSeminormedAddCommGroup :
    SeminormedAddCommGroup (ProfiledCombination data) :=
  (seminorm data).toAddGroupSeminorm.toSeminormedAddCommGroup

instance instNormedSpace :
    NormedSpace ℂ (ProfiledCombination data) where
  norm_smul_le scalar combination := by
    change
      data.semanticSeminorm
          (scalar • combination.combination) ≤
        ‖scalar‖ *
          data.semanticSeminorm combination.combination
    exact
      (map_smul_eq_mul data.semanticSeminorm scalar
        combination.combination).le

@[simp] theorem norm_eq
    (combination : ProfiledCombination data) :
    ‖combination‖ =
      data.semanticSeminorm combination.combination :=
  rfl

end ProfiledCombination

/-- Hausdorff quotient by exactly the semantic-seminorm null vectors. -/
abbrev SemanticSeparated
    {Atom : Type u}
    (data : QuotientNormData Atom) :=
  SeparationQuotient (ProfiledCombination data)

/-- The completed complex semantic Banach carrier. -/
abbrev BanachCarrier
    {Atom : Type u}
    (data : QuotientNormData Atom) :=
  UniformSpace.Completion (SemanticSeparated data)

/-- Canonical linear map from finite combinations into the separated quotient. -/
def rawToSeparated
    {Atom : Type u}
    (data : QuotientNormData Atom) :
    SemanticCombination Atom →ₗ[ℂ] SemanticSeparated data :=
  (SeparationQuotient.mkCLM ℂ (ProfiledCombination data)).toLinearMap.comp
    (ProfiledCombination.wrapLinear data)

/-- Canonical linear map from finite combinations into the Banach completion. -/
def rawToBanach
    {Atom : Type u}
    (data : QuotientNormData Atom) :
    SemanticCombination Atom →ₗ[ℂ] BanachCarrier data :=
  UniformSpace.Completion.toComplL.toLinearMap.comp
    (rawToSeparated data)

@[simp] theorem rawToSeparated_apply
    {Atom : Type u}
    (data : QuotientNormData Atom)
    (combination : SemanticCombination Atom) :
    rawToSeparated data combination =
      SeparationQuotient.mk
        (⟨combination⟩ : ProfiledCombination data) :=
  rfl

@[simp] theorem rawToBanach_apply
    {Atom : Type u}
    (data : QuotientNormData Atom)
    (combination : SemanticCombination Atom) :
    rawToBanach data combination =
      (SeparationQuotient.mk
        (⟨combination⟩ : ProfiledCombination data) :
        SemanticSeparated data) :=
  rfl

/-- The canonical map has exactly the selected semantic seminorm. -/
@[simp] theorem norm_rawToBanach
    {Atom : Type u}
    (data : QuotientNormData Atom)
    (combination : SemanticCombination Atom) :
    ‖rawToBanach data combination‖ =
      data.semanticSeminorm combination := by
  rw [rawToBanach_apply,
    UniformSpace.Completion.norm_coe,
    SeparationQuotient.norm_mk,
    ProfiledCombination.norm_eq]

/-- Finite semantic combinations are dense in the completed carrier. -/
theorem rawToBanach_denseRange
    {Atom : Type u}
    (data : QuotientNormData Atom) :
    DenseRange (rawToBanach data) := by
  apply UniformSpace.Completion.denseRange_coe.mono
  rintro point ⟨separated, rfl⟩
  obtain ⟨profiled, rfl⟩ :=
    SeparationQuotient.surjective_mk separated
  exact ⟨profiled.combination, rfl⟩

/-- The raw map kills exactly the declared semantic relation submodule. -/
theorem rawToBanach_eq_zero_iff
    {Atom : Type u}
    (data : QuotientNormData Atom)
    (combination : SemanticCombination Atom) :
    rawToBanach data combination = 0 ↔
      combination ∈ data.relations := by
  constructor
  · intro mappedZero
    have normZero :
        data.semanticSeminorm combination = 0 := by
      rw [← norm_rawToBanach data combination, mappedZero, norm_zero]
    exact (data.null_iff_relations combination).mp normZero
  · intro relationMember
    apply norm_eq_zero.mp
    rw [norm_rawToBanach]
    exact (data.null_iff_relations combination).mpr relationMember

/-- Canonical completed state of one semantic atom. -/
def atomState
    {Atom : Type u}
    (data : QuotientNormData Atom)
    (atom : Atom) :
    BanachCarrier data :=
  rawToBanach data (Finsupp.single atom 1)

/-- Algebraic span of all completed atom states. -/
def finiteSemanticSpan
    {Atom : Type u}
    (data : QuotientNormData Atom) :
    Submodule ℂ (BanachCarrier data) :=
  Submodule.span ℂ (Set.range (atomState data))

/-- Every finite semantic combination lands in the atom span. -/
theorem rawToBanach_mem_finiteSemanticSpan
    {Atom : Type u}
    (data : QuotientNormData Atom)
    (combination : SemanticCombination Atom) :
    rawToBanach data combination ∈ finiteSemanticSpan data := by
  classical
  induction combination using Finsupp.induction with
  | zero =>
      simpa only [map_zero] using
        (finiteSemanticSpan data).zero_mem
  | single_add atom scalar tail _ _ inductionHypothesis =>
      rw [map_add]
      apply (finiteSemanticSpan data).add_mem
      · have atomMember :
            atomState data atom ∈ finiteSemanticSpan data :=
          Submodule.subset_span (Set.mem_range_self atom)
        have scaledMember :=
          (finiteSemanticSpan data).smul_mem scalar atomMember
        have singleEquation :
            (Finsupp.single atom scalar :
              SemanticCombination Atom) =
              scalar • Finsupp.single atom 1 := by
          ext candidate
          simp
        rw [singleEquation, map_smul]
        exact scaledMember
      · exact inductionHypothesis

/-- Atom states have dense linear span in the Banach completion. -/
theorem finiteSemanticSpan_dense
    {Atom : Type u}
    (data : QuotientNormData Atom) :
    (finiteSemanticSpan data).topologicalClosure = ⊤ := by
  apply Submodule.dense_iff_topologicalClosure_eq_top.mp
  apply (rawToBanach_denseRange data).mono
  rintro point ⟨combination, rfl⟩
  exact rawToBanach_mem_finiteSemanticSpan data combination

/-- Completeness is supplied by the actual uniform completion. -/
theorem banachCarrier_complete
    {Atom : Type u}
    (data : QuotientNormData Atom) :
    CompleteSpace (BanachCarrier data) :=
  inferInstance

end Mathematics.Concept
