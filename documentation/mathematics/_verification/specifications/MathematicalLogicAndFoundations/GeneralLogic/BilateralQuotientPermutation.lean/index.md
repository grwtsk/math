# Verification target: Bilateral Quotient Permutation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "513d4013203a81a8bbf05ab2e2542ba22d0ee0ae",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/SourceComponents/Variant94413fba6c557a4f/BilateralQuotientPermutation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `513d4013203a81a8bbf05ab2e2542ba22d0ee0ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/SourceComponents/Variant94413fba6c557a4f/BilateralQuotientPermutation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/SourceComponents/Variant94413fba6c557a4f/BilateralQuotientPermutation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.CausalState` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReversibleSystem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/declarations/reversiblesystem.md) | 41 | `declaration-track:8e036b1633f0734b35a2351c425eaeb8fad7c9b6e1032f033a63c9db57f53f88` |
| 2 | `def` | [ForwardCausalEquivalent](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/declarations/forwardcausalequivalent.md) | 53 | `declaration-track:be3d1ad5a2e37beed332e79fc011c4e7a130383fbe6b8c5f47a8ea3dc22359a6` |
| 3 | `def` | [BilateralCausalEquivalent](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/declarations/bilateralcausalequivalent.md) | 61 | `declaration-track:df1654c34757f2969ea36760e2c85d5827a40e0475fef9cd38c16bfb3ed9047b` |
| 4 | `def` | [forwardSetoid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/declarations/forwardsetoid.md) | 70 | `declaration-track:57a86ae9e1a990f55664fc219366a06c83c4780d07617cfa38be4b6f401a0176` |
| 5 | `def` | [bilateralSetoid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/declarations/bilateralsetoid.md) | 80 | `declaration-track:f07bd846cef1a7d81c6446e2342a8b6474321efcd06d86c24701cc0794248645` |
| 6 | `def` | [ForwardCausalState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/declarations/forwardcausalstate.md) | 100 | `declaration-track:22f7c79554cc37740c0209be4257a1734cb7384d3aa00ca4b3e5b1fce1f62ed1` |
| 7 | `def` | [BilateralCausalState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/declarations/bilateralcausalstate.md) | 105 | `declaration-track:3c5c44d00c2c34466fd3c1d2ccb27bcbf3fc94e885e6f982989660e340fbdb7c` |
| 8 | `def` | [toBilateral](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/declarations/tobilateral.md) | 110 | `declaration-track:8cc00ab0f43d92f0a3c706f67e5629c75782c5716ee3da396daf47052a3d3ced` |
| 9 | `theorem` | [bilateral_step](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/declarations/bilateral-step.md) | 115 | `result-track:c80219fd1c5fbd901058ec13747fa3e2ce3173a4b4fd4e96689e56e89124afa0` |
| 10 | `theorem` | [bilateral_step_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/declarations/bilateral-step-symm.md) | 130 | `result-track:8734ccdcf534feb1c4d7aed103d8389764966b0b7b4fbc89405fff3fa8703830` |
| 11 | `def` | [bilateralStepPerm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/declarations/bilateralstepperm.md) | 146 | `declaration-track:c278e603ce6c5059f4dcc9e726ad18a7d18aab41c73895ff9cfd630f2c6fdff3` |
| 12 | `theorem` | [bilateralStepPerm_toBilateral](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/declarations/bilateralstepperm-tobilateral.md) | 165 | `result-track:c8a5027b8b24bedc6cdc6772f02d2183795165cd49f842228a5e7c7be0ae9f85` |
| 13 | `def` | [bilateralObserve](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/declarations/bilateralobserve.md) | 173 | `declaration-track:e563cba5afc3bb9945eb441f76d7158b3d36bec46ee382a498610abc1c2adef2` |
| 14 | `theorem` | [bilateralObserve_toBilateral](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BilateralQuotientPermutation.lean/declarations/bilateralobserve-tobilateral.md) | 182 | `result-track:344466ef397151a84f63057a0daba456d9b5dbaecff93e74f3bf5cdfa7c7c1e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a56b64bbddbaec2ed2ceec1cb8b06e38eeced449bc2e9b13f0139c9fe75e3c65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/SourceComponents/Variant94413fba6c557a4f/BilateralQuotientPermutation.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/SourceComponents/Variant94413fba6c557a4f/BilateralQuotientPermutation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
