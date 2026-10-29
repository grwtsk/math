# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SecurityGame.Variant2e30131798fd1589e3d41bfa63bd45385e7df5031bd9bb51490b80220fdd0d73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12d7715c0221f9dca29307646ebf24d9c6a4d231` · SHA-256 `2e30131798fd1589e3d41bfa63bd45385e7df5031bd9bb51490b80220fdd0d73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.MobiusOntology.EffectivePresentation
import Mathematics.Resolution.AdversaryInvariant

/-!
# Declared security games

The success event, oracle model, advantage, and resource measure are part of
the game object; no topological invariant supplies them implicitly.
-/

namespace Mathematics.MobiusOntology

universe u v w x

abbrev OracleProblem :=
  Mathematics.Resolution.OracleProblem

structure SecurityGame
    (Input : Type u) (Output : Type v)
    (Coordinate : Type w) (Attack : Type x) where
  problem : OracleProblem Input Output Coordinate
  successful : Attack → Prop
  advantage : Attack → ℝ
  resources : Attack → ResourceCost
  modelSemantics : Prop
  modelSemanticsProof : modelSemantics

inductive SecurityProblemKind
  | preimage
  | collision
  | keySearch
  | distinguishing
  | forgery
  | proofSimulation
  deriving DecidableEq, Repr

end Mathematics.MobiusOntology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6db0d48ab640b38c4a88ea87b7103e1bbce270e120e8fdb466eeb1deea5d47c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SecurityGame/Variant2e30131798fd1589e3d41bfa63bd45385e7df5031bd9bb51490b80220fdd0d73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
