# Complete source: GRWTSK.Topology.MetricTopology.Curve.Variant08cbb7cc68dcf97aac05f2749bfc59dd8855df5cb1fb70be66ef21f023c703b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db618342901fe77595b894975e907e65c5846226` · SHA-256 `08cbb7cc68dcf97aac05f2749bfc59dd8855df5cb1fb70be66ef21f023c703b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.Gauge.Reference

namespace Think.Kakeya.HasseWeil

/-!
Reference data for the Hasse-Weil torsion transport layer.

This lightweight mirror keeps exact curve-side language separate from K128
client measurement. It does not assert global Hasse-Weil arithmetic results.
-/

structure ShortWeierstrassCurve where
  a : ℝ
  b : ℝ
  discriminant : ℝ
  nonsingular : Bool

def KEqual (eps d : ℝ) : Prop :=
  d ≤ eps

def TorsionResidueHeat (eps dist : ℝ) : ℝ :=
  if dist - eps < 0 then 0 else dist - eps

def KTorsionClaim (eps dist_nP_O : ℝ) : Prop :=
  KEqual eps dist_nP_O

end Think.Kakeya.HasseWeil
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0c9023dd4da5b74834e548cafde2af78cf75bbebeda94ced67d743a0b7b4d44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Curve/Variant08cbb7cc68dcf97aac05f2749bfc59dd8855df5cb1fb70be66ef21f023c703b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
