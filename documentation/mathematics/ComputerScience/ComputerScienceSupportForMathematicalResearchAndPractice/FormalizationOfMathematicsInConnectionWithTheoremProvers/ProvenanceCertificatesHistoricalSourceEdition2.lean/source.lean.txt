import Mathlib.Data.List.Basic

/-! ERC–RH: versioned external evidence and proof-bearing applicability.
Publication/reproduction labels are provenance data, not theorem proofs.
Only a checked proof plus an explicit adapter can produce a native conclusion.
Invalidation and supersession preserve the original packet and negative result.
-/
namespace EulerP04RH.Research

inductive EvidenceGrade
  | referenceOnly | paperStatement | paperDerivationChecked | finiteComputation
  | formalSourceUncompiled | focusedCompiled | independentlyReplayed
  | rootReachable | acceptedIntegration | refuted | superseded
  deriving DecidableEq, Repr

inductive SourceKind
  | paper | formalization | calculation | code | counterexample | review
  deriving DecidableEq, Repr

inductive CircularityRisk
  | riemannHypothesis | extendedZeroFreeRegion | mertensBound | simpleZeros
  | unprovedZeroSpacing | equivalentArithmeticEstimate | omittedResidues
  | spectralIdentification | unprovedFrameLowerBound
  deriving DecidableEq, Repr

structure PacketMetadata where
  packetId : String
  title : String
  contributors : List String
  sourceKind : SourceKind
  locator : String
  version : String
  contentHash : Option String
  publicationBoundary : String
  exactStatement : String
  hypotheses : List String
  quantifiedDomain : String
  constantsAndDependencies : List String
  proofLocator : String
  formalizationLocator : Option String
  reproductionProcedure : String
  reproductionResult : String
  intendedObligation : String
  claimedSourceMap : String
  limitations : List String
  disclosedRisks : List CircularityRisk
  supersessionKeys : List String
  invalidationKeys : List String

/-- Finite computation records a proved fixture, not the packet's universal
target. The `proof?` consumer cannot turn that fixture into the target. -/
inductive ExternalEvidence (P : Prop)
  | referenceOnly
  | paperStatement
  | paperDerivationChecked
  | finiteComputation (fixture : Prop) (proof : fixture)
  | formalSourceUncompiled
  | focusedCompiled (proof : P)
  | independentlyReplayed (proof : P)
  | rootReachable (proof : P)
  | acceptedIntegration (proof : P)
  | refuted (proof : ¬P)
  | superseded

def ExternalEvidence.grade {P : Prop} : ExternalEvidence P → EvidenceGrade
  | .referenceOnly => .referenceOnly
  | .paperStatement => .paperStatement
  | .paperDerivationChecked => .paperDerivationChecked
  | .finiteComputation _ _ => .finiteComputation
  | .formalSourceUncompiled => .formalSourceUncompiled
  | .focusedCompiled _ => .focusedCompiled
  | .independentlyReplayed _ => .independentlyReplayed
  | .rootReachable _ => .rootReachable
  | .acceptedIntegration _ => .acceptedIntegration
  | .refuted _ => .refuted
  | .superseded => .superseded

def ExternalEvidence.proof? {P : Prop} : ExternalEvidence P → Option (PLift P)
  | .focusedCompiled h => some ⟨h⟩
  | .independentlyReplayed h => some ⟨h⟩
  | .rootReachable h => some ⟨h⟩
  | .acceptedIntegration h => some ⟨h⟩
  | .referenceOnly | .paperStatement | .paperDerivationChecked
    | .finiteComputation _ _ | .formalSourceUncompiled | .refuted _ | .superseded => none

structure ExternalResearchPacket (P : Prop) where
  metadata : PacketMetadata
  evidence : ExternalEvidence P

/-- Each conversion is a proved proposition in addition to its locator.
The external-to-native implication, including all hypothesis discharges,
is required explicitly; similarly named sources do not provide that map. -/
structure ApplicabilityCertificate (External Native : Prop) where
  sourceMapLocator : String
  hypothesisDischarge : Prop
  hypothesisProof : hypothesisDischarge
  scaleConversion : Prop
  scaleProof : scaleConversion
  normalizationConversion : Prop
  normalizationProof : normalizationConversion
  signConversion : Prop
  signProof : signConversion
  errorBudget : Prop
  errorProof : errorBudget
  consumer : External → Native

def consume {E N : Prop} (active : Bool) (packet : ExternalResearchPacket E)
    (adapter : ApplicabilityCertificate E N) : Option (PLift N) :=
  if active then packet.evidence.proof?.map (fun h => ⟨adapter.consumer h.down⟩) else none

theorem reference_cannot_be_consumed {E N : Prop} (metadata : PacketMetadata)
    (adapter : ApplicabilityCertificate E N) (active : Bool) :
    consume active ⟨metadata,.referenceOnly⟩ adapter = none := by
  cases active <;> rfl

