# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Replay.Variantfa236ae8f24e930a792d7af48bca7388b107db7382a37bbdaa22108cc44642c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89405a7ebd3541adf8ea55dac6144481eef01709` · SHA-256 `fa236ae8f24e930a792d7af48bca7388b107db7382a37bbdaa22108cc44642c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.MobiusOntology.Resolver

/-!
# Deterministic replay
-/

namespace Mathematics.MobiusOntology

universe u v w x y z q r s t

theorem deterministic_replay
    {Result : Type u} {CoreSound : Result → Prop}
    {ArithmeticCertificate : Type v}
    {AnalyticCertificate : Type w}
    {SecurityCertificate : Type x}
    {BridgeCertificate : Type y}
    {ArithmeticUnknown : Type z}
    {AnalyticUnknown : Type q}
    {SecurityUnknown : Type r}
    {BridgeUnknown : Type s}
    {ContinuousWitness BooleanWitness OntologyWitness Reject : Type t}
    (cut :
      ResolverCut
        Result CoreSound
        ArithmeticCertificate AnalyticCertificate
        SecurityCertificate BridgeCertificate
        ArithmeticUnknown AnalyticUnknown
        SecurityUnknown BridgeUnknown
        ContinuousWitness BooleanWitness OntologyWitness Reject) :
    resolveMobiusOntology cut = resolveMobiusOntology cut :=
  rfl

structure ReplayCertificate
    (Digest : Type u) (Result : Type v) where
  cutDigest : Digest
  resultDigest : Digest
  first : Result
  replayed : Result
  exact : replayed = first

end Mathematics.MobiusOntology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=020d287eb61cea6900cfc3d0f6ff0441a87ccc5a61d8297b7095720726e141a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Replay/Variantfa236ae8f24e930a792d7af48bca7388b107db7382a37bbdaa22108cc44642c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
