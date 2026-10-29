import Think.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.M496d706f7274732f417574686f726974794c6576656c2e6c65616e
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=100011|role=proof_code_atom|slug=targets-importplan|owner=canonical_owner|core=Targets/ImportPlan.lean|leaf=M546172676574732f496d706f7274506c616e2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Targets.ImportPlan

inductive ImportCandidateStatus where
  | definitionSurface
  | importedTheoremCandidate
  | retainedUntilCertified
  | openConjectureRetained
  | transferRequired
  | separatedKnownExternal
deriving DecidableEq, Repr

structure TargetImportCandidate where
  target : FWR.Target
  atomId : String
  residueKind : FWR.ResidueKind
  plannedAuthority : Think.Imports.AuthorityLevel
  status : ImportCandidateStatus
  finalTargetRetained : Bool
  note : String
deriving DecidableEq, Repr

def rhImportCandidates : List TargetImportCandidate := [
  { target := FWR.Target.RH
    atomId := "analyticZetaObject"
    residueKind := FWR.ResidueKind.missingDefinition
    plannedAuthority := Think.Imports.AuthorityLevel.statementSurface
    status := ImportCandidateStatus.definitionSurface
    finalTargetRetained := true
    note := "define the analytic zeta object before importing zeta facts" },
  { target := FWR.Target.RH
    atomId := "seriesDomain"
    residueKind := FWR.ResidueKind.missingDefinition
    plannedAuthority := Think.Imports.AuthorityLevel.statementSurface
    status := ImportCandidateStatus.definitionSurface
    finalTargetRetained := true
    note := "define the initial series domain" },
  { target := FWR.Target.RH
    atomId := "meromorphicContinuation"
    residueKind := FWR.ResidueKind.missingAnalyticContinuation
    plannedAuthority := Think.Imports.AuthorityLevel.importedTheorem
    status := ImportCandidateStatus.retainedUntilCertified
    finalTargetRetained := true
    note := "retain until an exact theorem for the chosen object is imported" },
  { target := FWR.Target.RH
    atomId := "functionalEquation"
    residueKind := FWR.ResidueKind.missingFunctionalEquation
    plannedAuthority := Think.Imports.AuthorityLevel.importedTheorem
    status := ImportCandidateStatus.retainedUntilCertified
    finalTargetRetained := true
    note := "retain until the chosen functional equation is imported and adapted" },
  { target := FWR.Target.RH
    atomId := "finalAllZerosOnCriticalLine"
    residueKind := FWR.ResidueKind.conjecturalAtom
    plannedAuthority := Think.Imports.AuthorityLevel.metadata
    status := ImportCandidateStatus.openConjectureRetained
    finalTargetRetained := true
    note := "final RH statement remains residue" }
]

def primeGapImportCandidates : List TargetImportCandidate := [
  { target := FWR.Target.PrimeGapBounds
    atomId := "finitePrimeWindow"
    residueKind := FWR.ResidueKind.missingFiniteWitness
    plannedAuthority := Think.Imports.AuthorityLevel.internalProof
    status := ImportCandidateStatus.definitionSurface
    finalTargetRetained := true
    note := "formalize elementary prime windows first" },
  { target := FWR.Target.PrimeGapBounds
    atomId := "admissibleTuple"
    residueKind := FWR.ResidueKind.missingFiniteWitness
    plannedAuthority := Think.Imports.AuthorityLevel.internalProof
    status := ImportCandidateStatus.definitionSurface
    finalTargetRetained := true
    note := "finite tuple certificates can be checked locally" },
  { target := FWR.Target.PrimeGapBounds
    atomId := "distributionCertificate"
    residueKind := FWR.ResidueKind.missingDistributionEstimate
    plannedAuthority := Think.Imports.AuthorityLevel.importedTheorem
    status := ImportCandidateStatus.retainedUntilCertified
    finalTargetRetained := true
    note := "distribution estimates require exact constants and hypotheses" },
  { target := FWR.Target.PrimeGapBounds
    atomId := "maynardWeightCertificate"
    residueKind := FWR.ResidueKind.missingSieveEstimate
    plannedAuthority := Think.Imports.AuthorityLevel.importedTheorem
    status := ImportCandidateStatus.retainedUntilCertified
    finalTargetRetained := true
    note := "sieve machinery is retained until certified" },
  { target := FWR.Target.PrimeGapBounds
    atomId := "finalImprovedGapBound"
    residueKind := FWR.ResidueKind.conjecturalAtom
    plannedAuthority := Think.Imports.AuthorityLevel.metadata
    status := ImportCandidateStatus.openConjectureRetained
    finalTargetRetained := true
    note := "exact gap claims remain residue" }
]

