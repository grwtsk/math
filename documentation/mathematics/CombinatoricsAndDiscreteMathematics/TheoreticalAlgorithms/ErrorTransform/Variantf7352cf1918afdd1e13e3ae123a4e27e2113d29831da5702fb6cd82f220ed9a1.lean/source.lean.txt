-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ErrorFactor.Variant3811eba58a49d9c0e5e3e3dcd2d74efbfa9bb5929b4f76e044f4134552159688","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3811eba58a49d9c0e5e3e3dcd2d74efbfa9bb5929b4f76e044f4134552159688","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ErrorFactor.Variant3811eba58a49d9c0e5e3e3dcd2d74efbfa9bb5929b4f76e044f4134552159688","mathematical_subject":"Computation.DataStructures","original_sha256":"3811eba58a49d9c0e5e3e3dcd2d74efbfa9bb5929b4f76e044f4134552159688","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Attention/ErrorTransform.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Attention.Residual

/-!
# Affine error transforms

A theorem-bearing approximation forgets to the affine scalar transformer
`e ↦ L * e + ε`.  This module proves that the forgetting map preserves typed
composition and connects chronological scalar profiles to the authoritative
residual recurrence.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ErrorFactor.Variant3811eba58a49d9c0e5e3e3dcd2d74efbfa9bb5929b4f76e044f4134552159688

namespace Mathematics.Attention

open scoped NNReal

universe u v w

/-- Carrier-free local error and amplification data. -/
@[ext]
structure ErrorFactor where
  error : ℝ≥0
  gain : ℝ≥0

namespace ErrorFactor

/-- Embed scalar data into the single authoritative residual calculus. -/
def toResidualBound (factor : ErrorFactor) : ResidualBound Unit where
  kind := .sequenceApproximation
  localError := factor.error
  lipschitz := factor.gain
  proofRef := ()

/-- One affine update of an incoming discrepancy. -/
def advance (initial : ℝ≥0) (factor : ErrorFactor) : ℝ≥0 :=
  Residual.advance initial factor.toResidualBound

/-- Chronological propagation through a carrier-free scalar profile. -/
def propagateFrom (initial : ℝ≥0) (profile : List ErrorFactor) : ℝ≥0 :=
  Residual.propagateFrom initial (profile.map toResidualBound)

/-- Propagation from an exact common input. -/
def propagateResiduals (profile : List ErrorFactor) : ℝ≥0 :=
  propagateFrom 0 profile

/-- Product of all gains in a suffix. -/
def downstreamGain (profile : List ErrorFactor) : ℝ≥0 :=
  Residual.downstreamGain (profile.map toResidualBound)

/-- Sum of each local error amplified by every strictly downstream gain. -/
def weightedResidual (profile : List ErrorFactor) : ℝ≥0 :=
  Residual.weightedResidual (profile.map toResidualBound)

@[simp]
theorem advance_def (initial : ℝ≥0) (factor : ErrorFactor) :
    advance initial factor = factor.gain * initial + factor.error := rfl

@[simp]
theorem propagateFrom_nil (initial : ℝ≥0) :
    propagateFrom initial [] = initial := rfl

@[simp]
theorem propagateFrom_cons
    (initial : ℝ≥0)
    (factor : ErrorFactor)
    (rest : List ErrorFactor) :
    propagateFrom initial (factor :: rest) =
      propagateFrom (factor.gain * initial + factor.error) rest := rfl

/-- Scalar profiles compose by chronological list concatenation. -/
theorem propagateFrom_append
    (initial : ℝ≥0)
    (first second : List ErrorFactor) :
    propagateFrom initial (first ++ second) =
      propagateFrom (propagateFrom initial first) second := by
  simpa [propagateFrom, List.map_append] using
    (Residual.propagateFrom_append
      (ProofRef := Unit)
      initial
      (first.map toResidualBound)
      (second.map toResidualBound))

/-- Closed form for an arbitrary incoming discrepancy. -/
theorem propagateFrom_closedForm
    (initial : ℝ≥0)
    (profile : List ErrorFactor) :
    propagateFrom initial profile =
      initial * downstreamGain profile + weightedResidual profile := by
  simpa [propagateFrom, downstreamGain, weightedResidual] using
    (Residual.propagateFrom_closedForm
      (ProofRef := Unit)
      initial
      (profile.map toResidualBound))

/-- Closed form for an exact common input. -/
theorem propagateResiduals_closedForm
    (profile : List ErrorFactor) :
    propagateResiduals profile = weightedResidual profile := by
  simpa [propagateResiduals] using
    (propagateFrom_closedForm 0 profile)

