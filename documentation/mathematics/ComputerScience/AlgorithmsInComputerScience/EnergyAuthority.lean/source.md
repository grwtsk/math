# Energy Authority — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfe811957c453b56631185e2a97f8678a639fb48` · SHA-256 `6b3bb14530c9b9b6475f50773c96f3893b595a659956884bd5bf11b7e9dcc167`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Relaxation.HardConstraint

/-! # Discrete relaxation energy -/

namespace Mathematics.Relaxation

/--
Natural-valued energy is an operational termination measure.  It is not
theorem authority and need not represent a physical energy.
-/
structure Energy where
  energyId : StableId
  measure : State → Nat
  componentMeasures : List (State → Nat)
  energyDigest : Digest

end Mathematics.Relaxation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a0c80eff0f8ffb2d6b103b70b1cd352d4469582612c0803c54f4ae257cde27a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant6b3bb14530c9b9b6475f50773c96f3893b595a659956884bd5bf11b7e9dcc167.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