def kakeyaImportCandidates : List TargetImportCandidate := [
  { target := FWR.Target.KakeyaResults
    atomId := "finiteFieldKakeyaCandidate"
    residueKind := FWR.ResidueKind.externalTheoremNotImported
    plannedAuthority := Think.Imports.AuthorityLevel.importedTheorem
    status := ImportCandidateStatus.separatedKnownExternal
    finalTargetRetained := true
    note := "finite-field theorem candidate is separated from the Euclidean target" },
  { target := FWR.Target.KakeyaResults
    atomId := "finiteTubeModel"
    residueKind := FWR.ResidueKind.missingDefinition
    plannedAuthority := Think.Imports.AuthorityLevel.statementSurface
    status := ImportCandidateStatus.definitionSurface
    finalTargetRetained := true
    note := "tube model is definitional infrastructure" },
  { target := FWR.Target.KakeyaResults
    atomId := "scaleUniformEstimate"
    residueKind := FWR.ResidueKind.missingUniformBound
    plannedAuthority := Think.Imports.AuthorityLevel.transferTheorem
    status := ImportCandidateStatus.retainedUntilCertified
    finalTargetRetained := true
    note := "uniform scale estimate remains a proof obligation" },
  { target := FWR.Target.KakeyaResults
    atomId := "finalKakeyaDimensionClaim"
    residueKind := FWR.ResidueKind.conjecturalAtom
    plannedAuthority := Think.Imports.AuthorityLevel.metadata
    status := ImportCandidateStatus.openConjectureRetained
    finalTargetRetained := true
    note := "Euclidean dimension claim remains residue" }
]

def navierStokesImportCandidates : List TargetImportCandidate := [
  { target := FWR.Target.NavierStokesRegularity
    atomId := "velocityPressureSemantics"
    residueKind := FWR.ResidueKind.missingDefinition
    plannedAuthority := Think.Imports.AuthorityLevel.statementSurface
    status := ImportCandidateStatus.definitionSurface
    finalTargetRetained := true
    note := "typed velocity and pressure semantics are first" },
  { target := FWR.Target.NavierStokesRegularity
    atomId := "pdeEquationSemantics"
    residueKind := FWR.ResidueKind.missingDefinition
    plannedAuthority := Think.Imports.AuthorityLevel.statementSurface
    status := ImportCandidateStatus.definitionSurface
    finalTargetRetained := true
    note := "equation semantics are definitional infrastructure" },
  { target := FWR.Target.NavierStokesRegularity
    atomId := "pdeEnergyInequality"
    residueKind := FWR.ResidueKind.missingPDEEstimate
    plannedAuthority := Think.Imports.AuthorityLevel.importedTheorem
    status := ImportCandidateStatus.retainedUntilCertified
    finalTargetRetained := true
    note := "energy inequalities require exact norms and hypotheses" },
  { target := FWR.Target.NavierStokesRegularity
    atomId := "schedulerToPDEBridge"
    residueKind := FWR.ResidueKind.missingLowering
    plannedAuthority := Think.Imports.AuthorityLevel.transferTheorem
    status := ImportCandidateStatus.transferRequired
    finalTargetRetained := true
    note := "finite scheduler behavior needs a local PDE adapter" },
  { target := FWR.Target.NavierStokesRegularity
    atomId := "finalGlobalRegularity"
    residueKind := FWR.ResidueKind.conjecturalAtom
    plannedAuthority := Think.Imports.AuthorityLevel.metadata
    status := ImportCandidateStatus.openConjectureRetained
    finalTargetRetained := true
    note := "global regularity remains residue" }
]

