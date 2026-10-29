# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.126.Variant0b65510482b8e4eefb1250b0a495f1f4a75b46d061d481b339b6b2feb0011059

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e768ea0398348f0c4d0c9a6d41af7c5e1f17330f` · SHA-256 `0b65510482b8e4eefb1250b0a495f1f4a75b46d061d481b339b6b2feb0011059`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Aesop

set_option aesop.check.all true

-- TODO simp_all introduces spurious metavariables in this example
set_option aesop.check.rules false
set_option aesop.check.tree false

theorem foo {a : Nat → Nat} (ha : a 0 = 37) :
    (match h : a 0 with | 42 => by simp_all | n => n) = 37 := by
  aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f8941893376389b73f33cdf8738511b00756063f0b692bf1f7a1493ba70c0ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/126/Variant0b65510482b8e4eefb1250b0a495f1f4a75b46d061d481b339b6b2feb0011059.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
