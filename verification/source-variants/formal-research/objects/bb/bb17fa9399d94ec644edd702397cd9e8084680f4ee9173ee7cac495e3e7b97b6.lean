import Mathematics.GraphAccess.Admission

/-!
# Dependency-inverted graph-access resolver

Admission and mode construction are injected.  The dispatcher knows no BFS,
Dijkstra, A*, rotor, sequence, sampling, obstruction, or cylinder internals.
-/

namespace Mathematics.GraphAccess

inductive GraphAccessResolution
    (G : GraphCut)
    (profiles : ModeProfileFamily G)
  | completed
      (request : AdmittedAccessRequest G profiles)
      (resultType : ModeOutputFamily G request)
      (machine :
        AccessMachine G request resultType)
      (result : MachineResolution machine)
  | unknown
      (requestId : RequestId)
      (frontier : Option ByteArray)
      (unknowns : Finset GraphAccessUnknownKind)
      (unknowns_nonempty : unknowns.Nonempty)
  | rejected
      (requestId : RequestId)
      (reason : RequestAdmissionFailure)
  | operationalFailure
      (requestId : RequestId)
      (failure : OperationalFailure)

structure ModeBackendRegistry
    (G : GraphCut)
    (profiles : ModeProfileFamily G) where
  outputs :
    ∀ request : AdmittedAccessRequest G profiles,
      ModeOutputFamily G request
  machine :
    ∀ request : AdmittedAccessRequest G profiles,
      AccessMachine G request (outputs request)

def resolveGraphAccess
    (G : GraphCut)
    (profiles : ModeProfileFamily G)
    (admitter : RequestAdmitter G profiles)
    (backend : ModeBackendRegistry G profiles)
    (raw : RawGraphAccessRequest) :
    GraphAccessResolution G profiles :=
  match admitter.admit raw with
  | .admitted request =>
      .completed request
        (backend.outputs request)
        (backend.machine request)
        (executeMachine (backend.machine request))
  | .unknown requestId unknowns nonempty =>
      .unknown requestId none unknowns nonempty
  | .rejected requestId failure =>
      .rejected requestId failure

end Mathematics.GraphAccess
