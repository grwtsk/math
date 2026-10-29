# Thm — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af14bbb0d8fc8cc26aede806be07b0872836b70e` · SHA-256 `e787eb57f674aaf3e837c4723b89798e4ce6b1f933f1ebd409eb29fbf3fb6669`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-- warning: declaration uses `sorry` -/
#guard_msgs in
theorem bad_contains_sorry : True := by
  have x : True := sorry
  exact True.intro
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55b0cac4e230b249d2d213b89b017a75e4c21b378c4d98259e69797fe8b3fe3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thm/Variante787eb57f674aaf3e837c4723b89798e4ce6b1f933f1ebd409eb29fbf3fb6669.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
