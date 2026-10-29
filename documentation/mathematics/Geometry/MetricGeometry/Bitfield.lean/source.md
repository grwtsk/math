# Complete source: GRWTSK.Geometry.MetricGeometry.MetricSpaces.FiniteWeightedHamming.Bitfield

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b5471500401e906c664ea8a5af7d3c5b13d713c` · SHA-256 `967b79afcf2db732b889888548615c15db3b0bf63447880154a166e90f79c6e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Uncompiled source split candidate: Finite Boolean coordinate bitfields

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing notices remain
preserved in the exact source archives and copied source documentation.
Source original SHA256: 59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef
Source regions: bytes 382..434. Review: attribution-254-review-000003.
Original documentation below describes the unsplit source context.
No Lean compilation, proof acceptance or public umbrella admission is asserted.
-/

import Std

/-!
# Registered finite bitfields

The spectral-closure bitfield is finite by construction.  Its coordinates are
not anonymous booleans: every coordinate carries a source locus, meaning,
authority class, admissibility rule reference, metric weight, event reference,
and an explicit unresolved flag.
-/

namespace GRWTSK.Geometry.MetricGeometry.MetricSpaces.FiniteWeightedHamming

abbrev Bitfield (width : Nat) := Fin width → Bool

end GRWTSK.Geometry.MetricGeometry.MetricSpaces.FiniteWeightedHamming
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa52ddea3f2b38daf7616e89b2915fd898fe86dec233885347f65992b25b549f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/MetricGeometry/MetricSpaces/FiniteWeightedHamming/Bitfield.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
