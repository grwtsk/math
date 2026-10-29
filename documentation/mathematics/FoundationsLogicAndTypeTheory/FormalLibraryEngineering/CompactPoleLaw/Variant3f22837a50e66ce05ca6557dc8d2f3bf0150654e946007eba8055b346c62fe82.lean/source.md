# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactPoleLaw.Variant3f22837a50e66ce05ca6557dc8d2f3bf0150654e946007eba8055b346c62fe82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6372350cbc19178063eb93acb7031eb214169de1` · SHA-256 `3f22837a50e66ce05ca6557dc8d2f3bf0150654e946007eba8055b346c62fe82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
set_option autoImplicit false

namespace Think.Compact

inductive CompactPole where
  | request
  | carrier
  | lowering
  | trace
  | compact
  | classifier
  | scheduler
  | cluster
  | boundary
deriving DecidableEq, Repr

def CompactPole.centerControlled :
    CompactPole → Bool
  | _ => true

theorem everyCompactPole_centerControlled
    (p : CompactPole) :
    p.centerControlled = true := by
  cases p <;> rfl

end Think.Compact
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=966b8103c107deb4070773e09a0c6f48f3bfc1c52a30c467291f0b0c7c60262d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactPoleLaw/Variant3f22837a50e66ce05ca6557dc8d2f3bf0150654e946007eba8055b346c62fe82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
