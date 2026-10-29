# Final Final RHCone Declaration Name — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7b34eba8f6a8fd49183b63367dbd79adce54472` · SHA-256 `50a62870be272cd5609461dedeb0d1c449126d05cf52eec02a8123d102d4a79a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.ConeAudit

/-!
# Folder.RH.Final

Radiation role: final-cone-gate
BinaryMatrix spine: This module freezes the narrow final-cone audit shape.
Ontology: rh.final
Pivot role: verification
Zero typology: zeta
Contract boundary: reject-until-clean-audit
Composite stack role: rh
-/

namespace Folder
namespace RH

/--
Declaration name reserved for the future final theorem.
-/
def FinalRHConeDeclarationName : String :=
  "Folder.RH.riemann_hypothesis"

theorem final_cone_declaration_name_fixed :
    FinalRHConeDeclarationName = "Folder.RH.riemann_hypothesis" :=
  rfl

/--
The current final RH cone is not closed.

This is the only theorem exported by the final module about the current
proof status. A future theorem named `riemann_hypothesis` must be added only
after the generated declaration-level audit has no forbidden dependencies.
-/
def FinalRHConeClosed : Prop :=
  RHConeAuditClean FinalRHConeDeclarationName

theorem current_final_rh_cone_rejects_unconditional_rh :
    ¬ FinalRHConeClosed := by
  intro h
  exact h

end RH
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b509722ade639673d72e450d8dcbca311776f976d14cac23dafa87deb18fd49e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Final/Variant50a62870be272cd5609461dedeb0d1c449126d05cf52eec02a8123d102d4a79a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
