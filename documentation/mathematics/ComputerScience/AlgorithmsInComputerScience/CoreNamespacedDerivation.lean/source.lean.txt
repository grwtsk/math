-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TranslationLineage.Variantd09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TranslationLineage.Variantd09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717","mathematical_subject":"Computation.DataStructures","original_sha256":"d09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/TheoremTransfer/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Foundations

/-!
The domain-neutral semantic theorem-transfer kernel.

Forward preservation, reverse reflection, and bidirectional equivalence are
different types.  Composition preserves the exact intermediate theory,
assumption set, scope, foundation path, component identities, and loss ledger.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TranslationLineage.Variantd09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717

namespace FCRS.TheoremTransfer

universe uSO uSP uTO uTP uUO uUP uSA uTA uUA uAggregate

/--
Provenance tree distinguishing atomic translations from compositions.

`uninstantiatedComposite` is sufficient for abstract preservation composition,
but deliberately has no derivation-DAG realization constructor.  A concrete
theorem derivation must use `composite`, whose expected middle theory and
proposition artifacts are fixed before a graph realization can be supplied.
-/
inductive TranslationLineage where
  | atomic (artifact : VersionId)
  | uninstantiatedComposite (first second : TranslationLineage)
  | composite
      (middleTheoryVersion middlePropositionArtifact : VersionId)
      (first second : TranslationLineage)
deriving Repr

namespace TranslationLineage

/-- Root identity committed to by a lineage tree. -/
def rootArtifact : TranslationLineage → VersionId
  | .atomic artifact => artifact
  | .uninstantiatedComposite first second =>
      VersionId.composite first.rootArtifact second.rootArtifact
  | .composite _ _ first second =>
      VersionId.composite first.rootArtifact second.rootArtifact

/-- Ordered atomic artifacts retained at every leaf of a lineage tree. -/
def leafArtifacts : TranslationLineage → List VersionId
  | .atomic artifact => [artifact]
  | .uninstantiatedComposite first second =>
      first.leafArtifacts ++ second.leafArtifacts
  | .composite _ _ first second => first.leafArtifacts ++ second.leafArtifacts

end TranslationLineage

/-- Assumption translation is indexed by both exact assumption inventories. -/
structure AssumptionTranslation
    {source : Theory} {target : Theory}
    (mapProposition : source.Proposition → target.Proposition)
    (sourceAssumptions : AssumptionSet source)
    (targetAssumptions : AssumptionSet target) where
  artifact : VersionId
  mapIndex : sourceAssumptions.Index → targetAssumptions.Index
  propositionExact : ∀ index,
    mapProposition (sourceAssumptions.assumption index).proposition =
      (targetAssumptions.assumption (mapIndex index)).proposition

/--
First-class discharge of one exact source assumption.  The indexed assumption
and its semantic proof cannot be replaced by a free-form discharge label.
-/
structure AssumptionDischarge
    {theory : Theory} (assumptions : AssumptionSet theory)
    (index : assumptions.Index) where
  artifact : VersionId
  proof : theory.Holds (assumptions.assumption index).proposition

/-- Exact evidence that one target assumption is the image of a source assumption. -/
structure MappedTargetAssumption
    {source : Theory} {target : Theory}
    (mapProposition : source.Proposition → target.Proposition)
    (sourceAssumptions : AssumptionSet source)
    (targetAssumptions : AssumptionSet target)
    (assumptionTranslation : AssumptionTranslation
      mapProposition sourceAssumptions targetAssumptions)
    (targetIndex : targetAssumptions.Index) where
  sourceIndex : sourceAssumptions.Index
  targetIndexExact : targetIndex = assumptionTranslation.mapIndex sourceIndex

/-- Explicit evidence ledger for an assumption introduced only at the target. -/
structure IntroducedTargetAssumption
    {target : Theory} (targetAssumptions : AssumptionSet target)
    (targetIndex : targetAssumptions.Index) where
  artifact : VersionId
  evidenceArtifacts : List VersionId
  evidenceNonempty : evidenceArtifacts ≠ []

