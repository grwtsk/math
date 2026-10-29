# Compiler Negative — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d10fdd25f86db942e6dbf6de40db272e8a3aa454` · SHA-256 `4798bfe0060a1d4e880b8084c46c3f8d0f6190508660426e51b0b3e6d6f4e8b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentionally invalid: the qualified compiler must report failure. -/
import Mathlib.Data.Finset.Basic

example : (0 : Nat) = 1 := by rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e3d9a7fec6049c7690cde2c20515ab647d2a9f82ccb388946b239cc13d4d28c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompilerNegative/Variant4798bfe0060a1d4e880b8084c46c3f8d0f6190508660426e51b0b3e6d6f4e8b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
