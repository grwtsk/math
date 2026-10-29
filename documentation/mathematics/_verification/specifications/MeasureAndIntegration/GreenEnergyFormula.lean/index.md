# Verification target: GRWTSK.NumberTheory.VonMangoldt.GreenEnergyFormula

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb896663fb42a4a053323c9ea00da6fd69096967",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/VonMangoldt/GreenEnergyFormula.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/index.md) · [Full source](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb896663fb42a4a053323c9ea00da6fd69096967`.

Source path: `GRWTSK/NumberTheory/VonMangoldt/GreenEnergyFormula.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/VonMangoldt/GreenEnergyFormula.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.VonMangoldt.CenteredReadout`](../../../../MeasureAndIntegration/CenteredReadout.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [backgroundCenter](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/backgroundcenter.md) | 28 | `declaration-track:b57843f9f69eccb9d2388ae048bd3e8dd94404524e48349f0cc53a16a5c1191f` |
| 2 | `def` | [background](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/background.md) | 30 | `declaration-track:796f7668328e9304053b384f50ccb681b81a285bd2ba1491a8e30f23ec4853fa` |
| 3 | `theorem` | [background_continuous](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/background-continuous.md) | 32 | `result-track:df0139b6ad772a7f583fbeaa704afb37152f00a0bd9db450ad7f3f75905928cc` |
| 4 | `theorem` | [background_integrable](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/background-integrable.md) | 35 | `result-track:7a83063ff11d0b2c1f430170d5bf6450566b43ba9d9cc6f8220ad1d9f1af5831` |
| 5 | `theorem` | [integral_background](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/integral-background.md) | 38 | `result-track:e7553c125dc0a550a46b6332e94dd65a9a9c0bc16903f8ac5581eebc7c965750` |
| 6 | `theorem` | [background_square_integrable](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/background-square-integrable.md) | 45 | `result-track:9b28061f39f41189876259f773fc5ab6e04a15fcfeb39663f39f416682b9a571` |
| 7 | `theorem` | [integral_background_square](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/integral-background-square.md) | 48 | `result-track:4bbc96e84aff91399868a23564ee5a85254a08f197b2424da32a679e8a21c474` |
| 8 | `theorem` | [step_log_integrable](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/step-log-integrable.md) | 68 | `result-track:33655ce902cc49d06214fe8cf228dc84f7b6f21d85607feaa9c436b058d9def7` |
| 9 | `theorem` | [integral_step_log](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/integral-step-log.md) | 76 | `result-track:cdaf1849863bd00c52ca97985cc00ac1b0dc6aba7739620d96d90d387e78a747` |
| 10 | `theorem` | [feature_background_integrable](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/feature-background-integrable.md) | 85 | `result-track:f648082fa9ce1dcb9a51517fb82cc49808bac224f8043b9f5bf20bc187f523e5` |
| 11 | `theorem` | [integral_feature_background](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/integral-feature-background.md) | 96 | `result-track:313b519c53a823570ca9bf49e94685d6d63301f7cd50741ea22e06cad3ac0d2e` |
| 12 | `def` | [atomicFeature](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/atomicfeature.md) | 113 | `declaration-track:fb796935d20ea28d08d9cc16689ac117c44af991d89a93653eee84fb8e09b4d9` |
| 13 | `theorem` | [centered_source_identity](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/centered-source-identity.md) | 116 | `result-track:88a0114756a8ed0c7e9fdb2a2fb073c119e3a45058f564c48efd5c4f8d24a32b` |
| 14 | `theorem` | [atomic_square_expansion](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/atomic-square-expansion.md) | 123 | `result-track:7bec6e81fabe0589d7acef824d4845d787c06d8a8aee74c9fdc1a2c2656e849f` |
| 15 | `theorem` | [atomic_square_integrable](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/atomic-square-integrable.md) | 135 | `result-track:386a3083dca8e48a6fb5f19fb60a7d981c41df236d4475674dd2fc8e6dd426c5` |
| 16 | `theorem` | [atomic_background_integrable](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/atomic-background-integrable.md) | 142 | `result-track:6de70ea98ce7fc3658d60b59824ddb1ebae14dce118a71207ec413a048da371e` |
| 17 | `theorem` | [integral_atomic_background](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/integral-atomic-background.md) | 154 | `result-track:bfb08245ba1e3a695e57ce58fae65116ea678ff61ebc681a3ad0ec7b2113849d` |
| 18 | `def` | [finiteGreenFormula](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/finitegreenformula.md) | 171 | `declaration-track:dca1d9c30cd6418b76cbf18c37bb21a1da8fd9379a65289242e5b4602d3d8915` |
| 19 | `theorem` | [greenEnergy_eq_finiteGreenFormula](../../../../MeasureAndIntegration/GreenEnergyFormula.lean/declarations/greenenergy-eq-finitegreenformula.md) | 178 | `result-track:e63b29a5b4f6d2a0e848903ef6339985c3946c3c6e9dd27d7877464dcb028e62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdfcd8d030cdc02a8d9f4aff9061b83f34ea64a537308ccc0cea78c59b7d7dd9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/VonMangoldt/GreenEnergyFormula.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/GreenEnergyFormula.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
