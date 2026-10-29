import Mathlib.Data.Finset.Basic

/-!
# Conservative terminal interfaces

An unknown records absence of an accepted certificate.  It is neither
falsehood nor rejection.  Limit-operator obligations are optional in
trace-observable mode and required only when a literal limit operator is
claimed.
-/

namespace Mathematics.StratifiedBoundary

inductive InterfaceBranch
  | ordinalIndex
  | projectiveBoundary
  | trace
  | arithmeticLimit
  deriving DecidableEq, Repr, Fintype

inductive TerminalInterface
  | executableOrdinalDomain
  | countableLimitCofinality
  | fundamentalSequenceRegistration
  | stratumAssignment
  | limitAddressSeparation

  | limitStateNonempty
  | projectiveMeasureExistence
  | projectiveMeasureSupport
  | projectiveContractiveCoupling
  | limitKernelConstruction

  | crossedProductFunctoriality
  | persistentGroupLift
  | fiberTraceEmbedding
  | invariantProjectionCompatibility
  | algebraConnectingMorphisms
  | inductiveLimitAlgebra
  | compatibleTraceBoundedness
  | limitSpectralOperator
  | resolventCompatibility

  | arithmeticInvariantTraceCorrespondence
  | successorArithmeticCompatibility
  | testSpaceCompatibility
  | normalizedLimitCorrespondence
  | normalizedLimitCompactness
  | uniformCofinalScale
  | localGlobalArithmeticCompatibility
  deriving DecidableEq, Repr, Fintype

def TerminalInterface.branch :
    TerminalInterface → InterfaceBranch
  | .executableOrdinalDomain
  | .countableLimitCofinality
  | .fundamentalSequenceRegistration
  | .stratumAssignment
  | .limitAddressSeparation =>
      .ordinalIndex
  | .limitStateNonempty
  | .projectiveMeasureExistence
  | .projectiveMeasureSupport
  | .projectiveContractiveCoupling
  | .limitKernelConstruction =>
      .projectiveBoundary
  | .crossedProductFunctoriality
  | .persistentGroupLift
  | .fiberTraceEmbedding
  | .invariantProjectionCompatibility
  | .algebraConnectingMorphisms
  | .inductiveLimitAlgebra
  | .compatibleTraceBoundedness
  | .limitSpectralOperator
  | .resolventCompatibility =>
      .trace
  | .arithmeticInvariantTraceCorrespondence
  | .successorArithmeticCompatibility
  | .testSpaceCompatibility
  | .normalizedLimitCorrespondence
  | .normalizedLimitCompactness
  | .uniformCofinalScale
  | .localGlobalArithmeticCompatibility =>
      .arithmeticLimit

def TerminalInterface.requiredInTraceObservableMode :
    TerminalInterface → Prop
  | .limitSpectralOperator => False
  | .resolventCompatibility => False
  | _ => True

inductive InterfaceStatus
  | unknown
  | underConstruction
  | certificateRejected
  | certified
  deriving DecidableEq, Repr, Fintype

abbrev InterfaceLedger :=
  TerminalInterface → InterfaceStatus

def initialLedger : InterfaceLedger :=
  fun _ => .unknown

def terminalInterfaces :
    Finset TerminalInterface :=
  Finset.univ

def traceObservableTerminalInterfaces :
    Finset TerminalInterface :=
  terminalInterfaces.filter
    TerminalInterface.requiredInTraceObservableMode

def unresolvedInterfaces
    (ledger : InterfaceLedger) :
    Finset TerminalInterface :=
  terminalInterfaces.filter
    (fun interface =>
      ledger interface ≠ .certified)

def unresolvedTraceObservableInterfaces
    (ledger : InterfaceLedger) :
    Finset TerminalInterface :=
  traceObservableTerminalInterfaces.filter
    (fun interface =>
      ledger interface ≠ .certified)

theorem initial_interface_is_unresolved
    (interface : TerminalInterface) :
    interface ∈
      unresolvedInterfaces initialLedger := by
  simp [unresolvedInterfaces,
    terminalInterfaces, initialLedger]

end Mathematics.StratifiedBoundary
