# Frobenius Certificate — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8bee5ae4f0bebb8e77ee4b787ca2cc1175e96af` · SHA-256 `478dcd73aa77750a16782bcec15d8dba81aca129a4e71174c14455c77c4b6d66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Snapshot-bound Frobenius authority

Splitting, ramification, and local factors are accepted only from the exact
extension, prime, decomposition, inertia, and factorization data.
-/

namespace Mathematics.MobiusOntology

universe u v w x y z

structure FrobeniusCertificate
    (Extension : Type u) (Prime : Type v)
    (DecompositionGroup : Type w) (InertiaGroup : Type x)
    (Factorization : Type y) (Snapshot : Type z) where
  extension : Extension
  prime : Prime
  decompositionGroup : DecompositionGroup
  inertiaGroup : InertiaGroup
  factorization : Factorization
  snapshot : Snapshot
  frobeniusStatement : Prop
  frobeniusProof : frobeniusStatement
  snapshotCurrent : Prop
  snapshotCurrentProof : snapshotCurrent

end Mathematics.MobiusOntology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a61b9ce46bd1b268ace73016e09b398520211558eca578cb1afad44974946c51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FrobeniusCertificate/Variant478dcd73aa77750a16782bcec15d8dba81aca129a4e71174c14455c77c4b6d66.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
