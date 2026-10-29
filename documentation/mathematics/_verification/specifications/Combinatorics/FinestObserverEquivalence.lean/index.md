# Verification target: Finest Observer Equivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cfc0c38c19da8c4878fc6662d81787e1956629a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/SourceComponents/Varianta553291cf0de463c/FinestObserverEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FinestObserverEquivalence.lean/index.md) · [Full source](../../../../Combinatorics/FinestObserverEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cfc0c38c19da8c4878fc6662d81787e1956629a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/SourceComponents/Varianta553291cf0de463c/FinestObserverEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/SourceComponents/Varianta553291cf0de463c/FinestObserverEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.ObserverFactor` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Basic` — import line 20; external provider; requires a separately pinned dependency.
- [Quantizer Quotient Projection](../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerQuotientProjection.lean/index.md) — import line 21; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [causalToFinestLocal_injective](../../../../Combinatorics/FinestObserverEquivalence.lean/declarations/causaltofinestlocal-injective.md) | 56 | `result-track:4d737949dd02a55cf579e3978a3fdb5075d47e15afce96a1a29f2de76e6b2d2b` |
| 2 | `def` | [causalStateEquivFinestLocal](../../../../Combinatorics/FinestObserverEquivalence.lean/declarations/causalstateequivfinestlocal.md) | 81 | `declaration-track:d008fd2c7263b349e1de6e784b3ce497ae0d2f0c121652136e98d2a343d08553` |
| 3 | `theorem` | [causalStateEquivFinestLocal_apply](../../../../Combinatorics/FinestObserverEquivalence.lean/declarations/causalstateequivfinestlocal-apply.md) | 89 | `result-track:2832fbc98c3b584210d44aaf854dff83af4712d0e96f7a85900abc4c38dfbd92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f851e3e93a8cb7569c48eea5936f8adf564b052b35a47d8ebd89c5b5fae99e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/SourceComponents/Varianta553291cf0de463c/FinestObserverEquivalence.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/SourceComponents/Varianta553291cf0de463c/FinestObserverEquivalence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
