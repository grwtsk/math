# Complete source: GRWTSK.Algebra.UniversalAlgebra.Support.Variant7ed4ffe0a99975eb901063cf90f338dd8376d0abde5fdac95983fea1f93be1fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d589682c680fb2d1ab987f11db82e93f1a78157a` · SHA-256 `7ed4ffe0a99975eb901063cf90f338dd8376d0abde5fdac95983fea1f93be1fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Ported from https://github.com/AlexKontorovich/PrimeNumberTheoremAnd
at commit 10e1218932db7e2432aa5881d750acb819e91f19, file
PrimeNumberTheoremAnd/Mathlib/Algebra/Notation/Support.lean.
Copyright the PrimeNumberTheoremAnd contributors; Apache License 2.0
(http://www.apache.org/licenses/LICENSE-2.0).
Local modifications: removed the Architect blueprint
tooling (import Architect, blueprint_comment blocks, @[blueprint ...] attributes),
redirected intra-project imports to Zeta23.FromPNTPlus.*.  Mathematical content unchanged.
Modified 2026 by Anthropic PBC.
-/
import Mathlib.Algebra.Notation.Support

namespace Function

variable {α : Type*} [Zero α]

theorem support_id : support (id : α → α) = {0}ᶜ := by
  ext; simp

theorem support_id' {α : Type*} [Zero α] : support (fun x : α ↦ x) = {0}ᶜ :=
  support_id

end Function
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=624faa7c5a38b0539277abd95917d1effcdf62dc16de10a06344fc82f5a67381 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Support/Variant7ed4ffe0a99975eb901063cf90f338dd8376d0abde5fdac95983fea1f93be1fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
