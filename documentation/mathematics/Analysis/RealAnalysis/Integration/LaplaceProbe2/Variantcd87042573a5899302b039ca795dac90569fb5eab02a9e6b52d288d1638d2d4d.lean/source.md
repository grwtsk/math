# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.LaplaceProbe2.Variantcd87042573a5899302b039ca795dac90569fb5eab02a9e6b52d288d1638d2d4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `020a872c3acf5834563e027cd6f8cefacb371803` · SHA-256 `cd87042573a5899302b039ca795dac90569fb5eab02a9e6b52d288d1638d2d4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecialFunctions.Pow.Complex
#check Complex.ofReal_tsum
#check Complex.ofReal_log
#check Complex.ofReal_exp
#check MeasureTheory.Integrable.ofReal
#check MeasureTheory.Integrable.mul_bdd
#check MeasureTheory.Integrable.bdd_mul
#check MeasureTheory.Integrable.mul_continuousOn
#check MeasureTheory.Integrable.mono'
#check Complex.continuous_ofReal
#check Complex.ofRealCLM.integrable_comp
#check Complex.norm_real
#check Complex.summable_one_div_nat_add_one_cpow
#check Summable.ofReal
#check tsum_mul_right
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=38242a16a8554ae9c6d0241258e1e4f0db4667696fb6911525549116aaefa7f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LaplaceProbe2/Variantcd87042573a5899302b039ca795dac90569fb5eab02a9e6b52d288d1638d2d4d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