/-- Complete, disjoint vocabulary for the provenance of one target assumption. -/
inductive TargetAssumptionClassification
    {source : Theory} {target : Theory}
    (mapProposition : source.Proposition → target.Proposition)
    (sourceAssumptions : AssumptionSet source)
    (targetAssumptions : AssumptionSet target)
    (assumptionTranslation : AssumptionTranslation
      mapProposition sourceAssumptions targetAssumptions)
    (targetIndex : targetAssumptions.Index) where
  | mapped (evidence : MappedTargetAssumption mapProposition
      sourceAssumptions targetAssumptions assumptionTranslation targetIndex)
  | introduced (evidence : IntroducedTargetAssumption
      targetAssumptions targetIndex)
  | discharged (evidence : AssumptionDischarge targetAssumptions targetIndex)

/-- Every target assumption is classified; silent target strengthening is impossible. -/
structure TargetAssumptionPartition
    {source : Theory} {target : Theory}
    (mapProposition : source.Proposition → target.Proposition)
    (sourceAssumptions : AssumptionSet source)
    (targetAssumptions : AssumptionSet target)
    (assumptionTranslation : AssumptionTranslation
      mapProposition sourceAssumptions targetAssumptions) where
  classify : ∀ targetIndex,
    TargetAssumptionClassification mapProposition sourceAssumptions
      targetAssumptions assumptionTranslation targetIndex

/-- Proof-only existence and an actual constructive witness are distinct data. -/
inductive ExistenceEvidence {Object : Type uSO} (property : Object → Prop) where
  | propositional (artifact : VersionId) (proof : ∃ object, property object)
  | constructive (artifact : VersionId) (value : Object) (proof : property value)

/-- Scope translation prevents an object from silently leaving declared scope. -/
structure ScopeTranslation
    {source : Theory} {target : Theory}
    (mapObject : source.Object → target.Object)
    (sourceScope : TransferScope source)
    (targetScope : TransferScope target) : Prop where
  mapsScope : ∀ object,
    sourceScope.contains object → targetScope.contains (mapObject object)

/--
A translation is indexed by exact source/target versions, foundations,
assumptions, and scopes.  Loss and canonicality are component ledgers rather
than a single strength flag, so composition cannot hide an intermediate loss.
-/
structure Translation
    (source target : Theory)
    {sourceFoundation targetFoundation : Foundation}
    (sourceVersion : MathematicalTheoryVersion source sourceFoundation)
    (targetVersion : MathematicalTheoryVersion target targetFoundation)
    (sourceAssumptions : AssumptionSet source)
    (targetAssumptions : AssumptionSet target)
    (sourceScope : TransferScope source)
    (targetScope : TransferScope target) where
  artifact : VersionId
  lineage : TranslationLineage
  lineageArtifactExact : lineage.rootArtifact = artifact
  foundationInterpretation :
    FoundationInterpretation sourceFoundation targetFoundation
  mapObject : source.Object → target.Object
  mapProposition : source.Proposition → target.Proposition
  assumptionTranslation : AssumptionTranslation
    mapProposition sourceAssumptions targetAssumptions
  targetAssumptionPartition : TargetAssumptionPartition mapProposition
    sourceAssumptions targetAssumptions assumptionTranslation
  scopeTranslation : ScopeTranslation mapObject sourceScope targetScope
  propositionScopeTranslation : ∀ proposition,
    PropositionWithinScope source sourceScope proposition →
      PropositionWithinScope target targetScope (mapProposition proposition)
  quantifierTransform : QuantifierTransform source target mapObject
  quantifierSourceExact :
    quantifierTransform.sourceProfile = sourceVersion.quantifierProfile
  quantifierTargetExact :
    quantifierTransform.targetProfile = targetVersion.quantifierProfile
  informationLoss : List InformationLossProfile
  informationLossNonempty : informationLoss ≠ []
  canonicality : List CanonicalityProfile

namespace Translation

