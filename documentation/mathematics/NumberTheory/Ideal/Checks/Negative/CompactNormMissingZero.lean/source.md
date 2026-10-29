# Complete source: GRWTSK.NumberTheory.Ideal.Checks.Negative.CompactNormMissingZero

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67d3ff4db9479697fe293ec8f8ce493c811d66a3` · SHA-256 `b8449700ee581fd5f2f927c9ce7397bff590d56ed504c0fd3cdc1c16f92d02ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- The accepted positive module proves actual infinite integer-ideal support after removing
zero-ideal cancellation, despite the genuine compact-window implication and X=1>0. -/
import GRWTSK.NumberTheory.Ideal.Checks.Positive.CompactNormSupport
namespace GRWTSK.NumberTheory.Ideal.CompactNormSupport.Checks
noncomputable section

-- Intended rejection: a real reflexive inequality is not the missing zero-ideal cancellation proof.
example : (Function.support zeroFiber).Finite :=
  finite_support_norm_triple integerWindow integerWindow_compact 1 (by norm_num)
    zeroFiber (le_refl (0:ℝ)) zeroFiber_window

end
end GRWTSK.NumberTheory.Ideal.CompactNormSupport.Checks
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81b7b9e7721d1f9f56e426869f12644dca86b3dd53675df14d2f35ed892380d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Ideal/Checks/Negative/CompactNormMissingZero.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
