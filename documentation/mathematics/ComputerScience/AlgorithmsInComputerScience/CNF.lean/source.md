# CNF — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b890a81e47a22a9730c0f0e035acfcc4e12b952` · SHA-256 `e105a86d293ba9c569ed3c73f0ee3fc87449eaa609359a037656ced1bd6c1c9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Formula.CNF
import Boolean.Tree.Compile

namespace Boolean

universe u

namespace Tree

/-- Convert a Boolean tree into executable formula CNF. -/
def toCNF (p : Tree α) : Formula.CNF α :=
  Formula.toCNF (Tree.toFormula p)

@[simp] theorem eval_toCNF
    (ν : Valuation α)
    (p : Tree α) :
    Formula.CNF.eval ν (Tree.toCNF p) = Tree.eval ν p := by
  simp [Tree.toCNF]

end Tree

end Boolean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e6adb2f6b7af8e7e38754f5bcdc7aeb9d2e9804f897fcce6ce58dd2f3a6750f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variante105a86d293ba9c569ed3c73f0ee3fc87449eaa609359a037656ced1bd6c1c9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
