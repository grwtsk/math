-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResidueChannel.Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ResidueChannel.Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86","mathematical_subject":"Computation.DataStructures","original_sha256":"c7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/staged-validation-6c1160a309e689e3/Mathematics/NeuralDiffusion/Residue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.NeuralDiffusion.Prismatic

/-!
# Compactification residue and exact boundary activation

The localization connecting morphism and purity/residue map remain supplied
mathematical data.  Activation is proof-relevant zero/nonzero elimination, never
a floating threshold.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResidueChannel.Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86

namespace Mathematics.NeuralDiffusion

universe u v w x y z

/--
Certified localization and purity data.  The degree shift, twist, and
coefficient object are represented by explicit metadata rather than inferred
from notation.
-/
structure ResidueChannel
    (InteriorClass : Type u)
    (SupportedClass : Type v)
    (Residue : Type w) where
  connecting : InteriorClass → SupportedClass
  purity : SupportedClass → Residue
  degreeShift : Int
  twist : String
  coefficientObject : String
  localizationEvidence : EvidenceId
  purityEvidence : EvidenceId

namespace ResidueChannel

variable
    {InteriorClass : Type u}
    {SupportedClass : Type v}
    {Residue : Type w}

def residue
    (channel : ResidueChannel InteriorClass SupportedClass Residue)
    (cohomologyClass : InteriorClass) :
    Residue :=
  channel.purity (channel.connecting cohomologyClass)

end ResidueChannel

/-- A proof-relevant exact decision for one residue value. -/
inductive ResidueDecision {Residue : Type u} [Zero Residue] (value : Residue)
  | vanishes (proof : value = 0)
  | nonvanishes (proof : value ≠ 0)

namespace ResidueDecision

variable {Residue : Type u} [Zero Residue] {value : Residue}

def activation (decision : ResidueDecision value) : Bool :=
  match decision with
  | .vanishes _ => false
  | .nonvanishes _ => true

@[simp] theorem activation_eq_true_iff
    (decision : ResidueDecision value) :
    decision.activation = true ↔ value ≠ 0 := by
  cases decision with
  | vanishes proof => simp [activation, proof]
  | nonvanishes proof => simp [activation, proof]

@[simp] theorem activation_eq_false_iff
    (decision : ResidueDecision value) :
    decision.activation = false ↔ value = 0 := by
  cases decision with
  | vanishes proof => simp [activation, proof]
  | nonvanishes proof => simp [activation, proof]

end ResidueDecision

inductive ActivationAttempt
  | decided (activation : Bool)
  | residueUndischarged
  deriving DecidableEq, Repr

def attemptActivation
    {Residue : Type u} [Zero Residue]
    {value : Residue}
    (decision : Option (ResidueDecision value)) :
    ActivationAttempt :=
  match decision with
  | some proof => .decided proof.activation
  | none => .residueUndischarged

@[simp] theorem attemptActivation_none
    {Residue : Type u} [Zero Residue] {value : Residue} :
    attemptActivation (Residue := Residue)
      (value := value) none = .residueUndischarged :=
  rfl

/-- Exact payload emitted when a nonzero residue activates the boundary. -/
structure BoundaryRequest
    (State : Type u)
    (Divisor : Type v)
    (Residue : Type w)
    (Invariant : Type x)
    (Obligation : Type y)
    [Zero Residue] where
  state : State
  divisor : Divisor
  residue : Residue
  residueNonzero : residue ≠ 0
  targetStratum : String
  preservedInvariants : List Invariant
  continuationObligation : Obligation

inductive TotalStepResult
    (State : Type u)
    (Divisor : Type v)
    (Residue : Type w)
    (Invariant : Type x)
    (Obligation : Type y)
    [Zero Residue]
  | interior (state : State)
  | boundary
      (request :
        BoundaryRequest State Divisor Residue Invariant Obligation)
  | residueUndischarged

/--
The total operational step.  A supplied decision either continues through the
interior or emits an exact surgery obligation with a nonzero residue proof.
-/
def totalStep
    {State : Type u}
    {InteriorClass : Type v}
    {SupportedClass : Type w}
    {Residue : Type x}
    {Divisor : Type y}
    {Invariant : Type z}
    {Obligation : Type max u v}
    [Zero Residue]
    (channel : ResidueChannel InteriorClass SupportedClass Residue)
    (classOf : State → InteriorClass)
    (decision :
      ∀ state, ResidueDecision (channel.residue (classOf state)))
    (interiorStep : State → State)
    (divisor : Divisor)
    (targetStratum : State → String)
    (invariants : State → List Invariant)
    (obligation : State → Obligation)
    (state : State) :
    TotalStepResult State Divisor Residue Invariant Obligation :=
  match decision state with
  | .vanishes _ => .interior (interiorStep state)
  | .nonvanishes proof =>
      .boundary
        { state := state
          divisor := divisor
          residue := channel.residue (classOf state)
          residueNonzero := proof
          targetStratum := targetStratum state
          preservedInvariants := invariants state
          continuationObligation := obligation state }

/--
Partial decision procedure.  Failure to produce either proof is represented
explicitly and cannot fall through to either operational branch.
-/
def attemptTotalStep
    {State : Type u}
    {InteriorClass : Type v}
    {SupportedClass : Type w}
    {Residue : Type x}
    {Divisor : Type y}
    {Invariant : Type z}
    {Obligation : Type max u v}
    [Zero Residue]
    (channel : ResidueChannel InteriorClass SupportedClass Residue)
    (classOf : State → InteriorClass)
    (decision :
      ∀ state, Option (ResidueDecision (channel.residue (classOf state))))
    (interiorStep : State → State)
    (divisor : Divisor)
    (targetStratum : State → String)
    (invariants : State → List Invariant)
    (obligation : State → Obligation)
    (state : State) :
    TotalStepResult State Divisor Residue Invariant Obligation :=
  match decision state with
  | none => .residueUndischarged
  | some (.vanishes _) => .interior (interiorStep state)
  | some (.nonvanishes proof) =>
      .boundary
        { state := state
          divisor := divisor
          residue := channel.residue (classOf state)
          residueNonzero := proof
          targetStratum := targetStratum state
          preservedInvariants := invariants state
          continuationObligation := obligation state }

theorem totalStep_boundary_has_nonzero_residue
    {State : Type u}
    {InteriorClass : Type v}
    {SupportedClass : Type w}
    {Residue : Type x}
    {Divisor : Type y}
    {Invariant : Type z}
    {Obligation : Type max u v}
    [Zero Residue]
    (channel : ResidueChannel InteriorClass SupportedClass Residue)
    (classOf : State → InteriorClass)
    (decision :
      ∀ state, ResidueDecision (channel.residue (classOf state)))
    (interiorStep : State → State)
    (divisor : Divisor)
    (targetStratum : State → String)
    (invariants : State → List Invariant)
    (obligation : State → Obligation)
    (state : State)
    (request :
      BoundaryRequest State Divisor Residue Invariant Obligation)
    (_hboundary :
      totalStep channel classOf decision interiorStep divisor
        targetStratum invariants obligation state =
          .boundary request) :
    request.residue ≠ 0 :=
  request.residueNonzero

end Mathematics.NeuralDiffusion
