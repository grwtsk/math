import Folder.ProofSafety.DependencyAudit

/-!
# Folder.Theorem.ProofSafety.DependencyAudit

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports dependency-audit facts.
Ontology: proof.proof_safety.dependency_audit
Pivot role: verification
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: proof-safety
-/

namespace Folder
namespace Theorem
namespace ProofSafety

theorem dependency_audit_imports_only_allowed_layers
    (R : Folder.ProofSafety.DependencyAuditReport) :
    R.importsOnlyAllowedLayers :=
  Folder.ProofSafety.dependency_audit_imports_only_allowed_layers R

theorem dependency_audit_no_contract_modules
    (R : Folder.ProofSafety.DependencyAuditReport) :
    R.noContractModules :=
  Folder.ProofSafety.dependency_audit_no_contract_modules R

theorem dependency_audit_no_external_witness_modules
    (R : Folder.ProofSafety.DependencyAuditReport) :
    R.noExternalWitnessModules :=
  Folder.ProofSafety.dependency_audit_no_external_witness_modules R

theorem dependency_audit_no_if_supplied_accessors
    (R : Folder.ProofSafety.DependencyAuditReport) :
    R.noIfSuppliedAccessors :=
  Folder.ProofSafety.dependency_audit_no_if_supplied_accessors R

theorem dependency_audit_no_certified_projection_proofs
    (R : Folder.ProofSafety.DependencyAuditReport) :
    R.noCertifiedProjectionProofs :=
  Folder.ProofSafety.dependency_audit_no_certified_projection_proofs R

theorem dependency_audit_no_gap_tokens
    (R : Folder.ProofSafety.DependencyAuditReport) :
    R.noGapTokens :=
  Folder.ProofSafety.dependency_audit_no_gap_tokens R

end ProofSafety
end Theorem
end Folder
