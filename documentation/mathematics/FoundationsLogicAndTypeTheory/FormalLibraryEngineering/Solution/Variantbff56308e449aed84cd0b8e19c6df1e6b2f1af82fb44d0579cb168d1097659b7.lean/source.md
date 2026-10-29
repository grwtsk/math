# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Solution.Variantbff56308e449aed84cd0b8e19c6df1e6b2f1af82fb44d0579cb168d1097659b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1e8229bbf3bab584c3261210afc70a08ce6920d` · SHA-256 `bff56308e449aed84cd0b8e19c6df1e6b2f1af82fb44d0579cb168d1097659b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- Solution tries to satisfy the hole with an axiom rather than a def.
-- Should be rejected because the kind does not match.
axiom n : Nat

theorem foo : n + 17 = 34 := sorry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8a84d102b942c78aca184de33349b77e427fc16cf37396ccb24d7446d5eaeac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solution/Variantbff56308e449aed84cd0b8e19c6df1e6b2f1af82fb44d0579cb168d1097659b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
