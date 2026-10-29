# Output Limit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21a3e5890e39c33f63002c63220c1f97cc74b792` · SHA-256 `26bdcbeea44c89ae34a142442f473160b52af63d21c03dfa1029c432707dfc07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Synthetic output overflow: all raw output must remain private and bounded. -/
import Lean

#eval IO.println (String.ofList (List.replicate 262144 'x'))
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0410617c98ed6dab6051886f088e3b0c23ba23191427bd77c977f224d4217912 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OutputLimit/Variant26bdcbeea44c89ae34a142442f473160b52af63d21c03dfa1029c432707dfc07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
