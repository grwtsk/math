# Simp Intro Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c96035f1a4b0d0668600b127e288295db72685cd` · SHA-256 `1df75561f82ffc5e3c727af9958cc8a543b8c1998f44e0c54ddca48fec26ac62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.SimpIntro

set_option autoImplicit true

example : x + 0 = y → x = y := by simp_intro h₁
example : x + 0 ≠ y → x ≠ y := by simp_intro h₁ h₂ -- h₂ is bound but not needed
example : x + 0 ≠ y → x ≠ y := by simp_intro h₁ h₂ h₃ -- h₃ is not bound

example (h : x = z) : x + 0 = y → x = z := by simp_intro [h]

example (h : y = z) : x + 0 = y → x = z := by
  simp_intro
  guard_target = x = y → x = z
  simp_intro .. [h]

example (h : y = z) : x + 0 = y → x = z := by simp_intro _; exact h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94bbc4b88109bb3ba57b299b5d229cb6931323efb009dbaa9c0f7c9c526e68e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpIntro/Variant1df75561f82ffc5e3c727af9958cc8a543b8c1998f44e0c54ddca48fec26ac62.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
