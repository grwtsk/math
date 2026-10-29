# Test Multivar — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c3816d038def6cc5bf9bd642cc7cceb715d0693` · SHA-256 `cbc555d41148bbaec6ccd421cda35c993c9269bd7cae4a2dc9d51eb8fa29a990`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Tactic.IntervalAuto

-- Test: x + y ≤ 2 on [0,1] × [0,1]
theorem test_2d_sum_le : ∀ x ∈ Set.Icc (0:ℝ) 1, ∀ y ∈ Set.Icc (0:ℝ) 1, x + y ≤ (2 : ℚ) := by
  multivariate_bound
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e69d09c08e44207877814d60be26569b500d8c970e2d27be610c9b5fd9f6ebfa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestMultivar/Variantcbc555d41148bbaec6ccd421cda35c993c9269bd7cae4a2dc9d51eb8fa29a990.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
