# Disposition — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1b0215fb115ecc8323120620c842260bcc07504` · SHA-256 `995d7cbe2baf6c634fb3a39e4054eb8f0fb90938432c8131cd1cba63591d0af4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Jurisdictional disposition

Only an explicit `allowed` result can participate in an execution admission.
Unknown legal or policy state remains unresolved and fails closed.
-/

namespace Mathematics.Juris

inductive JurisDisposition
  | allowed
  | prohibited
  | unresolved
  | conflicting
  deriving DecidableEq, Repr

def JurisDisposition.MayExecute : JurisDisposition → Prop
  | .allowed => True
  | _ => False

@[simp] theorem unresolved_blocks_execution :
    ¬ JurisDisposition.unresolved.MayExecute := by
  simp [JurisDisposition.MayExecute]

@[simp] theorem conflicting_blocks_execution :
    ¬ JurisDisposition.conflicting.MayExecute := by
  simp [JurisDisposition.MayExecute]

@[simp] theorem prohibited_blocks_execution :
    ¬ JurisDisposition.prohibited.MayExecute := by
  simp [JurisDisposition.MayExecute]

end Mathematics.Juris
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34b09fdd0a7df9226a28e7704de78d8e65dfd11b7151a0e22031efa2d2e61634 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Disposition/Variant995d7cbe2baf6c634fb3a39e4054eb8f0fb90938432c8131cd1cba63591d0af4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
