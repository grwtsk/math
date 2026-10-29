# All Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `631368896725224b1ff78243dfad6640920c5c11` · SHA-256 `079ce81c4c1836ea57920ce925ccb4a02922f4e59f6ebe0197966f6872c6876a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.PartialBitfield.Order
import Mathematics.BinaryFrontier.Completion.Core
import Mathematics.BinaryFrontier.Completion.Bitfield
import Mathematics.BinaryFrontier.Completion.ContinuationCover
import Mathematics.BinaryFrontier.Obstruction.MUS
import Mathematics.BinaryFrontier.Obstruction.Factorization
import Mathematics.BinaryFrontier.Obstruction.Provenance
import Mathematics.BinaryFrontier.Symmetry.Canonical
import Mathematics.BinaryFrontier.Symmetry.CompletionEquivariance
import Mathematics.BinaryFrontier.Symmetry.ObstructionAction
import Mathematics.BinaryFrontier.Symmetry.OrientationEquivariance
import Mathematics.BinaryFrontier.Refinement.Tree
import Mathematics.BinaryFrontier.Refinement.Address
import Mathematics.BinaryFrontier.Refinement.Boundary
import Mathematics.BinaryFrontier.Refinement.CanonicalObstruction
import Mathematics.BinaryFrontier.Refinement.Resolver
import Mathematics.BinaryFrontier.Presentation.DistinctionAdapter
import Mathematics.BinaryFrontier.Presentation.CompletionAdapter
import Mathematics.BinaryFrontier.Presentation.Noninterference
import Mathematics.BinaryFrontier.Presentation.CognitiveLoad

/-!
# Binary-frontier proof boundary

The umbrella exports finite structural implications and explicitly
proof-bearing adapters for change request `CR-NOE-BFPO-001`.

Canonicalization is data-only and can be used for obstructions only through a
context containing completion equivariance and primitive-core transport.
Resolver totality means a typed result for finite certified input, including
explicit unknown and malformed-input results.  It does not decide arbitrary
completion semantics.

Concrete project registries, completion decisions, continuation covers,
primitive-core extraction, admitted symmetry actions, terminal-address
certificates, and runtime owner admission remain separate evidence
obligations.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7524751d18de660781c922de5e12336b95c60c823e219873016e4a4c295f5515 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/All/Variant079ce81c4c1836ea57920ce925ccb4a02922f4e59f6ebe0197966f6872c6876a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
