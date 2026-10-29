# Spectral Address — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54346cf7a20141488a6204fba5a6216ba72382fe` · SHA-256 `5c473766f7678bc3d79387b99389216acb18691eb3d013e35dd8311ad52b4481`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
set_option autoImplicit false
theorem spectral_address_not_checked_theorem (status : String)
  (h : status = "candidate_generalization" ∨ status = "finite_witness_only" ∨ status = "refused") : status ≠ "checked_theorem" := by
  intro hc
  cases h with
  | inl hcg => rw [hcg] at hc; contradiction
  | inr rest =>
      cases rest with
      | inl hfw => rw [hfw] at hc; contradiction
      | inr href => rw [href] at hc; contradiction
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=291fecaeaeb24cc64cfcf6f54379517195fe606f68844de0f538a7de14547559 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/SpectralAddress/Variant5c473766f7678bc3d79387b99389216acb18691eb3d013e35dd8311ad52b4481.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
