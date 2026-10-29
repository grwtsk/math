# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LeanProjection.Variantca35e75fdd7b8d79570a3806fd3f4bc8254a8e30526248662a7b79fc6ae0c90e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79c9fa41d7c4d369ef8bb5d9d730d047c9b80471` · SHA-256 `ca35e75fdd7b8d79570a3806fd3f4bc8254a8e30526248662a7b79fc6ae0c90e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Presentation.ReferenceGraph

/-!
# Folder.Presentation.LeanProjection

Radiation role: presentation-lean-projection
BinaryMatrix spine: This module names conservative Lean declaration projections used by LaTeX presentation rules.
Ontology: presentation.lean_projection
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: presentation
-/

namespace Folder
namespace Presentation

inductive LeanDeclKind where
  | theorem
  | defn
  | structure
  | inductive
  | abbrev
  | instance
  | namespace
  | unknown
deriving DecidableEq, Repr

structure LeanDeclarationProjection where
  moduleName : String
  declarationName : String
  kind : LeanDeclKind
  signatureText : String
  sourcePath : String
  sourceLine? : Option Nat

structure LeanModuleProjection where
  moduleId : ModuleId
  sourcePath : String
  imports : List ModuleId
  declarations : List LeanDeclarationProjection
  projectionFailures : List String

def LeanModuleProjection.hasFailure
    (P : LeanModuleProjection) : Prop :=
  P.projectionFailures ≠ []

theorem declaration_projection_has_name
    (D : LeanDeclarationProjection) :
    ∃ name, D.declarationName = name :=
  ⟨D.declarationName, rfl⟩

end Presentation
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a772431830cec074acd3939d66a7a866b7008130ae94a3b6068830065deefc78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LeanProjection/Variantca35e75fdd7b8d79570a3806fd3f4bc8254a8e30526248662a7b79fc6ae0c90e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
