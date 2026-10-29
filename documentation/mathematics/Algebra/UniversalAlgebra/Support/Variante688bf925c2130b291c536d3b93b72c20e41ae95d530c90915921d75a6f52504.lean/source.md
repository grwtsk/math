# Complete source: GRWTSK.Algebra.UniversalAlgebra.Support.Variante688bf925c2130b291c536d3b93b72c20e41ae95d530c90915921d75a6f52504

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13d3575b14d663481b15e0099f75c42739668f40` · SHA-256 `e688bf925c2130b291c536d3b93b72c20e41ae95d530c90915921d75a6f52504`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Notation.Support

namespace Function

variable {α : Type*} [Zero α]

theorem support_id : support (id : α → α) = {0}ᶜ := by
  ext; simp

theorem support_id' {α : Type*} [Zero α] : support (fun x : α ↦ x) = {0}ᶜ :=
  support_id

end Function
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9329fe31fe9dff979ffb6cd28987bed985335070c58ab802fdfa94b0ac62e0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Support/Variante688bf925c2130b291c536d3b93b72c20e41ae95d530c90915921d75a6f52504.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
