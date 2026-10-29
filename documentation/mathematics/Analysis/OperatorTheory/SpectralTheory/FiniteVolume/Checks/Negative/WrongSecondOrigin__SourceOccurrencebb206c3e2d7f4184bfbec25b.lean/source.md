# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.WrongSecondOrigin

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4997698144419b4f6691ec5c9f5ca32991244ff` · SHA-256 `3957f41ef2840c38f6e83b3a44b6d22a729c990d39bce148af684ebce8ac18f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.DirichletCut
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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6df8bac363027e3931d46061e3c1298c62acec5b34ec57676cde99e073a33a44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/WrongSecondOrigin__SourceOccurrencebb206c3e2d7f4184bfbec25b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
