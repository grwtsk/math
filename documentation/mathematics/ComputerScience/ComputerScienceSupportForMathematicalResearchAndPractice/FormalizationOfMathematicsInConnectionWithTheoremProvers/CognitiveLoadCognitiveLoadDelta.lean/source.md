# Cognitive Load Cognitive Load Delta — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b96029fff9bc4bba3d4eb908d90419e3cc395a7` · SHA-256 `9e24db0f60d17489b3e6ca143887502321943cd654742d86d5857f2662aa0b38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Obstruction.MUS

/-!
# Advisory cognitive-load accounting

These natural-number quantities guide presentation.  They are not theorem
evidence and cannot establish feasibility or obstruction.
-/

namespace Mathematics.BinaryFrontier

structure CognitiveLoadProfile where
  prerequisiteLoad : Nat
  localLoad : Nat
  relationLoad : Nat
  unknownLoad : Nat
  operationLoad : Nat
  verificationLoad : Nat
  bitLoad : Nat
  obstructionLoad : Nat
  bitWeight : Nat
  obstructionWeight : Nat

def CognitiveLoadProfile.total
    (profile : CognitiveLoadProfile) : Nat :=
  profile.prerequisiteLoad +
    profile.localLoad +
    profile.relationLoad +
    profile.unknownLoad +
    profile.operationLoad +
    profile.verificationLoad +
    profile.bitWeight * profile.bitLoad +
    profile.obstructionWeight * profile.obstructionLoad

def CognitiveLoadDelta
    (parent child : CognitiveLoadProfile) : Int :=
  Int.ofNat child.total - Int.ofNat parent.total

theorem cognitive_load_is_advisory
    (profile : CognitiveLoadProfile) :
    ∃ measured : Nat,
      measured = profile.total :=
  ⟨profile.total, rfl⟩

end Mathematics.BinaryFrontier
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1cff71562ae4635122f0f7f1f225980323addca27365b5bf9f4ff8d2254e0e71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CognitiveLoad/Variant9e24db0f60d17489b3e6ca143887502321943cd654742d86d5857f2662aa0b38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
