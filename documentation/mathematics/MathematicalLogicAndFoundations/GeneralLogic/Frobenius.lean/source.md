# Frobenius — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05e632a83d5c02551405c1998ea8184dec2b1fe0` · SHA-256 `b9854c8c117d49a1578496d0bb6970bb83232a3e043f216c5a524bd109dc73a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.Etale.GaloisModule

namespace Think.Kakeya.Etale

def frobeniusFixedPointPredicateStatement : String :=
  "x ∈ X(F_q^n) iff Φ_q^n(x)=x"

def frobeniusTraceMomentStatement : String :=
  "#X(F_q^n)=Σ_i (-1)^i Tr(Φ_q^n | H^i_et(X_bar,Q_l))"

def frobeniusIsNotBooleanStatement : String :=
  "Frobenius is an arithmetic evolution operator; fixed-point membership is Boolean-like."

theorem frobenius_fixed_point_predicate_reference : True := by
  trivial

theorem frobenius_trace_moment_reference : True := by
  trivial

end Think.Kakeya.Etale
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cbd7927a289f2e96d17984e88a3cc6c4bb1190dc3d948f1c20ff58b20116167 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frobenius/Variantb9854c8c117d49a1578496d0bb6970bb83232a3e043f216c5a524bd109dc73a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
