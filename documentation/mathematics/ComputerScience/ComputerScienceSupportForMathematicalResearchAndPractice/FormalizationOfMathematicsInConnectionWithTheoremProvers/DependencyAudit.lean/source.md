# Dependency Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4f0a469fb51677934ab133e8c723e06b3a59519` · SHA-256 `c7b62f9ef4eb1d6de4071899990d7b39a4bce928d70dfc0846321a698d7af1ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a6e8b1f6e24b2081ef3c72518a8a6bf27d3943d24c7ed757231049613681eb3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variantc7b62f9ef4eb1d6de4071899990d7b39a4bce928d70dfc0846321a698d7af1ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