/--
Legal composition.  The exact middle version, assumptions, and scope occur in
both operands' types.  The result retains a provenance tree and concatenates,
rather than summarizes away, both metadata ledgers.
-/
noncomputable def comp
    {source : Theory.{uSO, uSP}}
    {middle : Theory.{uTO, uTP}}
    {target : Theory.{uUO, uUP}}
    {sourceFoundation middleFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {middleVersion : MathematicalTheoryVersion middle middleFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {middleAssumptions : AssumptionSet middle}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {middleScope : TransferScope middle}
    {targetScope : TransferScope target}
    (first : Translation source middle sourceVersion middleVersion
      sourceAssumptions middleAssumptions sourceScope middleScope)
    (second : Translation middle target middleVersion targetVersion
      middleAssumptions targetAssumptions middleScope targetScope)
    (composedQuantifierMapEvidence : QuantifierSpecifiedMapEvidence source target
      (fun object => second.mapObject (first.mapObject object))) :
    Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope where
  artifact := VersionId.composite first.artifact second.artifact
  lineage := .uninstantiatedComposite first.lineage second.lineage
  lineageArtifactExact := by
    simp only [TranslationLineage.rootArtifact]
    rw [first.lineageArtifactExact, second.lineageArtifactExact]
  foundationInterpretation :=
    first.foundationInterpretation.comp second.foundationInterpretation
  mapObject := fun object => second.mapObject (first.mapObject object)
  mapProposition := fun proposition =>
    second.mapProposition (first.mapProposition proposition)
  assumptionTranslation := {
    artifact := VersionId.composite
      first.assumptionTranslation.artifact
      second.assumptionTranslation.artifact
    mapIndex := fun index =>
      second.assumptionTranslation.mapIndex
        (first.assumptionTranslation.mapIndex index)
    propositionExact := fun index =>
      Eq.trans
        (congrArg second.mapProposition
          (first.assumptionTranslation.propositionExact index))
          (second.assumptionTranslation.propositionExact
            (first.assumptionTranslation.mapIndex index))
  }
  targetAssumptionPartition := {
    classify := fun targetIndex =>
      match second.targetAssumptionPartition.classify targetIndex with
      | .mapped secondMapped =>
          match first.targetAssumptionPartition.classify
              secondMapped.sourceIndex with
          | .mapped firstMapped =>
              .mapped {
                sourceIndex := firstMapped.sourceIndex
                targetIndexExact := secondMapped.targetIndexExact.trans
                  (congrArg second.assumptionTranslation.mapIndex
                    firstMapped.targetIndexExact)
              }
          | .introduced firstIntroduction =>
              .introduced {
                artifact := VersionId.composite firstIntroduction.artifact
                  second.assumptionTranslation.artifact
                evidenceArtifacts := firstIntroduction.evidenceArtifacts ++
                  [second.assumptionTranslation.artifact]
                evidenceNonempty := by simp
              }
          | .discharged firstDischarge =>
              .introduced {
                artifact := VersionId.composite firstDischarge.artifact
                  second.assumptionTranslation.artifact
                evidenceArtifacts := [firstDischarge.artifact,
                  second.assumptionTranslation.artifact]
                evidenceNonempty := by simp
              }
      | .introduced secondIntroduction =>
          .introduced secondIntroduction
      | .discharged secondDischarge =>
          .discharged secondDischarge
  }
  scopeTranslation := {
    mapsScope := by
      intro object hObject
      exact second.scopeTranslation.mapsScope _
        (first.scopeTranslation.mapsScope object hObject)
  }
  propositionScopeTranslation := by
    intro proposition sourceInScope
    exact second.propositionScopeTranslation _
      (first.propositionScopeTranslation proposition sourceInScope)
  quantifierTransform := {
    artifact := VersionId.composite
      first.quantifierTransform.artifact second.quantifierTransform.artifact
    sourceProfile := first.quantifierTransform.sourceProfile
    targetProfile := second.quantifierTransform.targetProfile
    profileExact := by
      calc
        first.quantifierTransform.sourceProfile =
            first.quantifierTransform.targetProfile :=
          first.quantifierTransform.profileExact
        _ = middleVersion.quantifierProfile := first.quantifierTargetExact
        _ = second.quantifierTransform.sourceProfile :=
          second.quantifierSourceExact.symm
        _ = second.quantifierTransform.targetProfile :=
          second.quantifierTransform.profileExact
    unspecifiedCompatibility :=
      QuantifierUnspecifiedCompatibility.comp
        first.quantifierTransform.profileExact
        (first.quantifierTargetExact.trans
          second.quantifierSourceExact.symm)
        second.quantifierTransform.profileExact
        first.quantifierTransform.unspecifiedCompatibility
        second.quantifierTransform.unspecifiedCompatibility
        composedQuantifierMapEvidence
        [first.quantifierTransform.artifact, second.quantifierTransform.artifact]
        (by simp)
  }
  quantifierSourceExact := first.quantifierSourceExact
  quantifierTargetExact := second.quantifierTargetExact
  informationLoss := first.informationLoss ++ second.informationLoss
  informationLossNonempty := by
    intro hEmpty
    have lengths := congrArg List.length hEmpty
    have parts : first.informationLoss = [] ∧ second.informationLoss = [] := by
      simpa using lengths
    exact first.informationLossNonempty parts.1
  canonicality := first.canonicality ++ second.canonicality

end Translation

/-- A theorem artifact, proof, and proposition indexed by one theory version. -/
structure CertifiedTheorem
    {theory : Theory} {foundation : Foundation}
    (theoryVersion : MathematicalTheoryVersion theory foundation)
    (assumptions : AssumptionSet theory) where
  theoremArtifact : VersionId
  propositionArtifact : VersionId
  proofArtifact : VersionId
  proposition : theory.Proposition
  /-- Exact reified proof object retained under the theorem's assumptions. -/
  proofObject : assumptions.Holds → theory.ProofObject proposition

namespace CertifiedTheorem

/-- Semantic theorem obtained only by sounding the retained exact proof object. -/
def proof
    {theory : Theory} {foundation : Foundation}
    {theoryVersion : MathematicalTheoryVersion theory foundation}
    {assumptions : AssumptionSet theory}
    (certifiedTheorem : CertifiedTheorem theoryVersion assumptions) :
    assumptions.Holds → theory.Holds certifiedTheorem.proposition :=
  fun assumptionsHold => theory.proofObjectSound
    (certifiedTheorem.proofObject assumptionsHold)

end CertifiedTheorem

/-- Nonempty homogeneous aggregate of exact certified source theorems. -/
structure CertifiedTheoremAggregate
    {theory : Theory} {foundation : Foundation}
    (theoryVersion : MathematicalTheoryVersion theory foundation)
    (assumptions : AssumptionSet theory) where
  aggregateArtifact : VersionId
  Index : Type uAggregate
  member : Index → CertifiedTheorem theoryVersion assumptions
  sourceNonempty : Nonempty Index

/-- Forward truth preservation under exact indexed assumptions and scope. -/
structure PreservesTruth
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope) : Prop where
  sound : ∀ proposition,
    PropositionWithinScope source sourceScope proposition →
    (sourceAssumptions.Holds → source.Holds proposition) →
    targetAssumptions.Holds →
      target.Holds (translation.mapProposition proposition)

/-- Independent reverse truth reflection; preservation cannot inhabit it. -/
structure ReflectsTruth
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope) : Prop where
  sound : ∀ proposition,
    PropositionWithinScope source sourceScope proposition →
    (targetAssumptions.Holds →
      target.Holds (translation.mapProposition proposition)) →
    sourceAssumptions.Holds → source.Holds proposition

