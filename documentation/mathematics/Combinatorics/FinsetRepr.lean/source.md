# Finset Repr — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc7f94ebbb11c5c083152916c9810b0e0f96f529` · SHA-256 `fe944cae4f8858a8fca51e79075118a10efd46e6ead471099889c5852ff291ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Sort

#eval show Lean.MetaM Unit from guard <|
  (repr (0 : Multiset (List ℕ)) |>.pretty 15) = "0"
#eval show Lean.MetaM Unit from guard <|
  (repr ({[1, 2, 3], [4, 5, 6]} : Multiset (List ℕ)) |>.pretty 15) = "{[1, 2, 3],\n [4, 5, 6]}"

#eval show Lean.MetaM Unit from guard <|
  (repr (∅ : Finset (List ℕ)) |>.pretty 15) = "∅"
#eval show Lean.MetaM Unit from guard <|
  (repr ({[1, 2, 3], [4, 5, 6]} : Finset (List ℕ)) |>.pretty 15) = "{[1, 2, 3],\n [4, 5, 6]}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e219bcc11bd94a6b6070eb6e808a24d3ad25be42a1cd8425631624ce677a3ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FinsetRepr/Variantfe944cae4f8858a8fca51e79075118a10efd46e6ead471099889c5852ff291ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
