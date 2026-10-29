# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.A8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5OldIntegralCaptu.Varianta8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8eb3a61b48a36c2ad70839111161f7e9b6430526` · SHA-256 `a8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaXiPhiTransform

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/- Regression preserving the exact old unparenthesized proposition bodies.
The copied integral notation absorbs the retained boundary into its integrand.
At b = 0 both integrals vanish, so the old proposition asserts 0 = 1/2. -/
def oldUnparenthesized0 (u : ℂ) (b : ℝ) : Prop :=
    (8 : ℂ) *
        ∫ t in (0 : ℝ)..b,
          (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) =
      (1 / 2 : ℂ) +
        (4 * u ^ 2 - 1) *
          ∫ t in (0 : ℝ)..b,
            (thetaA t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) +
        thetaCoshBoundary u b

theorem oldUnparenthesized0_false_at_zero (u : ℂ) :
    ¬ oldUnparenthesized0 u 0 := by
  norm_num [oldUnparenthesized0]

def oldUnparenthesized1 (u : ℂ) (b : ℝ) : Prop :=
    (8 : ℂ) *
        ∫ t in (0 : ℝ)..b,
          (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) =
      (1 / 2 : ℂ) +
        (4 * u ^ 2 - 1) *
          ∫ t in (0 : ℝ)..b,
            (thetaA t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) +
        (thetaADerivSeries b : ℂ) * Complex.cosh (2 * u * (b : ℂ)) -
        (2 * u) * (thetaA b : ℂ) * Complex.sinh (2 * u * (b : ℂ))

theorem oldUnparenthesized1_false_at_zero (u : ℂ) :
    ¬ oldUnparenthesized1 u 0 := by
  norm_num [oldUnparenthesized1]

theorem corrected_identity_valid_at_zero (u : ℂ) :
    (1 / 2 : ℂ) + thetaCoshBoundary u 0 = 0 :=
  thetaPhi_cosh_interval_identity_at_zero u

#print axioms oldUnparenthesized0_false_at_zero
#print axioms oldUnparenthesized1_false_at_zero
#print axioms corrected_identity_valid_at_zero

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30286db5c39680cf2485a81bb9199f14d5a9c301e060264100d9154e19ac8ade -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5OldIntegralCaptu/Varianta8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
