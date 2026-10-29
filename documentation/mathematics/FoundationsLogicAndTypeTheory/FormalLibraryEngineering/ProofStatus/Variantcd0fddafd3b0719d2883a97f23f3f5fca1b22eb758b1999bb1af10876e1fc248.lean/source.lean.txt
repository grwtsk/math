/-!
# Folder.RH.ProofStatus

Radiation role: proof-governance
BinaryMatrix spine: This module records proof-status labels for the narrow RH cone.
Ontology: rh.proof_status
Pivot role: verification
Zero typology: zeta
Contract boundary: final-cone-policy
Composite stack role: rh
-/

namespace Folder
namespace RH

/--
Proof-status labels for declarations that appear in the narrow RH cone.

Only `checkedByLean` and explicitly named `importedTheorem` entries are eligible
for a future final theorem dependency cone.
-/
inductive ProofStatus where
  | checkedByLean
  | importedTheorem
  | externalAnalyticInput
  | contract
  | theoremTarget
  | toyModel
deriving DecidableEq, Repr

def ProofStatus.allowedInFinalCone : ProofStatus → Prop
  | ProofStatus.checkedByLean => True
  | ProofStatus.importedTheorem => True
  | ProofStatus.externalAnalyticInput => False
  | ProofStatus.contract => False
  | ProofStatus.theoremTarget => False
  | ProofStatus.toyModel => False

/--
Metadata for a theorem whose proof is expected from an imported source.

This is deliberately not a proof of `exactStatement`. It records the statement,
source, and dependency status so the cone audit can decide whether a separate
Lean theorem or approved imported theorem is allowed to enter a final proof.
-/
structure ImportedTheoremCertificate where
  declarationName : String
  source : String
  exactStatement : Prop
  dependencyStatus : String
  status : ProofStatus
  statusIsImported : status = ProofStatus.importedTheorem
  sourceLabel : String

/--
Dependency record used by the RH cone audit and generated exposition.
-/
structure RHDependencyRecord where
  declarationName : String
  moduleName : String
  status : ProofStatus
  mayEnterFinalCone : ProofStatus.allowedInFinalCone status
  sourceLabel : String

theorem proof_status_contract_not_allowed :
    ¬ ProofStatus.allowedInFinalCone ProofStatus.contract := by
  intro h
  exact h

theorem proof_status_theorem_target_not_allowed :
    ¬ ProofStatus.allowedInFinalCone ProofStatus.theoremTarget := by
  intro h
  exact h

theorem proof_status_external_input_not_allowed :
    ¬ ProofStatus.allowedInFinalCone ProofStatus.externalAnalyticInput := by
  intro h
  exact h

theorem checked_by_lean_allowed :
    ProofStatus.allowedInFinalCone ProofStatus.checkedByLean :=
  trivial

theorem imported_theorem_allowed :
    ProofStatus.allowedInFinalCone ProofStatus.importedTheorem :=
  trivial

theorem allowed_status_is_checked_or_imported
    {status : ProofStatus}
    (h : ProofStatus.allowedInFinalCone status) :
    status = ProofStatus.checkedByLean ∨
      status = ProofStatus.importedTheorem := by
  cases status <;> simp [ProofStatus.allowedInFinalCone] at h ⊢

theorem imported_theorem_certificate_allowed
    (I : ImportedTheoremCertificate) :
    ProofStatus.allowedInFinalCone I.status := by
  simp [I.statusIsImported, ProofStatus.allowedInFinalCone]

theorem imported_theorem_certificate_status
    (I : ImportedTheoremCertificate) :
    I.status = ProofStatus.importedTheorem :=
  I.statusIsImported

end RH
end Folder
