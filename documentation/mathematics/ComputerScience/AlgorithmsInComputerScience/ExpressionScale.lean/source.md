# Expression Scale — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54362a5d6a1bfbad92bbc85d67db0bc298828984` · SHA-256 `879ac8ba87544e950965d924139cfe6f3a2185434d7fd8231251257bbb1c0f9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity

/-!
# Local, global, and universal expression

Scale records the intended domain of an expression.  A universal statement
must retain its local realization map; universality is not homogenization.
-/

namespace Mathematics.Oracle

inductive ExpressionScale
  | local (projectId : ProjectId)
  | global
  | universal
  deriving DecidableEq, Repr

structure ScaledExpression where
  expressionId : StableId
  pointIds : List ElementId
  scale : ExpressionScale
  localRealizationIds : List StableId
  scopeDigest : Digest
  expressionDigest : Digest
  deriving DecidableEq, Repr

def ScaledExpression.UniversalWithLocalRealizations
    (expression : ScaledExpression) : Prop :=
  expression.scale = .universal ∧
  expression.localRealizationIds ≠ []

/-- Universal expression does not erase its target-native realizations. -/
theorem ScaledExpression.universal_retains_local
    {expression : ScaledExpression}
    (universal : expression.UniversalWithLocalRealizations) :
    expression.localRealizationIds ≠ [] :=
  universal.2

end Mathematics.Oracle
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fae452f96ef4ec69c31384a39c6239a4729e63b9b3d97ebeb808985750ede039 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExpressionScale/Variant879ac8ba87544e950965d924139cfe6f3a2185434d7fd8231251257bbb1c0f9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
