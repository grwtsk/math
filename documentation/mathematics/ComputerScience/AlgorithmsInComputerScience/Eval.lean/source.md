# Eval — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2111d2757a3a43c011b301fe24422fa501137106` · SHA-256 `fdded3e0119928440568017342f78016dd876e0c5b712213d824a1a21f98560a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Tree
import Boolean.Formula

namespace Boolean

universe u

/-- Bottom-up evaluation of a Boolean expression tree. -/
def Tree.eval (ν : Valuation α) : Tree α → Bool
  | .var a => ν a
  | .falsum => false
  | .truth => true
  | .neg p => !(Tree.eval ν p)
  | .conj p q => Tree.eval ν p && Tree.eval ν q
  | .disj p q => Tree.eval ν p || Tree.eval ν q
  | .impl p q => !(Tree.eval ν p) || Tree.eval ν q
  | .eqv p q => Tree.eval ν p == Tree.eval ν q
  | .nand p q => !(Tree.eval ν p && Tree.eval ν q)

end Boolean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e10f9ab0dc1303684dda4a24ece251324ea2c8ab429909795a125006f2127ce9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Eval/Variantfdded3e0119928440568017342f78016dd876e0c5b712213d824a1a21f98560a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
