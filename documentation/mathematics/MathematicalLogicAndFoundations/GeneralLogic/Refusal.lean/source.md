# Refusal — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bbc5e7ac5242b94a62b5303dcf53a44f6405288` · SHA-256 `8ca03b4c3ac529a65012ea0f83ee530a7a6975430b78b75f5db95af4ecdb9b45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Witness

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure BoundaryRefusal where
  query : String
  activeResidue : BoundaryResidue
  supportingWitness? : Option BoundaryWitness
  noSupportedAnswer : Prop

def BoundaryRefusal.supported (r : BoundaryRefusal) : Bool :=
  r.supportingWitness?.isSome

theorem unsupported_refusal_has_no_witness
    (r : BoundaryRefusal)
    (h : r.supported = false) :
    r.supportingWitness? = none := by
  cases hw : r.supportingWitness? with
  | none =>
      rfl
  | some _ =>
      simp [BoundaryRefusal.supported, hw] at h

end Think.RadoProjectedModularHeatflow.MemoryCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d6262cc3766284230734dd5d318bd86bbb42463ac3cbee6f72ec66e2fcf7b6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refusal/Variant8ca03b4c3ac529a65012ea0f83ee530a7a6975430b78b75f5db95af4ecdb9b45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
