# Proof Status Alternative — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `546547daab81c432e08f5b01dbb9ba98bb878b82` · SHA-256 `9acd3fd7039d9cd208c84424db54a1f658a7f5e4ecbc1373af1745b178f49d5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.ProofStatus

/-!
# Folder.Theorem.RH.ProofStatus

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proof-status facts for the narrow RH cone.
Ontology: proof.rh.proof_status
Pivot role: verification
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace ProofStatus

theorem proof_status_contract_not_allowed :
    ¬ Folder.RH.ProofStatus.allowedInFinalCone Folder.RH.ProofStatus.contract :=
  Folder.RH.proof_status_contract_not_allowed

theorem proof_status_theorem_target_not_allowed :
    ¬ Folder.RH.ProofStatus.allowedInFinalCone Folder.RH.ProofStatus.theoremTarget :=
  Folder.RH.proof_status_theorem_target_not_allowed

theorem proof_status_external_input_not_allowed :
    ¬ Folder.RH.ProofStatus.allowedInFinalCone Folder.RH.ProofStatus.externalAnalyticInput :=
  Folder.RH.proof_status_external_input_not_allowed

theorem allowed_status_is_checked_or_imported
    {status : Folder.RH.ProofStatus}
    (h : Folder.RH.ProofStatus.allowedInFinalCone status) :
    status = Folder.RH.ProofStatus.checkedByLean ∨
      status = Folder.RH.ProofStatus.importedTheorem :=
  Folder.RH.allowed_status_is_checked_or_imported h

theorem imported_theorem_certificate_allowed
    (I : Folder.RH.ImportedTheoremCertificate) :
    Folder.RH.ProofStatus.allowedInFinalCone I.status :=
  Folder.RH.imported_theorem_certificate_allowed I

theorem imported_theorem_certificate_status
    (I : Folder.RH.ImportedTheoremCertificate) :
    I.status = Folder.RH.ProofStatus.importedTheorem :=
  Folder.RH.imported_theorem_certificate_status I

end ProofStatus
end RH
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de7ebadf106a29845a46efb6a85fc14c0553bf0c4decc96c4f692a3fc0951b13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofStatus/Variant9acd3fd7039d9cd208c84424db54a1f658a7f5e4ecbc1373af1745b178f49d5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
