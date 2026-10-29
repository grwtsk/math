# Challenge — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f13a56b5ef477c3784f67d007ec61d8254dfac3` · SHA-256 `d24fae6576e509d57f880225bd217a5559082e4eaf54b40fcfd9992a0e0a761d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
theorem hex : ∃ x : Nat, x = 0 := sorry

-- Not a hole itself, but its *value* mentions the theorem hole `hex`, so the transitive
-- walk in `Compare.loop` reaches `hex` a second time.
noncomputable def w : Nat := Classical.choose hex

theorem hw : w = 0 := sorry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=396c0e156c52479d83143dfb054524fe60237222041e6be019785d15d6e97b8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Challenge/Variantd24fae6576e509d57f880225bd217a5559082e4eaf54b40fcfd9992a0e0a761d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
