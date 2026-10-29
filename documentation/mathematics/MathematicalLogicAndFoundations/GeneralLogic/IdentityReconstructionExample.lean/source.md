# Identity Reconstruction Example — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bbdf9c5b2ff8d927706d89fd08a67de799e76fe` · SHA-256 `b21f1c122c347506bb5b8c15cc24cae03f647c53a1d2babc8ec6eea1e99a7968`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact Unit-spin identity reconstruction witness and equality proof
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

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IdentityTypes.MatrixReconstructionWitnesses.Variant5cd55e06b5985bd1.ExistentialReachabilityAndReconstruction

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

def copyCanonicalizer : OrbitCanonicalizer copyAction where
  canonical := id
  spinFromCanonical := fun _ => ()
  reconstruct := by intro M; rfl
  canonical_in_orbit := by
    intro M
    exact ⟨(), rfl⟩

theorem copyCanonicalizer_reconstruct
    (M : Carrier.BinaryMatrix) :
    copyAction.act (copyCanonicalizer.spinFromCanonical M)
        (copyCanonicalizer.canonical M) = M :=
  copyCanonicalizer.reconstruct M


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IdentityTypes.MatrixReconstructionWitnesses.Variant5cd55e06b5985bd1
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26d022a2375634df89ed4c5d369ab31f4643fb42d719750f56c77c53660f115a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/IdentityTypes/MatrixReconstructionWitnesses/Variant5cd55e06b5985bd1/IdentityReconstructionExample.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
