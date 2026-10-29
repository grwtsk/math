# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IdentityTypes.MatrixReconstructionWitnesses.Variant5cd55e06b5985bd1.ExistentialReachabilityAndReconstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d71a3195fb643e5d1ed1f966676e76ea157a7658` · SHA-256 `eca909b21b92659eceb84dca570f76afe49d10edb8a0ada653aeecb6f322c2c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact action-reachability and complete supplied reconstruction interface
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1
Organized SHA-256: e42c061179cb502920399a829e3e4814533f1e17f44f6181e25b2814937292e8
PMD: 510.0.070.020.040 identity types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import Folder.Archive.MatrixSymmetry

/-!
# Folder.Archive.MatrixOrbit

Radiation role: archive-symmetry
BinaryMatrix spine: This module states orbit membership and canonicalization contracts for BinaryMatrix archive atoms.
Ontology: archive.matrix_orbit
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: carrier
-/

open Folder Folder.Archive

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IdentityTypes.MatrixReconstructionWitnesses.Variant5cd55e06b5985bd1

def InSameOrbit
    (A : MatrixAction)
    (M N : Carrier.BinaryMatrix) : Prop :=
  ∃ g : A.Spin, A.act g M = N

structure OrbitCanonicalizer (A : MatrixAction) where
  canonical : Carrier.BinaryMatrix → Carrier.BinaryMatrix
  spinFromCanonical : Carrier.BinaryMatrix → A.Spin
  reconstruct :
    ∀ M, A.act (spinFromCanonical M) (canonical M) = M
  canonical_in_orbit :
    ∀ M, InSameOrbit A M (canonical M)

theorem orbitCanonicalizer_reconstruct
    {A : MatrixAction}
    (C : OrbitCanonicalizer A)
    (M : Carrier.BinaryMatrix) :
    A.act (C.spinFromCanonical M) (C.canonical M) = M :=
  C.reconstruct M


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IdentityTypes.MatrixReconstructionWitnesses.Variant5cd55e06b5985bd1
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c9d413ea3cf2c88cb1358823364055c6180e6a43f9af28693e6d5aa4798fcb7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/IdentityTypes/MatrixReconstructionWitnesses/Variant5cd55e06b5985bd1/ExistentialReachabilityAndReconstruction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
