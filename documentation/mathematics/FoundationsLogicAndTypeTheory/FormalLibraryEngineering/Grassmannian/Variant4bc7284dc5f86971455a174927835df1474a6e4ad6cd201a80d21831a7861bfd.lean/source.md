# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grassmannian.Variant4bc7284dc5f86971455a174927835df1474a6e4ad6cd201a80d21831a7861bfd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1becb695231f402d308c7c2d15c4175df1c68b29` · SHA-256 `4bc7284dc5f86971455a174927835df1474a6e4ad6cd201a80d21831a7861bfd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors
import FormalResearch.PositiveAtlas.Grassmannian.Plucker24
import FormalResearch.PositiveAtlas.Grassmannian.Fixtures
import FormalResearch.PositiveAtlas.Grassmannian.PivotFixtures
import FormalResearch.PositiveAtlas.Grassmannian.RecognitionFixtures

import FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian
import FormalResearch.PositiveAtlas.Grassmannian.QuotientConvention

/-!
# Positive-Grassmannian realization program

The first layer contains actual ordered determinants, row-change gauge laws,
normalized Gr(2,4) coordinate recognition, full-rank pivot existence,
projective recognition for actual full-rank frames, and obstruction fixtures.

The generic Positive Atlas remains independent of this specialization. Abstract
Pluecker-tuple realizability, network realization, determinantal analysis,
certificate-preserving recognition, and global topological/metric coverage remain
separately tracked obligations. Recognition of actual full-rank row spaces
is not the full Atlas certificate equivalence.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d2b0d6540e5880a4f184c2ebff1806dd19129a7656036e36251a568b7fea98f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grassmannian/Variant4bc7284dc5f86971455a174927835df1474a6e4ad6cd201a80d21831a7861bfd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
