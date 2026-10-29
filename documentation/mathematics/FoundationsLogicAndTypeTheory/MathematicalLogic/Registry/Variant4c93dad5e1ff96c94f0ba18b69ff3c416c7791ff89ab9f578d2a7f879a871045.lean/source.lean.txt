import FCRS.ControlledPlane.Claims

universe uObj uHom vObj vHom uData

namespace FCRS.ControlledPlane

/--
The controlled-plane research trust boundary.

Only obligations not derivable from the typed data occur here.  In particular,
decoder separation and operation reconstruction are not registry fields.
-/
structure ControlledPlaneResearchRegistry
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop where
  cf01 : CF01Claim S M
  cf02 : CF02Claim S M
  cf04 : CF04ResearchInput M
  cf06 : CF06Claim M
  cf09 : CF09Claim S M
  cf10 : CF10Claim M
  cf11 : CF11Claim S M
  cf12 : CF12Claim M
  cf13 : CF13Claim M
  operationClosureBridge :
    S.P.operationClosure →
      ∀ c,
        DesignatedOperationCompatible
          M.preservationSpecification (M.fixation.fix c)

/-- The scoped CT claims used by the controlled-plane assembly. -/
structure ControlledPlanePrerequisites
    (S : RealizationSystem.{uObj, uHom}) : Prop where
  ct01 : CT01Claim S
  ct03 : CT03Claim S
  ct13 : CT13Claim S
  ct15 : CT15Claim S

namespace ControlledPlanePrerequisites

/-- Select the four scoped CT claims from the existing theorem registry. -/
theorem ofTheoremRegistry
    {S : RealizationSystem.{uObj, uHom}}
    (registry : TheoremRegistry S) : ControlledPlanePrerequisites S where
  ct01 := registry.ct01
  ct03 := registry.ct03
  ct13 := registry.ct13
  ct15 := registry.ct15

end ControlledPlanePrerequisites

/-- Premises needed to apply the four conditional CT claims. -/
structure ControlledPlaneSourceHypotheses
    (S : RealizationSystem.{uObj, uHom}) : Prop where
  algebraicFiniteType : S.P.algebraicFiniteType
  algebraicSeparated : S.P.algebraicSeparated
  formalProfile : S.P.formalProfile
  tensorAndBaseChangeProfile : S.P.tensorAndBaseChangeProfile
  sheafy : S.P.sheafy
  adicProfile : S.P.adicProfile

/--
The result of the scoped conditional assembly.  Every field is a proposition;
no categorical limit, topology, or bare planar embedding is introduced.
-/
structure ControlledPlaneCompleteness
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop where
  closedCoordinateRegime : ClosedCoordinateRegime S
  fixationFamilyExists :
    Nonempty
      (CoordinateFixationLayer
        S.carrier.categories.Global M.Fixed M.ClosedCoordinate)
  fixationFunctorial :
    IsClosedCoordinateFixation M.fixation M.fixationSpecification
  designatedConeAndBaseChangeCompatible :
    ∀ c,
      DesignatedConeAndBaseChangeCompatible
        M.preservationSpecification (M.fixation.fix c)
  admittedOperationClosure :
    ∀ c,
      DesignatedOperationCompatible
        M.preservationSpecification (M.fixation.fix c)
  sieveAdmissibility : CF03Claim M
  traversalPreserved : CF04Claim M
  controlledPresentationPremises : ControlledPresentationPremises M
  decoderDerivedSeparation : CF05Claim M
  pairedObservationInjective :
    Function.Injective (combinedObservation M.observation)
  controlNormalized : CF06Claim M
  decoderLossless : CF07Claim M
  operationHomomorphic :
    ∃ D : LosslessDecoder M.observation, CF08Claim M D
  closedCoordinateSeparation :
    ClosedCoordinateSeparating
      M.ClosedCoordinate M.Entity M.FixedCoordinateValue M.fixedAt
  closedCoordinateComplete : CF10Claim M
  refinementCoherent : RefinementCoherent M.refinement
  controlledPresentationExists :
    Nonempty (CoherentControlledPresentation M.refinement M.observation)
  compactGeometricCarrier : CF13Claim M
  noEmbeddingFieldRequired : CF14Claim M

end FCRS.ControlledPlane
