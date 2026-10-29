# Complete source: GRWTSK.Algebra.LinearAlgebra.UniqueFactorization.Variant52cd77340261218b588d3617e1a8f6a4c7eb271f3f7c1e34e50eee761de48a56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3cc7dea2c6c2915f16b02edeaabfa00f8f17e2f0` · SHA-256 `52cd77340261218b588d3617e1a8f6a4c7eb271f3f7c1e34e50eee761de48a56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Tree.ArithmeticShadow

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

theorem ordered_factorization_by_code
    (P : PairingCodec)
    {A B : OrderedPrimeCore}
    (h : A.code P = B.code P) :
    A = B :=
  same_normalized_code_same_factorization P h

theorem ordered_factorization_by_topology_prime
    (P : PairingCodec)
    (E : PrimeEnumerator)
    {A B : OrderedPrimeCore}
    (h : (topologyPrime P E A).value = (topologyPrime P E B).value) :
    A = B :=
  same_topologyPrime_same_factorization P E h

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47e340a68af6e49019f1b60d40805d2be4762916928a21fcded305e399bae333 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/UniqueFactorization/Variant52cd77340261218b588d3617e1a8f6a4c7eb271f3f7c1e34e50eee761de48a56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
