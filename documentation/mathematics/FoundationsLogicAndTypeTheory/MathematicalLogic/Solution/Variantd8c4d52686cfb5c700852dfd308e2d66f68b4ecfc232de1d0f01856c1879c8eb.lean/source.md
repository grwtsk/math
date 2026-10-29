# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Solution.Variantd8c4d52686cfb5c700852dfd308e2d66f68b4ecfc232de1d0f01856c1879c8eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f5ffdeb9dff9c1c587af73743197879b622bfab` · SHA-256 `d8c4d52686cfb5c700852dfd308e2d66f68b4ecfc232de1d0f01856c1879c8eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
theorem hex : ∃ x : Nat, x = 0 := ⟨0, rfl⟩

noncomputable def w : Nat := Classical.choose hex

theorem hw : w = 0 := Classical.choose_spec hex
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1148a23f09ce88e8af303110ecda9bcd4d3350fd4600ff914b68d25038c839c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Solution/Variantd8c4d52686cfb5c700852dfd308e2d66f68b4ecfc232de1d0f01856c1879c8eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