/-- Bidirectional transfer retains two separately typed evidence records. -/
structure TranslationEquivalence
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope) : Prop where
  preserves : PreservesTruth translation
  reflects : ReflectsTruth translation

/-- Immutable artifact identifying one proved forward preservation law. -/
structure PreservationTheorem
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope) where
  evidenceArtifact : VersionId
  law : PreservesTruth translation

/-- Immutable artifact identifying one independently proved reflection law. -/
structure ReflectionTheorem
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope) where
  evidenceArtifact : VersionId
  law : ReflectsTruth translation

/--
Exact object-level faithfulness on the declared scopes.  The decoder maps the
entire target scope back into the source scope and is a two-sided inverse there;
this is deliberately stronger than property reflection.
-/
structure ObjectFaithfulnessOnScope
    {source : Theory.{uSO, uSP}} {target : Theory.{uTO, uTP}}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope) where
  decoder : target.Object → source.Object
  decoderMapsScope : ∀ targetObject,
    targetScope.contains targetObject →
      sourceScope.contains (decoder targetObject)
  sourceRoundTrip : ∀ sourceObject,
    sourceScope.contains sourceObject →
      decoder (translation.mapObject sourceObject) = sourceObject
  targetRoundTrip : ∀ targetObject,
    targetScope.contains targetObject →
      translation.mapObject (decoder targetObject) = targetObject

