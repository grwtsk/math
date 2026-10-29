# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.GaussianAnnularMissingPositivity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78a0a17997229974979fa2a3e3ea55bec49c0c78` · SHA-256 `3bf498b6d0d47236bbe78347dbec4da6262340412690e51e76c37a85c93019bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- The accepted positive module proves actual x0/q0 logarithmic-argument failures,
while separately checking the full annulus-weighted identity at x0. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianAnnularSeparation
namespace GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation.Checks
noncomputable section

-- Intended rejection: nonnegativity at zero does not prove the required strict positivity of x.
example :
    Real.exp (∑i : Option Empty,gaussianSlotSlope i*gaussianSlotPoint 0 (fun j=>nomatch j) i)=
      (0:ℝ)/(∏j : Empty,(fun k : Empty=>nomatch k) j) :=
  gaussianSlot_argument 0 (le_refl (0:ℝ)) (fun j : Empty=>nomatch j) (fun j=>nomatch j)

end
end GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation.Checks
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50777ca5bb94caee2bd75c31c5a8ebc4de8c8c343e7bff55d10c8842400aea96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/GaussianAnnularMissingPositivity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