def modularityImportCandidates : List TargetImportCandidate := [
  { target := FWR.Target.Modularity
    atomId := "finalSemistableModularity"
    residueKind := FWR.ResidueKind.externalTheoremNotImported
    plannedAuthority := Think.Imports.AuthorityLevel.importedTheorem
    status := ImportCandidateStatus.separatedKnownExternal
    finalTargetRetained := true
    note := "known theorem is separated from finite q-wave transfer" },
  { target := FWR.Target.Modularity
    atomId := "finiteAgreementToInfiniteModularity"
    residueKind := FWR.ResidueKind.missingAsymptoticTransfer
    plannedAuthority := Think.Imports.AuthorityLevel.transferTheorem
    status := ImportCandidateStatus.transferRequired
    finalTargetRetained := true
    note := "finite q-wave agreement cannot imply modularity without a transfer theorem" },
  { target := FWR.Target.Modularity
    atomId := "ellipticCurveObject"
    residueKind := FWR.ResidueKind.missingDefinition
    plannedAuthority := Think.Imports.AuthorityLevel.statementSurface
    status := ImportCandidateStatus.definitionSurface
    finalTargetRetained := true
    note := "definitions can be introduced independently of final theorem authority" }
]

def finiteToAsymptoticImportCandidates : List TargetImportCandidate := [
  { target := FWR.Target.FiniteToAsymptotic
    atomId := "transitionCompatibility"
    residueKind := FWR.ResidueKind.missingTransition
    plannedAuthority := Think.Imports.AuthorityLevel.transferTheorem
    status := ImportCandidateStatus.transferRequired
    finalTargetRetained := true
    note := "stage transitions must be proved before limit extraction" },
  { target := FWR.Target.FiniteToAsymptotic
    atomId := "transferTheorem"
    residueKind := FWR.ResidueKind.missingAsymptoticTransfer
    plannedAuthority := Think.Imports.AuthorityLevel.transferTheorem
    status := ImportCandidateStatus.transferRequired
    finalTargetRetained := true
    note := "transfer theorem is required before clearing asymptotic residue" },
  { target := FWR.Target.FiniteToAsymptotic
    atomId := "finalAsymptoticExtraction"
    residueKind := FWR.ResidueKind.conjecturalAtom
    plannedAuthority := Think.Imports.AuthorityLevel.metadata
    status := ImportCandidateStatus.openConjectureRetained
    finalTargetRetained := true
    note := "final extraction remains residue until the transfer theorem exists" }
]

def allCandidates : List TargetImportCandidate :=
  rhImportCandidates ++
  primeGapImportCandidates ++
  kakeyaImportCandidates ++
  navierStokesImportCandidates ++
  modularityImportCandidates ++
  finiteToAsymptoticImportCandidates

theorem allCandidates_retain_finalTargets :
    allCandidates.all (fun candidate => candidate.finalTargetRetained) = true := by
  rfl

theorem rhImportCandidates_count :
    rhImportCandidates.length = 5 := by
  rfl

theorem primeGapImportCandidates_count :
    primeGapImportCandidates.length = 5 := by
  rfl

theorem kakeyaImportCandidates_count :
    kakeyaImportCandidates.length = 4 := by
  rfl

theorem navierStokesImportCandidates_count :
    navierStokesImportCandidates.length = 5 := by
  rfl

theorem modularityImportCandidates_count :
    modularityImportCandidates.length = 3 := by
  rfl

theorem finiteToAsymptoticImportCandidates_count :
    finiteToAsymptoticImportCandidates.length = 3 := by
  rfl

theorem allCandidates_count :
    allCandidates.length = 25 := by
  rfl

def openConjectureCandidateMetadataCheck
    (candidate : TargetImportCandidate) : Bool :=
  if candidate.status = ImportCandidateStatus.openConjectureRetained then
    decide
      (candidate.plannedAuthority = Think.Imports.AuthorityLevel.metadata)
  else
    true

theorem openConjectureCandidateMetadataCheck_all :
    allCandidates.all openConjectureCandidateMetadataCheck = true := by
  rfl