end ErrorFactor

/-- The affine monoid acting on nonnegative error bounds. -/
@[ext]
structure ErrorTransform where
  gain : ℝ≥0
  offset : ℝ≥0

namespace ErrorTransform

/-- Apply `e ↦ L * e + ε`. -/
def apply (transform : ErrorTransform) (error : ℝ≥0) : ℝ≥0 :=
  transform.gain * error + transform.offset

instance : CoeFun ErrorTransform (fun _ => ℝ≥0 → ℝ≥0) where
  coe := apply

/-- Identity error transformer. -/
def id : ErrorTransform where
  gain := 1
  offset := 0

/-- `comp later earlier` applies `earlier` first and `later` second. -/
def comp (later earlier : ErrorTransform) : ErrorTransform where
  gain := later.gain * earlier.gain
  offset := later.gain * earlier.offset + later.offset

/-- Regard one scalar profile entry as an affine transformer. -/
def ofFactor (factor : ErrorFactor) : ErrorTransform where
  gain := factor.gain
  offset := factor.error

@[simp]
theorem apply_def (transform : ErrorTransform) (error : ℝ≥0) :
    transform error = transform.gain * error + transform.offset := rfl

@[simp]
theorem id_apply (error : ℝ≥0) :
    id error = error := by
  simp [id, apply]

@[simp]
theorem comp_apply
    (later earlier : ErrorTransform)
    (error : ℝ≥0) :
    comp later earlier error = later (earlier error) := by
  simp [comp, apply]
  ring

@[simp]
theorem id_comp (transform : ErrorTransform) :
    comp id transform = transform := by
  ext <;> simp [id, comp]

@[simp]
theorem comp_id (transform : ErrorTransform) :
    comp transform id = transform := by
  ext <;> simp [id, comp]

/-- Associativity of `(L₂, ε₂) ⋆ (L₁, ε₁) = (L₂L₁, L₂ε₁ + ε₂)`. -/
theorem comp_assoc
    (third second first : ErrorTransform) :
    comp (comp third second) first =
      comp third (comp second first) := by
  ext <;> simp [comp] <;> ring

instance : Monoid ErrorTransform where
  one := id
  mul := comp
  one_mul := id_comp
  mul_one := comp_id
  mul_assoc := comp_assoc

/-- Condense a chronological scalar profile into one affine transformer. -/
def segment : List ErrorFactor → ErrorTransform
  | [] => id
  | factor :: rest => comp (segment rest) (ofFactor factor)

@[simp]
theorem segment_nil :
    segment [] = id := rfl

@[simp]
theorem segment_cons (factor : ErrorFactor) (rest : List ErrorFactor) :
    segment (factor :: rest) =
      comp (segment rest) (ofFactor factor) := rfl

/-- The affine segment action is exactly the authoritative scalar fold. -/
@[simp]
theorem segment_apply
    (profile : List ErrorFactor)
    (initial : ℝ≥0) :
    segment profile initial =
      ErrorFactor.propagateFrom initial profile := by
  induction profile generalizing initial with
  | nil =>
      simp [segment, id, apply, ErrorFactor.propagateFrom]
  | cons factor rest inductionHypothesis =>
      change
        comp (segment rest) (ofFactor factor) initial =
          ErrorFactor.propagateFrom
            (factor.gain * initial + factor.error)
            rest
      rw [comp_apply, inductionHypothesis]
      rfl

/-- The segment gain is the product of all chronological gains. -/
theorem segment_gain (profile : List ErrorFactor) :
    (segment profile).gain =
      ErrorFactor.downstreamGain profile := by
  induction profile with
  | nil =>
      simp [segment, id, ErrorFactor.downstreamGain,
        Residual.downstreamGain]
  | cons factor rest inductionHypothesis =>
      simp only [segment, comp, ErrorFactor.downstreamGain,
        List.map_cons, Residual.downstreamGain, List.map_map,
        List.prod_cons]
      change
        (segment rest).gain * factor.gain =
          factor.gain *
            (List.map
              (fun entry => entry.gain)
              rest).prod
      rw [inductionHypothesis]
      simp [ErrorFactor.downstreamGain, Residual.downstreamGain]
      ac_rfl

/-- The segment offset is the weighted sum of local residuals. -/
theorem segment_offset (profile : List ErrorFactor) :
    (segment profile).offset =
      ErrorFactor.weightedResidual profile := by
  have applied := segment_apply profile 0
  rw [ErrorFactor.propagateFrom_closedForm] at applied
  simpa [apply] using applied

end ErrorTransform

