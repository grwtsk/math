# Verification target: GRWTSK.Logic.InformationLoss.FactorizationFiberCompleteness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "384f7ead3e902659ba1f592bb3fa2a8be9278f65",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/InformationLoss/FactorizationFiberCompleteness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FactorizationFiberCompleteness.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FactorizationFiberCompleteness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `384f7ead3e902659ba1f592bb3fa2a8be9278f65`.

Source path: `GRWTSK/Logic/InformationLoss/FactorizationFiberCompleteness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/InformationLoss/FactorizationFiberCompleteness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.InformationLoss.FactorizationFiber`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FactorizationFiber.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Data.Set.Function` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [factorsThrough_iff_fiberConstant_of_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FactorizationFiberCompleteness.lean/declarations/factorsthrough-iff-fiberconstant-of-surjective.md) | 40 | `result-track:78f00d8367eb535214f1cc6a257b50318a2abcbf9d617f6f2e36bd2fb9c27040` |
| 2 | `def` | [observedProfile](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FactorizationFiberCompleteness.lean/declarations/observedprofile.md) | 60 | `declaration-track:6426cc3643c59d29485ea44c1ffbe85836551dccc22073aff2dd3ae89e29b488` |
| 3 | `theorem` | [observedProfile_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FactorizationFiberCompleteness.lean/declarations/observedprofile-surjective.md) | 66 | `result-track:c49db1c399809aba9eccc5f908fa43156451dbdff0af484452309e701d5edebd` |
| 4 | `theorem` | [observedProfile_eq_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FactorizationFiberCompleteness.lean/declarations/observedprofile-eq-iff.md) | 76 | `result-track:bc45b7efa15bbca230e1125d03a9ea350a296101dcee43f488b74aabe34b4520` |
| 5 | `theorem` | [factorsThrough_observedProfile_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FactorizationFiberCompleteness.lean/declarations/factorsthrough-observedprofile-iff.md) | 90 | `result-track:f3598eb491e5bdf473ddc183413477a86872bb3794c0873d8079afc0c7e3ce0b` |
| 6 | `theorem` | [factorsThrough_iff_fiberConstant_of_inhabited_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FactorizationFiberCompleteness.lean/declarations/factorsthrough-iff-fiberconstant-of-inhabited-target.md) | 113 | `result-track:5615b3dd5006934935632577a7df858542e4dd59e336ffc579219907a78d120c` |
| 7 | `theorem` | [factorsThrough_iff_fiberConstant_of_nonempty_source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FactorizationFiberCompleteness.lean/declarations/factorsthrough-iff-fiberconstant-of-nonempty-source.md) | 140 | `result-track:5c2be56941932b0e98c9a69e8da77556ceb9d069309d61f5cbd6c2d3e00e8de3` |
| 8 | `theorem` | [readout_factorsThrough_augmentedProfile](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FactorizationFiberCompleteness.lean/declarations/readout-factorsthrough-augmentedprofile.md) | 153 | `result-track:679d767ef2058cac1d89b167d1ebd2028f6951f8eb63dc53b49c62c73f1256f0` |
| 9 | `theorem` | [empty_source_fiber_constant_without_total_decoder](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FactorizationFiberCompleteness.lean/declarations/empty-source-fiber-constant-without-total-decoder.md) | 164 | `result-track:636ceabcfcc2e86d01c4d5ef3bb5d564a4a0d2b5bb495251e324283139df01a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa1bb7fa5bc6bc2d0ff3b80ac98a8bcacb9366f6ae9b2b23c8eaec33290872b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Logic/InformationLoss/FactorizationFiberCompleteness.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationFiberCompleteness.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
