# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Extract.Variantfdcea1f9bf4267d7e0cda0f9c41ba16cc0291d1b7275117396fb27a27ae4a15f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36272f553ea38b418905b167d9dd791c4fabc71f` · SHA-256 `fdcea1f9bf4267d7e0cda0f9c41ba16cc0291d1b7275117396fb27a27ae4a15f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jiecheng Zhao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jiecheng Zhao
-/
import Mathlib.Init
/-!
# Lemmas about `Array.extract`

Some useful lemmas about Array.extract
-/

universe u
variable {α : Type u} {i : Nat}

namespace Array

@[simp]
theorem extract_eq_nil_of_start_eq_end {a : Array α} :
    a.extract i i = #[] := by
  refine extract_empty_of_stop_le_start ?h
  exact Nat.le_refl i

/--
This is a stronger version of `Array.extract_append_left`,
and should be upstreamed to replace that.
-/
theorem extract_append_left' {a b : Array α} {i j : Nat} (h : j ≤ a.size) :
    (a ++ b).extract i j = a.extract i j := by
  apply ext
  · simp only [size_extract, size_append]
    omega
  · intro h1 h2 h3
    rw [getElem_extract, getElem_append_left, getElem_extract]

/--
This is a stronger version of `Array.extract_append_right`,
and should be upstreamed to replace that.
-/
theorem extract_append_right' {a b : Array α} {i j : Nat} (h : a.size ≤ i) :
    (a ++ b).extract i j = b.extract (i - a.size) (j - a.size) := by
  apply ext
  · rw [size_extract, size_extract, size_append]
    omega
  · intro k hi h2
    rw [getElem_extract, getElem_extract,
      getElem_append_right (show size a ≤ i + k by omega)]
    congr
    omega

theorem extract_eq_of_size_le_end {l p : Nat} {a : Array α} (h : a.size ≤ l) :
    a.extract p l = a.extract p a.size := by
  simp only [extract, Nat.min_eq_right h, Nat.sub_eq, Nat.min_self]

end Array
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6336f8b7af5afe42479072496c49321e3464c8d435763cf866c18471ad3496f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantfdcea1f9bf4267d7e0cda0f9c41ba16cc0291d1b7275117396fb27a27ae4a15f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