namespace ObjectFaithfulnessOnScope

/-- A verified object round trip makes the object map injective on source scope. -/
theorem mapObject_injective
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    {translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope}
    (faithfulness : ObjectFaithfulnessOnScope translation)
    {left right : source.Object}
    (leftInScope : sourceScope.contains left)
    (rightInScope : sourceScope.contains right)
    (mappedEqual : translation.mapObject left = translation.mapObject right) :
    left = right := by
  calc
    left = faithfulness.decoder (translation.mapObject left) :=
      (faithfulness.sourceRoundTrip left leftInScope).symm
    _ = faithfulness.decoder (translation.mapObject right) :=
      congrArg faithfulness.decoder mappedEqual
    _ = right := faithfulness.sourceRoundTrip right rightInScope

end ObjectFaithfulnessOnScope

/--
A loss label is declared metadata unless separately justified.  Only an exact
object decoder/round trip plus proposition reflection for the same translation
can upgrade `Lossless` from a label to a kernel-checked assessment.
-/
inductive InformationLossAssessment
    {source : Theory.{uSO, uSP}} {target : Theory.{uTO, uTP}}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope) :
    InformationLossProfile → Type (max uSO uTO) where
  | declaredMetadata (profile : InformationLossProfile) :
      InformationLossAssessment translation profile
  | verifiedPropositionReflection (profile : InformationLossProfile)
      (reflection : ReflectionTheorem translation) :
      InformationLossAssessment translation profile
  | verifiedLossless (profile : InformationLossProfile)
      (classificationExact : profile.classification = .Lossless)
      (objectFaithfulness : ObjectFaithfulnessOnScope translation)
      (reflection : ReflectionTheorem translation) :
      InformationLossAssessment translation profile

namespace InformationLossAssessment

/-- Observable upgrade state; a declaration is never conflated with verification. -/
def IsVerifiedLossless
    {source : Theory.{uSO, uSP}} {target : Theory.{uTO, uTP}}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    {translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope}
    {profile : InformationLossProfile} :
    InformationLossAssessment translation profile → Prop
  | .declaredMetadata _ => False
  | .verifiedPropositionReflection _ _ => False
  | .verifiedLossless _ _ _ _ => True

end InformationLossAssessment

/-- Data-level equivalence witness retaining distinct forward/reverse artifacts. -/
structure EquivalenceWitness
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope) where
  witnessArtifact : VersionId
  preservation : PreservationTheorem translation
  reflection : ReflectionTheorem translation
  law : TranslationEquivalence translation

