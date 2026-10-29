# Space — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19989d69dae11eb77bda890411f3f116dc4da76f` · SHA-256 `2b36167fdced85e2a910529b3c4402a3eae161241ca1c4b81903c768b21aedaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.PositiveCapacity

/-!
# Semi-local Sonin spaces

The carrier at each finite cut is kept distinct from both the abstract defect
capacity and every Hardy realization.
-/

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure SoninSpaceFamily
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  Space : Finset Prime → Type uSpace
  origin : ∀ cut, Space cut
  realizationDigest :
    Finset Prime → RealizationDigest

end Mathematics.SemiLocalDefect.Sonin
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ec9f99ad9145b63dc13ee40e130a29bd3dfff7af585945a67d4d41645cd3803 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Space/Variant2b36167fdced85e2a910529b3c4402a3eae161241ca1c4b81903c768b21aedaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
