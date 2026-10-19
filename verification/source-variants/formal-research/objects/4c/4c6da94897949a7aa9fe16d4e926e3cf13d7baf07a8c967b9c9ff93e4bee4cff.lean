import Mathematics.SemiLocalDefect.UnknownLedger

/-!
# Authority noninterference

Traversal, finite observation, and realization proposals cannot close an
arithmetic or square-root obligation.
-/

namespace Mathematics.SemiLocalDefect

inductive EvidenceAuthority
  | accessSchedule
  | finiteObservation
  | reconstructedProposal
  | realizationCertificate
  | arithmeticCertificate
  | normCertificate
deriving DecidableEq, Repr

inductive MayClose :
    EvidenceAuthority →
      UnknownGroup → Prop
  | realizationArchimedean :
      MayClose .realizationCertificate
        .archimedeanBalance
  | realizationPositive :
      MayClose .realizationCertificate
        .positiveRealization
  | realizationSonin :
      MayClose .realizationCertificate
        .soninGeometry
  | finiteComputation :
      MayClose .realizationCertificate
        .finiteConnectorComputation
  | arithmetic :
      MayClose .arithmeticCertificate
        .arithmeticCorrespondence
  | squareRoot :
      MayClose .normCertificate
        .squareRootScale

theorem accessSchedule_cannot_close
    (group : UnknownGroup) :
    ¬ MayClose .accessSchedule group := by
  intro authority
  cases authority

theorem finiteObservation_cannot_close
    (group : UnknownGroup) :
    ¬ MayClose .finiteObservation group := by
  intro authority
  cases authority

theorem reconstructionProposal_cannot_close
    (group : UnknownGroup) :
    ¬ MayClose .reconstructedProposal group := by
  intro authority
  cases authority

theorem realization_cannot_close_arithmetic :
    ¬ MayClose .realizationCertificate
      .arithmeticCorrespondence := by
  intro authority
  cases authority

theorem realization_cannot_close_squareRoot :
    ¬ MayClose .realizationCertificate
      .squareRootScale := by
  intro authority
  cases authority

end Mathematics.SemiLocalDefect