section ControlledProjection

variable {X : Type u} {Y : Type v} {Z : Type w}
variable [PseudoMetricSpace X]
variable [PseudoMetricSpace Y]
variable [PseudoMetricSpace Z]

namespace ControlledApproximation

/-- Forget carrier data while retaining the certified affine error action. -/
def toErrorTransform
    (approximation : ControlledApproximation X Y) :
    ErrorTransform where
  gain := approximation.lipschitz
  offset := approximation.localError

/-- The scalar profile entry carried by one theorem-bearing approximation. -/
def toErrorFactor
    (approximation : ControlledApproximation X Y) :
    ErrorFactor where
  gain := approximation.lipschitz
  error := approximation.localError

/-- Incoming-error behavior of one theorem-bearing approximation. -/
def errorTransformer
    (approximation : ControlledApproximation X Y) :
    ℝ≥0 → ℝ≥0 :=
  approximation.toErrorTransform

@[simp]
theorem toErrorTransform_comp
    (later : ControlledApproximation Y Z)
    (earlier : ControlledApproximation X Y) :
    (comp later earlier).toErrorTransform =
      ErrorTransform.comp
        later.toErrorTransform
        earlier.toErrorTransform := rfl

@[simp]
theorem toErrorTransform_toErrorFactor
    (approximation : ControlledApproximation X Y) :
    ErrorTransform.ofFactor approximation.toErrorFactor =
      approximation.toErrorTransform := rfl

/-- Typed composition becomes ordinary function composition on error space. -/
theorem errorTransformer_comp
    (later : ControlledApproximation Y Z)
    (earlier : ControlledApproximation X Y) :
    (comp later earlier).errorTransformer =
      later.errorTransformer ∘ earlier.errorTransformer := by
  funext error
  exact ErrorTransform.comp_apply
    later.toErrorTransform earlier.toErrorTransform error

/--
One controlled approximation maps an incoming discrepancy `e` to at most
`L * e + ε`; only the reference map needs a Lipschitz certificate.
-/
theorem input_error_bound
    (approximation : ControlledApproximation X Y)
    {implementationInput referenceInput : X}
    {initial : ℝ≥0}
    (initialSound :
      nndist implementationInput referenceInput ≤ initial) :
    nndist
        (approximation.implementation implementationInput)
        (approximation.reference referenceInput) ≤
      approximation.errorTransformer initial := by
  calc
    nndist
        (approximation.implementation implementationInput)
        (approximation.reference referenceInput)
        ≤
        nndist
            (approximation.implementation implementationInput)
            (approximation.reference implementationInput) +
          nndist
            (approximation.reference implementationInput)
            (approximation.reference referenceInput) :=
      nndist_triangle _ _ _
    _ ≤
        approximation.localError +
          approximation.lipschitz *
            nndist implementationInput referenceInput :=
      add_le_add
        (approximation.localSound implementationInput)
        (approximation.referenceLipschitz.nndist_le
          implementationInput referenceInput)
    _ ≤
        approximation.localError +
          approximation.lipschitz * initial := by
      exact add_le_add_right
        (mul_le_mul_right initialSound approximation.lipschitz)
        approximation.localError
    _ = approximation.errorTransformer initial := by
      simp [errorTransformer, toErrorTransform, ErrorTransform.apply]
      exact add_comm _ _

/-- Parenthesization does not change the declared composite gain. -/
theorem comp_lipschitz_assoc
    {W : Type*}
    [PseudoMetricSpace W]
    (third : ControlledApproximation Z W)
    (second : ControlledApproximation Y Z)
    (first : ControlledApproximation X Y) :
    (comp (comp third second) first).lipschitz =
      (comp third (comp second first)).lipschitz := by
  simp [comp]
  ac_rfl

/-- Parenthesization does not change reference behavior. -/
theorem comp_reference_assoc
    {W : Type*}
    [PseudoMetricSpace W]
    (third : ControlledApproximation Z W)
    (second : ControlledApproximation Y Z)
    (first : ControlledApproximation X Y) :
    (comp (comp third second) first).reference =
      (comp third (comp second first)).reference := rfl

/-- Parenthesization does not change implementation behavior. -/
theorem comp_implementation_assoc
    {W : Type*}
    [PseudoMetricSpace W]
    (third : ControlledApproximation Z W)
    (second : ControlledApproximation Y Z)
    (first : ControlledApproximation X Y) :
    (comp (comp third second) first).implementation =
      (comp third (comp second first)).implementation := rfl

end ControlledApproximation

end ControlledProjection

end Mathematics.Attention
