# Local Rank Local Rank Certificate — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15a758a66b8dfce1bfd7b2d7121d2e28775ad8e5` · SHA-256 `567ff3f5cf2d05e3033460797a678b714edece8980c86f4c2507505cb49b5e43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.OrdinalTally.NormalForm
import Mathematics.StratifiedBoundary.Frontier.MajorityCrossing

/-!
# Injective finite frontier ranks

Ranks are local presentation coordinates.  They do not identify orbit
quotients unless a separate automorphism canonicalizer is supplied.
-/

namespace Mathematics.StratifiedBoundary.Frontier

universe uFrontier

structure LocalRankCertificate
    (Frontier : Type uFrontier) where
  rank : Frontier → Nat
  injective :
    Function.Injective rank

def LocalRankCertificate.tallyCode
    {Frontier : Type uFrontier}
    (certificate :
      LocalRankCertificate Frontier)
    (frontier : Frontier) :
    OrdinalTally.RawCode :=
  .tall (certificate.rank frontier)

theorem localRank_equal_iff
    {Frontier : Type uFrontier}
    (certificate :
      LocalRankCertificate Frontier)
    {left right : Frontier} :
    certificate.rank left =
        certificate.rank right ↔
      left = right :=
  ⟨certificate.injective, congrArg certificate.rank⟩

end Mathematics.StratifiedBoundary.Frontier
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1bfc3a6468509af4bd6f96fca0f4d631a7790d324ec6e67b4be60817fedf5479 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalRank/Variant567ff3f5cf2d05e3033460797a678b714edece8980c86f4c2507505cb49b5e43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
