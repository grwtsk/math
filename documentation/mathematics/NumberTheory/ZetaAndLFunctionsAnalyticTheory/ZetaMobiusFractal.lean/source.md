# Zeta Mobius Fractal — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6aa719286173c004fdbbaa23080fe6dcd8bf9fe8` · SHA-256 `d0091040056224b02cf4bf524ab51ef527e646ef9eb550d8a3f9eda4bed2f22a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.ZetaMobius

namespace Surface.Legacy

structure ZetaMobiusFractalFunction where
  base : CertifiedNowhereDifferentiableFractalFunction
  scaleLaw : FractalScaleLaw
  zetaMobiusData : ZetaMobiusScaleData
  arithmeticSound : ZetaMobiusArithmeticSound zetaMobiusData

theorem zetaMobiusFractal_is_nowhereDifferentiableFractal :
    ∀ f : ZetaMobiusFractalFunction,
      ∃ g : CertifiedNowhereDifferentiableFractalFunction,
        g = f.base := by
  intro f
  exact ⟨f.base, rfl⟩

end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f88446d7ecc44003da27115ad52a07c39369eb8e19c6f04d97d0410d34a8549 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZetaMobiusFractal/Variantd0091040056224b02cf4bf524ab51ef527e646ef9eb550d8a3f9eda4bed2f22a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
