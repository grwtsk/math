# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Budget.Variant5c1f75f5e32b640378a842d2413d97c981762591b589fadc56ad72676437576f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d552852e51f526ee1b976e493cddb0b34243ff6b` · SHA-256 `5c1f75f5e32b640378a842d2413d97c981762591b589fadc56ad72676437576f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Bounded graph-access execution

Exhaustion returns an explicit residual frontier.  It is not identified with
target unreachability.
-/

namespace Mathematics.GraphAccess

structure GraphAccessBudget where
  maximumVisitedNodes : Nat
  maximumFrontierSize : Nat
  maximumPathLength : Nat
  maximumWorkSteps : Nat
  maximumPersistedState : Nat
  maximumVerifierSubmissions : Nat
  maximumProposalCount : Nat
deriving DecidableEq, Repr

structure ResidualFrontier (Node : Type u) where
  nodes : List Node
  consumedWorkSteps : Nat
  remainingWorkSteps : Nat
deriving Repr

inductive BudgetedResult (Node Result : Type u)
  | completed (result : Result)
  | residual (frontier : ResidualFrontier Node)

theorem resource_exhaustion_preserves_residual
    {Node Result : Type u}
    (frontier : ResidualFrontier Node) :
    BudgetedResult.residual (Result := Result) frontier =
      .residual frontier :=
  rfl

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=873b79436f264db5e89bbf35b190f068365534630c33e66dd72a1abd26d95075 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Budget/Variant5c1f75f5e32b640378a842d2413d97c981762591b589fadc56ad72676437576f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
