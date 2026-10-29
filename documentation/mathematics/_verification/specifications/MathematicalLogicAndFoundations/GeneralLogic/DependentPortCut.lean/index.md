# Verification target: GRWTSK.Logic.Inference.DependentPortCut

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b6a717e47adf1258d3699b92cc752ef61a336d8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Inference/DependentPortCut.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependentPortCut.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependentPortCut.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b6a717e47adf1258d3699b92cc752ef61a336d8`.

Source path: `GRWTSK/Logic/Inference/DependentPortCut.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Inference/DependentPortCut.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Telescope](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependentPortCut.lean/declarations/telescope.md) | 28 | `declaration-track:8072d7fe99faf46c1723146c9d6e9c67de48db3457fa1be267bd77a6cde6544a` |
| 2 | `structure` | [ProofAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependentPortCut.lean/declarations/proofat.md) | 31 | `declaration-track:e09c76a4f8d26a821f9964487748f3b094f9f43d8e536fe78096b93f0bb5b38a` |
| 3 | `structure` | [CheckedAdapter](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependentPortCut.lean/declarations/checkedadapter.md) | 37 | `declaration-track:cf1fdd997c14ba202455a14a4345cbad44e234a546490275496b9a44af881133` |
| 4 | `def` | [cutAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependentPortCut.lean/declarations/cutat.md) | 44 | `declaration-track:43bd575b188452218b0ec661712d3ccfb1ca626248b4ff23bcc05de2950c6930` |
| 5 | `theorem` | [cutFamily](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependentPortCut.lean/declarations/cutfamily.md) | 54 | `result-track:10857eead5c12993da466331001021c4cfbf4c384dfc220b30385a595e1602d2` |
| 6 | `def` | [CheckedAdapter.trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependentPortCut.lean/declarations/checkedadapter-trans.md) | 65 | `declaration-track:6e6d9b7235309472d0894b885cc2824c3b391499f9a677317ee19cfa13780c97` |
| 7 | `structure` | [DescriptiveLink](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependentPortCut.lean/declarations/descriptivelink.md) | 73 | `declaration-track:714545fe634588fa36f397bd3c37032347fa86a294731e6813d759eb5af813d3` |
| 8 | `theorem` | [descriptive_link_does_not_supply_false](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependentPortCut.lean/declarations/descriptive-link-does-not-supply-false.md) | 80 | `result-track:13f7041d24306c8cb803902ff961443a55bd1657b8f48b1efb12ebae640f504b` |
| 9 | `theorem` | [conclusion_of_premise](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependentPortCut.lean/declarations/conclusion-of-premise.md) | 88 | `result-track:f41edeb10f780c9c3c25f9c565cd33828a2395511b4dcc7a1c57752ea883f0fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e471c3cf68eb0c8423ff4d6c1ca1a6a014523a3cc1d81724fd9f5bc018b4aa45 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Logic/Inference/DependentPortCut.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/DependentPortCut.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
