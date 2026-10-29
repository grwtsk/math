# Complete source: GRWTSK.Analysis.IntervalIntegral.Reflection.Checks.Negative.MissingParitySectorIntegrability

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `029af8a486d3b6d162534bc07bc2eeb701d2a2b2` · SHA-256 `1c124cf39869f2a00741a5d11e6b12343379d546f7f862beb2dcf931113e05af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.IntervalReflection
open GRWTSK.Analysis.IntervalReflection MeasureTheory
example (a b : ℝ) (f g : ℝ → ℝ)
    (hpp : IntervalIntegrable (fun t ↦ evenPart a b f t * evenPart a b g t) volume a b)
    (hmm : IntervalIntegrable (fun t ↦ oddPart a b f t * oddPart a b g t) volume a b) :
    (∫ t in a..b, f t * g t) = (∫ t in a..b, evenPart a b f t * evenPart a b g t) + (∫ t in a..b, oddPart a b f t * oddPart a b g t) :=
  integral_product_eq_even_add_odd a b f g hpp hmm
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18834747c453102688896b889ad7685d2d230969e64bf795b158813a9e5bbd1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/IntervalIntegral/Reflection/Checks/Negative/MissingParitySectorIntegrability.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