/-- Forward semantic bridges compose in source-to-target order. -/
theorem preservation_comp
    {source : Theory.{uSO, uSP}}
    {middle : Theory.{uTO, uTP}}
    {target : Theory.{uUO, uUP}}
    {sourceFoundation middleFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {middleVersion : MathematicalTheoryVersion middle middleFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {middleAssumptions : AssumptionSet middle}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {middleScope : TransferScope middle}
    {targetScope : TransferScope target}
    {first : Translation source middle sourceVersion middleVersion
      sourceAssumptions middleAssumptions sourceScope middleScope}
    {second : Translation middle target middleVersion targetVersion
      middleAssumptions targetAssumptions middleScope targetScope}
    (composedQuantifierMapEvidence : QuantifierSpecifiedMapEvidence source target
      (fun object => second.mapObject (first.mapObject object)))
    (firstPreserves : PreservesTruth first)
    (secondPreserves : PreservesTruth second) :
    PreservesTruth (first.comp second composedQuantifierMapEvidence) := by
  refine { sound := ?_ }
  intro proposition sourceInScope sourceProof targetAssumptionsHold
  exact secondPreserves.sound (first.mapProposition proposition)
    (first.propositionScopeTranslation proposition sourceInScope)
    (firstPreserves.sound proposition sourceInScope sourceProof)
    targetAssumptionsHold

/--
Reflection composes in the reverse operational order: reflect through the
second translation first, then through the first translation.
-/
theorem reflection_comp
    {source : Theory.{uSO, uSP}}
    {middle : Theory.{uTO, uTP}}
    {target : Theory.{uUO, uUP}}
    {sourceFoundation middleFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {middleVersion : MathematicalTheoryVersion middle middleFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {middleAssumptions : AssumptionSet middle}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {middleScope : TransferScope middle}
    {targetScope : TransferScope target}
    {first : Translation source middle sourceVersion middleVersion
      sourceAssumptions middleAssumptions sourceScope middleScope}
    {second : Translation middle target middleVersion targetVersion
      middleAssumptions targetAssumptions middleScope targetScope}
    (composedQuantifierMapEvidence : QuantifierSpecifiedMapEvidence source target
      (fun object => second.mapObject (first.mapObject object)))
    (secondReflects : ReflectsTruth second)
    (firstReflects : ReflectsTruth first) :
    ReflectsTruth (first.comp second composedQuantifierMapEvidence) := by
  refine { sound := ?_ }
  intro proposition sourceInScope targetProof sourceAssumptionsHold
  apply firstReflects.sound proposition sourceInScope
  · intro middleAssumptionsHold
    exact secondReflects.sound (first.mapProposition proposition)
      (first.propositionScopeTranslation proposition sourceInScope)
      targetProof middleAssumptionsHold
  · exact sourceAssumptionsHold

/-- Equivalences compose without identifying either translated proposition. -/
theorem equivalence_comp
    {source : Theory.{uSO, uSP}}
    {middle : Theory.{uTO, uTP}}
    {target : Theory.{uUO, uUP}}
    {sourceFoundation middleFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {middleVersion : MathematicalTheoryVersion middle middleFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {middleAssumptions : AssumptionSet middle}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {middleScope : TransferScope middle}
    {targetScope : TransferScope target}
    {first : Translation source middle sourceVersion middleVersion
      sourceAssumptions middleAssumptions sourceScope middleScope}
    {second : Translation middle target middleVersion targetVersion
      middleAssumptions targetAssumptions middleScope targetScope}
    (composedQuantifierMapEvidence : QuantifierSpecifiedMapEvidence source target
      (fun object => second.mapObject (first.mapObject object)))
    (firstEquivalence : TranslationEquivalence first)
    (secondEquivalence : TranslationEquivalence second) :
    TranslationEquivalence (first.comp second composedQuantifierMapEvidence) where
  preserves := preservation_comp
    composedQuantifierMapEvidence firstEquivalence.preserves
      secondEquivalence.preserves
  reflects := reflection_comp
    composedQuantifierMapEvidence secondEquivalence.reflects
      firstEquivalence.reflects

/-- Apply a forward bridge to one exact certified source theorem. -/
def transport_theorem
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (preservation : PreservationTheorem translation)
    (sourceTheorem : CertifiedTheorem sourceVersion sourceAssumptions)
    (sourceInScope :
      PropositionWithinScope source sourceScope sourceTheorem.proposition) :
    CertifiedTheorem targetVersion targetAssumptions where
  theoremArtifact := VersionId.composite
    (VersionId.composite sourceTheorem.theoremArtifact translation.artifact)
    preservation.evidenceArtifact
  propositionArtifact := VersionId.composite
    (VersionId.composite sourceTheorem.propositionArtifact translation.artifact)
    preservation.evidenceArtifact
  proofArtifact := VersionId.composite
    (VersionId.composite sourceTheorem.proofArtifact translation.artifact)
    preservation.evidenceArtifact
  proposition := translation.mapProposition sourceTheorem.proposition
  proofObject := fun targetAssumptionsHold => target.reifyProofObject
    (preservation.law.sound sourceTheorem.proposition sourceInScope
      sourceTheorem.proof targetAssumptionsHold)

/--
First-class multi-source application for a homogeneous theorem aggregate.
Every member must independently satisfy the exact source scope.
-/
structure AggregateTransportApplication
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (preservation : PreservationTheorem translation)
    (aggregate : CertifiedTheoremAggregate sourceVersion sourceAssumptions) where
  applicationArtifact : VersionId
  sourceInScope : ∀ index,
    PropositionWithinScope source sourceScope (aggregate.member index).proposition
  transported : aggregate.Index →
    CertifiedTheorem targetVersion targetAssumptions
  transportedExact : ∀ index, transported index =
    transport_theorem translation preservation (aggregate.member index)
      (sourceInScope index)

/-- Reflect one exact translated target theorem only through reverse evidence. -/
def reflect_theorem
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (reflection : ReflectionTheorem translation)
    (sourceProposition : source.Proposition)
    (sourceInScope : PropositionWithinScope source sourceScope sourceProposition)
    (targetTheorem : CertifiedTheorem targetVersion targetAssumptions)
    (targetExact : targetTheorem.proposition =
      translation.mapProposition sourceProposition) :
    CertifiedTheorem sourceVersion sourceAssumptions where
  theoremArtifact := VersionId.composite
    (VersionId.composite targetTheorem.theoremArtifact translation.artifact)
    reflection.evidenceArtifact
  propositionArtifact := VersionId.composite
    (VersionId.composite targetTheorem.propositionArtifact translation.artifact)
    reflection.evidenceArtifact
  proofArtifact := VersionId.composite
    (VersionId.composite targetTheorem.proofArtifact translation.artifact)
    reflection.evidenceArtifact
  proposition := sourceProposition
  proofObject := fun sourceAssumptionsHold => source.reifyProofObject
    (reflection.law.sound sourceProposition sourceInScope (by
      intro hTarget
      exact Eq.mp (congrArg target.Holds targetExact)
        (targetTheorem.proof hTarget)) sourceAssumptionsHold)

/-- Artifact-bearing application of one exact reflection theorem. -/
structure ReflectionApplication
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (reflection : ReflectionTheorem translation)
    (sourceProposition : source.Proposition)
    (sourceInScope : PropositionWithinScope source sourceScope sourceProposition)
    (targetTheorem : CertifiedTheorem targetVersion targetAssumptions)
    (targetExact : targetTheorem.proposition =
      translation.mapProposition sourceProposition) where
  applicationArtifact : VersionId
  reflectedTheorem : CertifiedTheorem sourceVersion sourceAssumptions
  reflectedTheoremExact : reflectedTheorem =
    reflect_theorem translation reflection sourceProposition sourceInScope
      targetTheorem targetExact

/--
The valid round trip is an `Iff` between evidence propositions.  It is not an
equality of source/target propositions, theories, objects, or artifacts.
-/
theorem transport_reflect_roundtrip
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    {translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope}
    (equivalence : TranslationEquivalence translation)
    (proposition : source.Proposition)
    (sourceInScope : PropositionWithinScope source sourceScope proposition) :
    (sourceAssumptions.Holds → source.Holds proposition) ↔
      (targetAssumptions.Holds →
        target.Holds (translation.mapProposition proposition)) := by
  constructor
  · exact equivalence.preserves.sound proposition sourceInScope
  · exact equivalence.reflects.sound proposition sourceInScope

/-- Artifact-bearing round-trip law bound to one exact equivalence witness. -/
structure RoundTripEvidence
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (equivalence : TranslationEquivalence translation) where
  artifact : VersionId
  proposition : source.Proposition
  sourceInScope : PropositionWithinScope source sourceScope proposition
  law : (sourceAssumptions.Holds → source.Holds proposition) ↔
    (targetAssumptions.Holds →
      target.Holds (translation.mapProposition proposition))
  lawExact : law =
    transport_reflect_roundtrip equivalence proposition sourceInScope

/-- Property transfer is licensed by one exact equivalence regime. -/
theorem property_transfer_under_equivalence
    {theory : Theory}
    {regime : EquivalenceRegime theory}
    {property : theory.Object → Prop}
    (invariant : PropertyInvariant regime property)
    {left right : theory.Object}
    (equivalent : regime.equivalent left right)
    (holdsAtLeft : property left) : property right := by
  have transfer := @PropertyInvariant.preserved
    theory regime property invariant left right equivalent
  exact transfer.mp holdsAtLeft

end FCRS.TheoremTransfer
