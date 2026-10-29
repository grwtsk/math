# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Output.Variant46dd9f6aab039bba2ffc4d474ed8441afad866c375bf81a54ac27ad75c68c14d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c042641a2abfb2fbad03d9a1f9e63ff2b6cdc893` · SHA-256 `46dd9f6aab039bba2ffc4d474ed8441afad866c375bf81a54ac27ad75c68c14d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Frontier

/-!
# Request-indexed output and certificate families

The objective fixes the payload kind.  Exactness can only be obtained from the
certificate constructor selected by the mode implementation.
-/

namespace Mathematics.GraphAccess

inductive Exactness
  | exact
  | bounded
  | asymptotic
  | heuristic
  | unknown
deriving DecidableEq, Repr

structure ModeOutputFamily
    (G : GraphCut)
    {profiles : ModeProfileFamily G}
    (req : AdmittedAccessRequest G profiles) where
  Payload : AccessProductKind → Type
  Certificate :
    Payload req.objective.productKind → Type
  exactness :
    ∀ payload, Certificate payload → Exactness

structure CertifiedModeOutput
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    (outputs : ModeOutputFamily G req) where
  payload :
    outputs.Payload req.objective.productKind
  certificate :
    outputs.Certificate payload

def CertifiedModeOutput.exactness
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (result : CertifiedModeOutput outputs) :
    Exactness :=
  outputs.exactness
    result.payload result.certificate

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fcfc861a40d84ee42e7ee2a12125dafab79f6d6d5f5bb18a9a4f7d5e79e92e77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant46dd9f6aab039bba2ffc4d474ed8441afad866c375bf81a54ac27ad75c68c14d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
