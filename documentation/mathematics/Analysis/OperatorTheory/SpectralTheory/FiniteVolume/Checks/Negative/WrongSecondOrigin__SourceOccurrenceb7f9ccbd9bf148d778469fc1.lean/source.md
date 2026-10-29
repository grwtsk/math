# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.WrongSecondOrigin

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4cf357f52051ebc74fe557c22c73c7f1458783e` · SHA-256 `e7f9850d6b02d80c15618b791c8634e4a90df1f7804526514dffadd847c5523a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.DirichletCut
open GRWTSK.Spectral.DirichletCut GRWTSK.Spectral.SturmianFiniteVolume
example : cutHamiltonian 2 (1/2) 3 0 0 0 1 1 = hamiltonian 1 (1/2) 3 0 0 0 0 := by
  change hamiltonian 2 (1/2) 3 0 0 ⟨1,by decide⟩ ⟨1,by decide⟩ -
    joiningEdge 2 0 ⟨1,by decide⟩ ⟨1,by decide⟩ =
    hamiltonian 1 (1/2) 3 0 0 0 0
  simp only [hamiltonian, Matrix.add_apply, Matrix.diagonal_apply,
    freeDirichlet, joiningEdge]
  norm_num [
    GRWTSK.LinearAlgebra.Sturmian.potential, GRWTSK.LinearAlgebra.Sturmian.bit, Int.fract]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6bbac03eec6c4fc3ed6b8776250518174e433e93695273fb5455a8d0cf7dbea8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/WrongSecondOrigin__SourceOccurrenceb7f9ccbd9bf148d778469fc1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
