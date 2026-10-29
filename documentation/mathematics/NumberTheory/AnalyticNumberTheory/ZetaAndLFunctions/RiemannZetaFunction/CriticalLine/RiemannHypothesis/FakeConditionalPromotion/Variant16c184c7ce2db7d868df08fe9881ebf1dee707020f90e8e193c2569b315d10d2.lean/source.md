# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FakeConditionalPromotion.Variant16c184c7ce2db7d868df08fe9881ebf1dee707020f90e8e193c2569b315d10d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d46e2d1ea557aef9580d6716e5f8c5f1c1e69fd4` · SHA-256 `16c184c7ce2db7d868df08fe9881ebf1dee707020f90e8e193c2569b315d10d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.ConditionalCriteria

/-!
Negative fixture for RH conditional-discharge discipline.

This file may typecheck because all hard inputs are explicit parameters. It
must not be accepted by proof-safety or final-cone audits as an unconditional
RH proof.
-/

namespace Folder
namespace RH

theorem fake_riemann_hypothesis
    (O : RHOperatorData)
    (hsa : IsSelfAdjoint O.D)
    (hcompact : HasCompactResolvent O.D)
    (hzero :
      ∀ z : ℂ,
        H0Zero z ↔
          ∃ mu ∈ RHSpectrum O.D, spectralParameter mu = z)
    (hreal :
      ∀ mu ∈ RHSpectrum O.D, H0ZeroIsReal (spectralParameter mu))
    (htranslate : RiemannHypothesis ↔ H0RealZeros) :
    RiemannHypothesis := by
  exact rh_of_h0_selfadjoint_realization
    O hsa hcompact hzero hreal htranslate

end RH
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09e0699edb79d618c4ff7d8b63d4942bf0f8d158e5e7880022c308d12553ba21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FakeConditionalPromotion/Variant16c184c7ce2db7d868df08fe9881ebf1dee707020f90e8e193c2569b315d10d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
