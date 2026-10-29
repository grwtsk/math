# Complete source: GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserCoordinates

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db172f71543d287f68c50be6c2bb26a905b971a9` · SHA-256 `151374de1b84d531bb665556bf5be7bb17d5c2e42f1d4f8115e058ee17284797`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Reader coordinates: grwtsk contributors, with OpenAI Codex assistance. MIT. -/
import GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserSource

namespace GRWTSK.Combinatorics.GraphTheory.HadwigerNelson

noncomputable section

/-- The product radical used by the exact coordinate table equals `√33`. -/
theorem sqrt_three_mul_sqrt_eleven : Real.sqrt 3 * Real.sqrt 11 = Real.sqrt 33 := by
  rw [← Real.sqrt_mul (show (0 : ℝ) ≤ 3 by norm_num)]
  norm_num

/-- Exact reader coordinates in the basis `1, √3, √11, √3√11 = √33`. -/
def packetCoordinates : Fin 7 → ℝ × ℝ := ![
  (0, 0),
  ((1 / 2 : ℝ) * (Real.sqrt 3), (1 / 2 : ℝ)),
  ((1 / 2 : ℝ) * (Real.sqrt 3), (-1 / 2 : ℝ)),
  ((1 : ℝ) * (Real.sqrt 3), 0),
  ((5 / 12 : ℝ) * (Real.sqrt 3) + (-1 / 12 : ℝ) * (Real.sqrt 11),
    (5 / 12 : ℝ) + (1 / 12 : ℝ) * (Real.sqrt 3 * Real.sqrt 11)),
  ((5 / 12 : ℝ) * (Real.sqrt 3) + (1 / 12 : ℝ) * (Real.sqrt 11),
    (-5 / 12 : ℝ) + (1 / 12 : ℝ) * (Real.sqrt 3 * Real.sqrt 11)),
  ((5 / 6 : ℝ) * (Real.sqrt 3), (1 / 6 : ℝ) * (Real.sqrt 3 * Real.sqrt 11))]

/-- The reader's exact coordinate table is the source-pinned complex point map. -/
theorem moserPoint_coordinates (i : Fin 7) :
    ((moserPoint i).re, (moserPoint i).im) = packetCoordinates i := by
  fin_cases i <;> apply Prod.ext <;>
    norm_num [packetCoordinates, moserPoint, moserA, moserB, moserT, moserU,
      Complex.mul_re, Complex.mul_im, Complex.div_ofReal_re, Complex.div_ofReal_im,
      Complex.add_re, Complex.add_im, Complex.sub_re, Complex.sub_im] <;> ring

end

end GRWTSK.Combinatorics.GraphTheory.HadwigerNelson
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64bfb93a59b13aadca6baa9a6e1611dd2fdb9b0fbf158005c6db5897a4ce31ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserCoordinates__SourceOccurrence267f1ff06fb0c0947a80bf7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
