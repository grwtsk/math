# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.GaussianCoupledMissingActive

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9591a7daf38c068ed1ff16221d6290d687c7a127` · SHA-256 `2ffc3c2f2e3e173703e599c0907e6fac798142dfcf5556f4b69eae29ab3b38f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- The accepted positive module proves that the zero cutoff loses the actual nonzero P(1).
This final application deliberately omits its necessary active-cutoff evidence. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianCoupledSeparation
namespace GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation.Checks
noncomputable section
open scoped SchwartzMap
open MeasureTheory
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.MellinTransform.GaussianLogWindow

-- Intended rejection: a reflexive real inequality cannot establish the active-cutoff implication.
example :
    (∏_i : Unit,(1:ℂ))*gaussianMellinProfile (1*Real.exp (∑_i : Unit,(0:ℝ)*0))=
      ∫t : ℝ,(∏_i : Unit,(1:ℂ)*logPhase t ((0:ℝ)*0))*
        gaussianJointDensity (0:SchwartzMap ℝ ℂ) zero_cutoff_compact 1 t :=
  gaussian_coupled_separation (ι:=Unit) (fun _ _=>(1:ℂ)) (fun _=>0) (fun _=>0)
    (0:SchwartzMap ℝ ℂ) zero_cutoff_compact 1 (by norm_num) (le_refl (0:ℝ))

end
end GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation.Checks
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5e030bb69633929a325050e9357ac4448526bef9e19c98ae5ae6ed2e25bc49d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/GaussianCoupledMissingActive.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
