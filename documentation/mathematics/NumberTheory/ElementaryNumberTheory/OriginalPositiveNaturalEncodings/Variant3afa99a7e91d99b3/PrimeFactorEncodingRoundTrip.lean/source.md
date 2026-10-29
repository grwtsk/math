# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.OriginalPositiveNaturalEncodings.Variant3afa99a7e91d99b3.PrimeFactorEncodingRoundTrip

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3dc551994f20a2899c4824ad28c8442f91bdb31f` · SHA-256 `0bce1ba2ca963038fac5235a64c8c915bb01f5969d2570f9ab8d2b41ee6226a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
PrimeFactorEncodingRoundTrip — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3afa99a7e91d99b3464c8ac7ff681fb95b4c384a1309c1ea41877a096bfd3501
Organized SHA-256: 3702d35a1f5de83ff7f81a6f2ea8aa16a3c4aa9693844a38f0388c286e7e6bae
PMD: 510.2.010 elementary number theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete original positive-natural input and exact old-provider encode/decode equality with unchanged qualified proof; no provider substitution, binary-matrix injectivity, tree uniqueness or new acceptance claim. -/

import Folder.NumberTheory.FundamentalTheorem
import Folder.CellularArithmetic.CellularRepresentation
import Folder.CellularArithmetic.BinaryMatrixEncoding
import Folder.Core.Ontology

/-!
# Folder.Core.PrimeFactorCellularArithmetic

Radiation role: core
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: concept.prime_factor_cellular_arithmetic
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.OriginalPositiveNaturalEncodings.Variant3afa99a7e91d99b3

open Folder

theorem prime_factor_cellular_decode_encode
    (n : NumberTheory.PositiveNat) :
    (CellularArithmetic.encodePositiveNat n).decode = n.val :=
  CellularArithmetic.decode_encode_positiveNat n

end GRWTSK.NumberTheory.ElementaryNumberTheory.OriginalPositiveNaturalEncodings.Variant3afa99a7e91d99b3
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93564e144dcb2fd5e7e93f5217f75b54a2a5d3886fea91ce8db76672dd2b09a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/OriginalPositiveNaturalEncodings/Variant3afa99a7e91d99b3/PrimeFactorEncodingRoundTrip.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
