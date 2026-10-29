import Mathematics.ConnesBitfield.Interfaces

/-!
# Mode-indexed terminal Connes--bitfield interfaces

Absence is represented by `unknown`, never by falsehood or rejection.
-/

namespace Mathematics.ConnesBitfield

inductive BoundaryLawTerminalInterface
  | arithmeticBitfieldEncoding
  | arithmeticInvariantTraceCorrespondence
  | boundarySemanticIdentification
  | uniformTraceScale
  | localGlobalArithmeticCompatibility
  deriving DecidableEq, Repr, Fintype

inductive CommittedRealizationTerminalInterface
  | uniformTestClassTypicality
  deriving DecidableEq, Repr, Fintype

inductive FamilyLimitTerminalInterface
  | uniformEnsembleLimit
  deriving DecidableEq, Repr, Fintype

inductive InterfaceStatus
  | unknown
  | underConstruction
  | certificateRejected
  | certified
  deriving DecidableEq, Repr, Fintype

abbrev BoundaryLawInterfaceLedger :=
  BoundaryLawTerminalInterface → InterfaceStatus

abbrev CommittedRealizationInterfaceLedger :=
  CommittedRealizationTerminalInterface → InterfaceStatus

abbrev FamilyLimitInterfaceLedger :=
  FamilyLimitTerminalInterface → InterfaceStatus

def initialBoundaryLawLedger :
    BoundaryLawInterfaceLedger :=
  fun _ => .unknown

def initialCommittedRealizationLedger :
    CommittedRealizationInterfaceLedger :=
  fun _ => .unknown

def initialFamilyLimitLedger :
    FamilyLimitInterfaceLedger :=
  fun _ => .unknown

def boundaryLawInterfaces :
    Finset BoundaryLawTerminalInterface :=
  Finset.univ

def unresolvedBoundaryLawInterfaces
    (ledger : BoundaryLawInterfaceLedger) :
    Finset BoundaryLawTerminalInterface :=
  boundaryLawInterfaces.filter
    (fun interface =>
      ledger interface ≠ .certified)

theorem initial_boundary_law_ledger_unresolved
    (interface : BoundaryLawTerminalInterface) :
    interface ∈
      unresolvedBoundaryLawInterfaces
        initialBoundaryLawLedger := by
  simp [unresolvedBoundaryLawInterfaces,
    boundaryLawInterfaces, initialBoundaryLawLedger]

end Mathematics.ConnesBitfield
