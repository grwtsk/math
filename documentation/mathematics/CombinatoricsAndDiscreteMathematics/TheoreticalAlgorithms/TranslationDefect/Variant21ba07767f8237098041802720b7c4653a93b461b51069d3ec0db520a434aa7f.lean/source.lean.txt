import Surface.ContinuousAssurance.WorldModel.Translation

/-!
# Translation paths and explicit defects

Defects compare two declared routes with the same endpoints. A zero-valued
detector has only the meaning stated by `exactZeroMeaning`; no completeness
claim is inferred.
-/

namespace Surface.ContinuousAssurance.WorldModel

/-- Erased metadata for one typed translation step. -/
structure TranslationStep where
  identity : TranslationId
  source : WorldModelVersionId
  target : WorldModelVersionId
  relation : ModelTranslationRelation
  obligations : List ObligationId
  deriving DecidableEq, Repr

/-- Finite translation route with explicitly checked endpoint chaining. -/
structure TranslationPath where
  source : WorldModelVersionId
  target : WorldModelVersionId
  steps : List TranslationStep
  endpointsValid :
    steps = [] → source = target
  adjacentValid :
    ∀ first second suffix,
      steps = first :: second :: suffix → first.target = second.source

/-- Declared comparison semantics for two routes. -/
inductive DefectComparison
  | propositionMismatch
  | counterexampleMismatch
  | authorityMismatch
  | provenanceMismatch
  | versionMismatch
  | missingComparison
  deriving DecidableEq, Repr

/-- Typed two-route defect record. -/
structure TranslationTriangleDefect where
  source : WorldModelVersionId
  target : WorldModelVersionId
  directRoute : TranslationPath
  compositeRoute : TranslationPath
  directEndpoints :
    directRoute.source = source ∧ directRoute.target = target
  compositeEndpoints :
    compositeRoute.source = source ∧ compositeRoute.target = target
  comparison : DefectComparison
  exactZeroMeaning : Prop
  affectedObjects : List MathematicalObjectId
  obligations : List ObligationId

/-- TRN-10: both paths in a triangle defect have the declared common endpoints. -/
theorem TranslationTriangleDefect.common_endpoints
    (defect : TranslationTriangleDefect) :
    (defect.directRoute.source = defect.source ∧
      defect.directRoute.target = defect.target) ∧
    (defect.compositeRoute.source = defect.source ∧
      defect.compositeRoute.target = defect.target) :=
  ⟨defect.directEndpoints, defect.compositeEndpoints⟩

/-- Missing route comparison is represented as an obligation, not as zero. -/
structure MissingComparison where
  source : WorldModelVersionId
  target : WorldModelVersionId
  obligation : ObligationRecord
  obligation_open : obligation.IsOpen

end Surface.ContinuousAssurance.WorldModel
