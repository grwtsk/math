# Finite Witness Surface — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71ba7c5e315fcf73701b9a17f807c72ddb45775b` · SHA-256 `ca7525557bf9a72b2c14784235ab2fcfd7f8153ea8b3301eddc2ec1c08a80bb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
set_option autoImplicit false

namespace Think.Compact

inductive FiniteModularWaveSurface where
  | finiteQWave
  | lFunctionLowering
  | emlLowering
  | nandLowering
  | bitMatrix
  | quotientLimit
  | compactProjection
  | theoremSourceBoundary
deriving DecidableEq, Repr

def FiniteModularWaveSurface.isFiniteWitness :
    FiniteModularWaveSurface → Bool
  | _ => true

def FiniteModularWaveSurface.importsExternalTheorem :
    FiniteModularWaveSurface → Bool
  | _ => false

theorem finiteModularWave_surfaceFinite
    (s : FiniteModularWaveSurface) :
    s.isFiniteWitness = true := by
  cases s <;> rfl

theorem finiteModularWave_importsNoExternalTheorem
    (s : FiniteModularWaveSurface) :
    s.importsExternalTheorem = false := by
  cases s <;> rfl

end Think.Compact
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae4c45eb8e5db15c32cad3857baea814928de83d18719865c63c0dd085d47a4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteWitnessSurface/Variantca7525557bf9a72b2c14784235ab2fcfd7f8153ea8b3301eddc2ec1c08a80bb5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
