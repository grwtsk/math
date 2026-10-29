# Complete source: GRWTSK.Topology.MetricTopology.K128Transport.Variant3cff2a0c9478bbf6a16522a1a2d434175e741f2916c9ac2cf5ad9156b915ae4e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `077b51c1fb60beb074fe3926be081ba764205063` · SHA-256 `3cff2a0c9478bbf6a16522a1a2d434175e741f2916c9ac2cf5ad9156b915ae4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.HasseWeil.Torsion

namespace Think.Kakeya.HasseWeil

theorem torsion_residue_heat_nonnegative
  (eps dist : ℝ) :
  0 ≤ TorsionResidueHeat eps dist := by
  unfold TorsionResidueHeat
  split
  · decide
  · exact Rat.not_lt.mp ‹¬dist - eps < 0›

def k128_torsion_iff_zero_residue : String :=
  "proof-pending: KTorsionClaim eps dist iff TorsionResidueHeat eps dist = 0 under nonnegative epsilon and distance"

theorem exact_torsion_transports_to_k128
  (eps : ℝ)
  (heps : 0 ≤ eps)
  (dist_nP_O : ℝ)
  (hExactDistZero : dist_nP_O = 0) :
  KTorsionClaim eps dist_nP_O := by
  unfold KTorsionClaim KEqual
  rw [hExactDistZero]
  exact heps

end Think.Kakeya.HasseWeil
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=049cf3f5b422c983c3fc5b7e696a79d31589303860c55ce1f618dbbc27276b2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/K128Transport/Variant3cff2a0c9478bbf6a16522a1a2d434175e741f2916c9ac2cf5ad9156b915ae4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
