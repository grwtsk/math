# Authority Source Edition4 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b0dd82d95ee84ab3098931c4506652ae693ea5a` · SHA-256 `5f7a37452247a478bb1a61167ba9ae4c07244313962cd8aecc66636c509ad51b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.MobiusOntology.CommittedCut

/-!
# Authority classes

Runtime, numerical, Boolean, analytic, and computational artifacts have
separate codomains.  Only theorem authority can mint an unrestricted theorem
certificate.
-/

namespace Mathematics.MobiusOntology

inductive AuthorityClass
  | runtimeEvent
  | numericalComputation
  | booleanFeasibility
  | analyticTheorem
  | computationalTheorem
  | bridgeTheorem
  | theorem
  deriving DecidableEq, Repr

inductive MayMint : AuthorityClass → AuthorityClass → Prop
  | same (authority) : MayMint authority authority
  | analyticToTheorem : MayMint .analyticTheorem .theorem
  | computationalToTheorem :
      MayMint .computationalTheorem .theorem
  | bridgeToComputational :
      MayMint .bridgeTheorem .computationalTheorem

theorem runtime_cannot_mint_theorem :
    ¬ MayMint .runtimeEvent .theorem := by
  intro impossible
  cases impossible

theorem boolean_cannot_mint_theorem :
    ¬ MayMint .booleanFeasibility .theorem := by
  intro impossible
  cases impossible

theorem analytic_cannot_mint_computational :
    ¬ MayMint .analyticTheorem .computationalTheorem := by
  intro impossible
  cases impossible

structure AuthorityArtifact
    (Payload : Type*) where
  authority : AuthorityClass
  payload : Payload
  statement : Prop

end Mathematics.MobiusOntology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=583c0c96bf6702d05313106244eae76a4be0fdbe85c17fef8d92005e3c1438a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Authority/Variant5f7a37452247a478bb1a61167ba9ae4c07244313962cd8aecc66636c509ad51b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
