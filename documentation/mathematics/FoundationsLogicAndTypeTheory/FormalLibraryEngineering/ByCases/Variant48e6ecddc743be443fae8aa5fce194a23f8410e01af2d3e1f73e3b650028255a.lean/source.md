# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ByCases.Variant48e6ecddc743be443fae8aa5fce194a23f8410e01af2d3e1f73e3b650028255a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2ad2bfec2fec8df4a04b095695fdecf0480843a` · SHA-256 `48e6ecddc743be443fae8aa5fce194a23f8410e01af2d3e1f73e3b650028255a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.ByCases

example : True := by
  if 1 + 1 = 2 then _ else ?_
  case pos => trivial
  fail_if_success case neg => contradiction
  · contradiction

example (p : Prop) : True := by
  if p then ?foo else trivial
  case foo => trivial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f17b2d72634be0130e8c6a3c1c7f2e5e4c192a438e0d8c0b5259e6ace3d19fe7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByCases/Variant48e6ecddc743be443fae8aa5fce194a23f8410e01af2d3e1f73e3b650028255a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