theorem openConjectureCandidates_are_metadata :
    ∀ candidate ∈ allCandidates,
      candidate.status = ImportCandidateStatus.openConjectureRetained ->
      candidate.plannedAuthority = Think.Imports.AuthorityLevel.metadata := by
  intro candidate hmem hstatus
  have hcheck :=
    (List.all_eq_true.mp openConjectureCandidateMetadataCheck_all)
      candidate hmem
  simp [openConjectureCandidateMetadataCheck, hstatus] at hcheck
  exact hcheck

def conjecturalAtomCandidateNotImportedTheoremCheck
    (candidate : TargetImportCandidate) : Bool :=
  if candidate.residueKind = FWR.ResidueKind.conjecturalAtom then
    decide
      (candidate.plannedAuthority ≠
        Think.Imports.AuthorityLevel.importedTheorem)
  else
    true

theorem conjecturalAtomCandidateNotImportedTheoremCheck_all :
    allCandidates.all conjecturalAtomCandidateNotImportedTheoremCheck =
      true := by
  rfl

theorem conjecturalAtom_candidates_not_importedTheorem :
    ∀ candidate ∈ allCandidates,
      candidate.residueKind = FWR.ResidueKind.conjecturalAtom ->
      candidate.plannedAuthority ≠
        Think.Imports.AuthorityLevel.importedTheorem := by
  intro candidate hmem hkind
  have hcheck :=
    (List.all_eq_true.mp
      conjecturalAtomCandidateNotImportedTheoremCheck_all)
      candidate hmem
  simp [conjecturalAtomCandidateNotImportedTheoremCheck, hkind] at hcheck
  exact hcheck

def transferRequiredCandidateRetainsFinalTargetCheck
    (candidate : TargetImportCandidate) : Bool :=
  if candidate.status = ImportCandidateStatus.transferRequired then
    candidate.finalTargetRetained
  else
    true

theorem transferRequiredCandidateRetainsFinalTargetCheck_all :
    allCandidates.all transferRequiredCandidateRetainsFinalTargetCheck =
      true := by
  rfl

theorem transferRequired_candidates_retain_final_target :
    ∀ candidate ∈ allCandidates,
      candidate.status = ImportCandidateStatus.transferRequired ->
      candidate.finalTargetRetained = true := by
  intro candidate hmem hstatus
  have hcheck :=
    (List.all_eq_true.mp
      transferRequiredCandidateRetainsFinalTargetCheck_all)
      candidate hmem
  simp [transferRequiredCandidateRetainsFinalTargetCheck, hstatus] at hcheck
  exact hcheck

def separatedKnownExternalNoTargetSettlementCheck
    (candidate : TargetImportCandidate) : Bool :=
  if candidate.status = ImportCandidateStatus.separatedKnownExternal then
    candidate.finalTargetRetained
  else
    true

theorem separatedKnownExternalNoTargetSettlementCheck_all :
    allCandidates.all separatedKnownExternalNoTargetSettlementCheck =
      true := by
  rfl

theorem separatedKnownExternal_does_not_imply_target_settlement :
    ∀ candidate ∈ allCandidates,
      candidate.status = ImportCandidateStatus.separatedKnownExternal ->
      candidate.finalTargetRetained = true := by
  intro candidate hmem hstatus
  have hcheck :=
    (List.all_eq_true.mp
      separatedKnownExternalNoTargetSettlementCheck_all)
      candidate hmem
  simp [separatedKnownExternalNoTargetSettlementCheck, hstatus] at hcheck
  exact hcheck

theorem rh_final_retained :
    ∃ candidate ∈ rhImportCandidates,
      candidate.atomId = "finalAllZerosOnCriticalLine" ∧
      candidate.residueKind = FWR.ResidueKind.conjecturalAtom ∧
      candidate.finalTargetRetained = true := by
  simp [rhImportCandidates]

theorem finiteToAsymptotic_transfer_required :
    ∃ candidate ∈ finiteToAsymptoticImportCandidates,
      candidate.atomId = "transferTheorem" ∧
      candidate.residueKind = FWR.ResidueKind.missingAsymptoticTransfer ∧
      candidate.status = ImportCandidateStatus.transferRequired := by
  simp [finiteToAsymptoticImportCandidates]

end Think.Targets.ImportPlan
