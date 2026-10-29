# Natural Equality Package — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c78f6a6e2c81977de0ebd436b168e9f79746620` · SHA-256 `ef0532a6b095186799935d4d24584f7f6799d53b6f0d92b5f9b0b4cdecf7eb50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
NaturalEqualityPackage — Complete supplied Nat equality package: all Curve/type/numerical fields and both equations retained, with both exact projection proofs. The Nat annotations have no defined relation to curve ranks, Sha cardinalities or analytic invariants.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: bb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf
Organized SHA-256: f28e4881464fff1c283ee0ffe4e748566c2850286d56693ea837adb08851ff5a
PMD: 510.0.070.020.040 identity types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import Folder.Arithmetic.BSDTwistWitness
import Folder.Arithmetic.EllipticCurve
import Folder.Arithmetic.ModularWitness
import Folder.Arithmetic.Torsion

/-!
# Folder.Research.ArithmeticBoundary

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.arithmetic_boundary
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IdentityTypes.PairedNaturalEqualities.Variantbb0e243a99b3aab0

open Folder
open Folder.Research

structure BSDContract where
  Curve : Type _
  analyticRank : Nat
  algebraicRank : Nat
  shaOrderAnalytic : Nat
  shaOrderAlgebraic : Nat
  rank_eq : analyticRank = algebraicRank
  sha_eq : shaOrderAnalytic = shaOrderAlgebraic

theorem bsd_rank_eq
    (B : BSDContract) :
    B.analyticRank = B.algebraicRank :=
  B.rank_eq

theorem bsd_sha_eq
    (B : BSDContract) :
    B.shaOrderAnalytic = B.shaOrderAlgebraic :=
  B.sha_eq

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IdentityTypes.PairedNaturalEqualities.Variantbb0e243a99b3aab0
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0eb99e317956163b0377f5401b83125af221ae42910ec496f1f7b5f9c14d7dcd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/IdentityTypes/PairedNaturalEqualities/Variantbb0e243a99b3aab0/NaturalEqualityPackage.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
