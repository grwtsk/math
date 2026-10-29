# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.UnknownLedger.Variant95da333e5b52992ac5eb5ced8c75d6fc627b206858c2fc7452371f1c72942670

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `355367bf254bd10676bad4b70380aa5703831c9d` · SHA-256 `95da333e5b52992ac5eb5ced8c75d6fc627b206858c2fc7452371f1c72942670`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a97252b86c225e75782a397ceed17aa4a4e525c0759f57957be7f1ab4975b71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/UnknownLedger/Variant95da333e5b52992ac5eb5ced8c75d6fc627b206858c2fc7452371f1c72942670.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
