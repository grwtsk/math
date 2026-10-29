# Modularity — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2efada11c9e64483b0f4941b0dec1d35a004b552` · SHA-256 `1b97b44aed35e2ee90985cbc5b03489f219ea0ec5071e497fc1cac57c27cd09c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Tree.UniqueFactorization

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

structure ModularityPrimeAssignment where
  modularity : Modularity
  factor : IrreducibleFactor
  sameModularity : factor.modularity = modularity
  claimBoundary : List String

theorem modularity_assignment_prime_visible
    (A : ModularityPrimeAssignment) :
    Nat.Prime A.factor.prime.value :=
  A.factor.prime.isPrime

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a700a961bed678db420687f627c95f43d39d0ce94c92fcb5618e4eddc827b454 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modularity/Variant1b97b44aed35e2ee90985cbc5b03489f219ea0ec5071e497fc1cac57c27cd09c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