theorem finite_fixture_cannot_be_consumed {E N fixture : Prop} (h : fixture)
    (metadata : PacketMetadata) (adapter : ApplicabilityCertificate E N) (active : Bool) :
    consume active ⟨metadata,.finiteComputation fixture h⟩ adapter = none := by
  cases active <;> rfl

theorem invalidated_cannot_be_consumed {E N : Prop} (packet : ExternalResearchPacket E)
    (adapter : ApplicabilityCertificate E N) : consume false packet adapter = none := rfl

theorem consumption_supplies_native_proof {E N : Prop} (active : Bool)
    (packet : ExternalResearchPacket E) (adapter : ApplicabilityCertificate E N)
    (proof : PLift N) (_receipt : consume active packet adapter = some proof) : N := proof.down

structure RegisteredPacket where
  statement : Prop
  packet : ExternalResearchPacket statement

structure Registry where
  packets : List RegisteredPacket
  invalidated : List String
  supersessions : List (String × String)

def Registry.register (r : Registry) (entry : RegisteredPacket) : Registry :=
  { r with packets := entry::r.packets }

def Registry.invalidate (r : Registry) (key : String) : Registry :=
  { r with invalidated := key::r.invalidated }

def Registry.supersede (r : Registry) (oldKey newKey : String) : Registry :=
  { r with
    invalidated := oldKey::r.invalidated
    supersessions := (oldKey,newKey)::r.supersessions }

def Registry.active (r : Registry) (key : String) : Bool := !(r.invalidated.contains key)

/-- A packet is disabled if its own key or any declared dependency is invalidated.
Dependency lists must include the full upstream closure at registration. -/
def Registry.activeEntry (r : Registry) (entry : RegisteredPacket) : Bool :=
  r.active entry.packet.metadata.packetId &&
    entry.packet.metadata.invalidationKeys.all (fun key => r.active key)

/-- The public registry consumer derives active status from the recorded key;
the caller must also prove registration. A publication grade alone is unusable. -/
def Registry.consumeEntry {N : Prop} (r : Registry) (entry : RegisteredPacket)
    (_registered : entry ∈ r.packets)
    (adapter : ApplicabilityCertificate entry.statement N) : Option (PLift N) :=
  consume (r.activeEntry entry) entry.packet adapter

theorem invalidation_preserves_packets (r : Registry) (key : String) :
    (r.invalidate key).packets = r.packets := rfl

theorem supersession_preserves_packets (r : Registry) (oldKey newKey : String) :
    (r.supersede oldKey newKey).packets = r.packets := rfl

theorem invalidation_disables (r : Registry) (key : String) :
    (r.invalidate key).active key = false := by simp [Registry.active,Registry.invalidate]

theorem supersession_disables_old (r : Registry) (oldKey newKey : String) :
    (r.supersede oldKey newKey).active oldKey = false := by
  simp [Registry.active,Registry.supersede]

theorem invalidation_blocks_registered_consumption {N : Prop}
    (r : Registry) (entry : RegisteredPacket) (registered : entry ∈ r.packets)
    (adapter : ApplicabilityCertificate entry.statement N) :
    (r.invalidate entry.packet.metadata.packetId).consumeEntry entry registered adapter = none := by
  simp [Registry.consumeEntry,Registry.activeEntry,invalidation_disables,consume]

theorem dependency_invalidation_blocks_consumption {N : Prop}
    (r : Registry) (entry : RegisteredPacket) (registered : entry ∈ r.packets)
    (key : String) (dependency : key ∈ entry.packet.metadata.invalidationKeys)
    (adapter : ApplicabilityCertificate entry.statement N) :
    (r.invalidate key).consumeEntry entry registered adapter = none := by
  have hdep : entry.packet.metadata.invalidationKeys.all
      (fun upstream => (r.invalidate key).active upstream) = false := by
    apply List.all_eq_false.mpr
    refine ⟨key,dependency,?_⟩
    simp [invalidation_disables]
  simp [Registry.consumeEntry,Registry.activeEntry,hdep,consume]

theorem registration_preserves_old (r : Registry) (entry old : RegisteredPacket)
    (h : old ∈ r.packets) : old ∈ (r.register entry).packets := List.mem_cons_of_mem _ h

theorem invalidation_preserves_evidence_grade (r : Registry) (key : String) :
    (r.invalidate key).packets.map (fun p => p.packet.evidence.grade) =
      r.packets.map (fun p => p.packet.evidence.grade) := rfl

end EulerP04RH.Research

#print axioms EulerP04RH.Research.finite_fixture_cannot_be_consumed
#print axioms EulerP04RH.Research.consumption_supplies_native_proof
#print axioms EulerP04RH.Research.invalidation_preserves_evidence_grade
