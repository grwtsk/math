# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Count.Variantffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `295a7b2c8b5943f79e60804e258082364937d4b0` · SHA-256 `ffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Catalan.Tree
import Mathlib.Combinatorics.Enumerative.Catalan.Basic

/-!
# Folder.Catalan.Count

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: catalan.count
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Catalan

abbrev catalan : Nat → Nat :=
  _root_.catalan

@[simp]
theorem catalan_zero :
    catalan 0 = 1 :=
  _root_.catalan_zero

theorem catalan_succ (n : Nat) :
    catalan (n + 1) =
      Finset.sum (Finset.range (n + 1))
        (fun i => catalan i * catalan (n - i)) :=
  by
    simpa [catalan, Finset.sum_range] using _root_.catalan_succ n

/--
The finite enumeration/cardinality theorem for Catalan trees is intentionally
left as a named target rather than asserted. The proved content in this module
is the recurrence that future enumeration proofs should match.
-/
def treesOfInternalCardinalityTarget : Prop :=
  ∃ treesOfInternal : Nat → Finset CTree,
    ∀ n,
      (∀ T : CTree, T ∈ treesOfInternal n ↔ T.internal = n) ∧
      (treesOfInternal n).card = catalan n

end Catalan
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9abb208b07bdcbb21e3b67913c607462d8e69440d521c4652f676a761227e477 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variantffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
