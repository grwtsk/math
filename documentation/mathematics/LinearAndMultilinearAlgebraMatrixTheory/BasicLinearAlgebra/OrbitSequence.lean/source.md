# Orbit Sequence — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5af21fc4cbe30c6f84902f88cb711d4f4b8be365` · SHA-256 `b533202af8a930b87742e9b1e9895b11b5721c92f3fb8ae3d22256867186a722`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
OrbitSequence
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3
Organized SHA-256: 1aee939574508226e9f45c4fceea5fc1509feabc7251717bc8d797604837d104
PMD: 510.6.050 dynamical systems (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: physical GRWTSK subject placement only. Exact original namespace blocks, imported provider names, fields, hypotheses, equations and proofs are preserved. Historical provider lookup is unreplayed; the archive path is not an activated import alias. Distinct historical candidate versions are isolated and are not claimed compatible for coimport. No extra algebraic, analytic or computational acceptance claim is added.
-/

import BooleanMatrix.Application.Core
import GRWTSK.DynamicalSystems.NaturalIterationOnBooleanMatrices.Variant1f1f2efdeade9306.FiniteIteration

/-!
# Iterated BooleanMatrix execution
-/

namespace BooleanMatrix
namespace Application

/-- The complete countable execution sequence from an initial matrix. -/
def orbit
    (application : Application)
    (initial : Matrix) :
    Nat → Matrix :=
  fun step => iterate application step initial

@[simp]
theorem orbit_zero
    (application : Application)
    (initial : Matrix) :
    orbit application initial 0 = initial :=
  rfl

@[simp]
theorem orbit_succ
    (application : Application)
    (initial : Matrix)
    (step : Nat) :
    orbit application initial (Nat.succ step) =
      application (orbit application initial step) :=
  rfl

end Application
end BooleanMatrix
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c95662db1a7c9498a6b77c4299363534635b59c1cf904f938cd95950fb59275 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/NaturalIterationOnBooleanMatrices/Variant1f1f2efdeade9306/OrbitSequence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
