# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Def.Variant26acc316657ef409d3e0fe2b3a60d5852c30eeb8eb8588f3f073819b903e5a52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33514f35818b18636dd680b5cc357613255edb33` · SHA-256 `26acc316657ef409d3e0fe2b3a60d5852c30eeb8eb8588f3f073819b903e5a52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-- warning: declaration uses `sorry` -/
#guard_msgs in
def badly_defined_nat_with_sorry : Nat :=
  let n : Nat := 1 + sorry
  n
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c61a85ac2eaf2926be5c5a3c416e56ccaec0ecfcd936c5612a26693f20ff0c72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Def/Variant26acc316657ef409d3e0fe2b3a60d5852c30eeb8eb8588f3f073819b903e5a52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
