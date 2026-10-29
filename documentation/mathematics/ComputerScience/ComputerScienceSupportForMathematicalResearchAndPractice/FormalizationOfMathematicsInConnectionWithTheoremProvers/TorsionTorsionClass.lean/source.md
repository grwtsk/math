# Torsion Torsion Class — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3a0e744309d8e42549d98df21d2be0e1ae03f04` · SHA-256 `b3539822ee62242434cdf38fd422c66decd9142d53762dfde6a8898c5d94abbe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.PoleCover

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure TorsionClass where
  modulus : Nat
  representative : Nat
  label : String
deriving Repr

structure CompactTorsion where
  compact : CompactPatch
  torsion : TorsionClass
  coboundaryResidue : Int
  poleResidue : Int

def CompactTorsion.residueValue (T : CompactTorsion) : Int :=
  T.coboundaryResidue + T.poleResidue

def CompactTorsion.resolved (T : CompactTorsion) : Prop :=
  T.residueValue = 0

structure TorsionRestriction where
  source : CompactPatch
  target : CompactPatch
  sourceTorsion : TorsionClass
  targetTorsion : TorsionClass
  naturalUnderRestriction : Prop

def TorsionRestriction.admitted (r : TorsionRestriction) : Prop :=
  r.naturalUnderRestriction

theorem torsion_resolved_iff_value_zero
    (T : CompactTorsion) :
    T.resolved ↔ T.residueValue = 0 := by
  rfl

theorem natural_torsion_restriction_admitted
    (r : TorsionRestriction)
    (h : r.naturalUnderRestriction) :
    r.admitted := by
  exact h

end Think.RadoProjectedModularHeatflow.MemoryCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99938db08ef08b61c924e4ebef1a7a8621b57b13200ac0c0f51d862feb5b0459 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Torsion/Variantb3539822ee62242434cdf38fd422c66decd9142d53762dfde6a8898c5d94abbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
