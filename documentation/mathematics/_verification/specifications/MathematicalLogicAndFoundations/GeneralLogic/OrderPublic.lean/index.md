# Verification target: Order Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f34648355c2fdc7c83d70672765dd4b88850364",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f34648355c2fdc7c83d70672765dd4b88850364`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Order.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderPublic.lean/declarations/le-of-lt.md) | 23 | `result-track:942b7661409314357b22627a045be5b437fd82d9ae7d2b6c11a3d5c47631a2cb` |
| 2 | `theorem` | [lt_irrefl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderPublic.lean/declarations/lt-irrefl.md) | 25 | `result-track:20fbc8eca96a9c02e0be3bce010cbb2eb947762b9e7531a9ca8fda8df9fe2184` |
| 3 | `theorem` | [ne_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderPublic.lean/declarations/ne-of-lt.md) | 29 | `result-track:5deeff566d421695266130d58a67b340397e073d28a76fab8b8ce98d2f72e075` |
| 4 | `theorem` | [ne_of_gt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderPublic.lean/declarations/ne-of-gt.md) | 32 | `result-track:eaf4e9a00b4edcbc9c8a7b581fa5af7a0e8f1440435a7f8edd019eba1592292a` |
| 5 | `theorem` | [lt_of_lt_of_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderPublic.lean/declarations/lt-of-lt-of-le.md) | 37 | `result-track:fd3520369920166b2b1d4ef1b1421681f2c76206a2d72ff805d4bc6955ef4466` |
| 6 | `theorem` | [lt_of_le_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderPublic.lean/declarations/lt-of-le-of-lt.md) | 41 | `result-track:75b3fab57491aebc8df48f5fa1bb7f74d2eb1a52050f5dd79392dab0d8194d12` |
| 7 | `theorem` | [lt_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderPublic.lean/declarations/lt-trans.md) | 45 | `result-track:971873f473fd279aab811b00596393b47d7ffe5ade063151869332d4739cb5b0` |
| 8 | `theorem` | [not_ge_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderPublic.lean/declarations/not-ge-of-lt.md) | 48 | `result-track:2f89b8b696dfca0e6a2613b436f83258de8712283e2c3072f3be249c145211be` |
| 9 | `theorem` | [not_gt_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderPublic.lean/declarations/not-gt-of-lt.md) | 51 | `result-track:19e2c0988e6cffc6934800913d32122fed71375ac549e64ba434ff40526daf26` |
| 10 | `theorem` | [le_iff_lt_or_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderPublic.lean/declarations/le-iff-lt-or-eq.md) | 60 | `result-track:66104f7287fcf93aa7f393eb95c406b9fbb6a14b2bccc5b016f5b8dfb32574c4` |
| 11 | `theorem` | [trichotomy](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderPublic.lean/declarations/trichotomy.md) | 76 | `result-track:4a924f131509124f0a06a4c6d913300e9065eda226f74aa0ddbd9fb41ee067c3` |
| 12 | `theorem` | [le_of_not_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderPublic.lean/declarations/le-of-not-lt.md) | 89 | `result-track:6eeaa1f7fb505d47188bd3dc6757814488230dae6e34d821b0b7134fa5b6d6b8` |
| 13 | `theorem` | [lt_of_not_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderPublic.lean/declarations/lt-of-not-le.md) | 94 | `result-track:220c63e9e9885cde0c5fa256ea63b2a110a7db90f7530d3edbec96f6011841a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=484ccd6d7cce431f5c06f8a4ffc19bad250828a8fafffb45e7a6213bc6fc39d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
