# Verification target: Logic Lemmas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5ac9b54218f1ec7de32862bd3d92c3f10233b47",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante1c8530201546e3d18dd2dc8b2f0b5c02959c79b0c52f051caf622dc31f20801.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicLemmasNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicLemmasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5ac9b54218f1ec7de32862bd3d92c3f10233b47`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante1c8530201546e3d18dd2dc8b2f0b5c02959c79b0c52f051caf622dc31f20801.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante1c8530201546e3d18dd2dc8b2f0b5c02959c79b0c52f051caf622dc31f20801.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SplitIfs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iff_assoc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicLemmasNamespaced.lean/declarations/iff-assoc.md) | 29 | `result-track:a84b3dafc26e0c4c73360aded66727a71dd499a6266f87a32ab1b8ac873daefc` |
| 2 | `theorem` | [iff_left_comm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicLemmasNamespaced.lean/declarations/iff-left-comm.md) | 30 | `result-track:2f9e1681bc5fe4f5de0ff2e937dede30045ab56faa222a3de189e4d77c2c1496` |
| 3 | `theorem` | [iff_right_comm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicLemmasNamespaced.lean/declarations/iff-right-comm.md) | 31 | `result-track:215efb61eb9bd24037a85d4170ac171f198b569ea0df91d7d18cfc51f8281b41` |
| 4 | `theorem` | [dite_dite_distrib_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicLemmasNamespaced.lean/declarations/dite-dite-distrib-left.md) | 37 | `result-track:858393a488bf2859b30dd8323f619458aec8219159f2d369b36705f5dcf77dbf` |
| 5 | `theorem` | [dite_dite_distrib_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicLemmasNamespaced.lean/declarations/dite-dite-distrib-right.md) | 42 | `result-track:3da8e07b9b57a4c8dc0248c8674cbc659d07268f675c1c2f7eaa9b9b19846677` |
| 6 | `theorem` | [ite_dite_distrib_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicLemmasNamespaced.lean/declarations/ite-dite-distrib-left.md) | 47 | `result-track:f9ef409f3ef79b7029d338b8c65aece2ae4b76883fbf8f68a79c2d1546b844dd` |
| 7 | `theorem` | [ite_dite_distrib_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicLemmasNamespaced.lean/declarations/ite-dite-distrib-right.md) | 51 | `result-track:582785508f8119ad55cd11b7aaf635b3f56db80b931170d851b6f75865dc9c63` |
| 8 | `theorem` | [dite_ite_distrib_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicLemmasNamespaced.lean/declarations/dite-ite-distrib-left.md) | 55 | `result-track:3553b35ce67966eb3049ce3a786cb8b3b1284cc505159aef7aa12f5ff73aa37e` |
| 9 | `theorem` | [dite_ite_distrib_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicLemmasNamespaced.lean/declarations/dite-ite-distrib-right.md) | 59 | `result-track:d9bf134e5c7f295a41273db73788d81ec3fadca18b034577e31dc30d429d66db` |
| 10 | `theorem` | [ite_ite_distrib_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicLemmasNamespaced.lean/declarations/ite-ite-distrib-left.md) | 63 | `result-track:54b31f21042e9fd4bf14d893a45f651fd1b9171b2ed2344292f8afcc6d5100b4` |
| 11 | `theorem` | [ite_ite_distrib_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicLemmasNamespaced.lean/declarations/ite-ite-distrib-right.md) | 66 | `result-track:d7b90ecf9b2a7825a0116465ab1ffb009dacb97eef2f0c22ace4ec146d1fcfd6` |
| 12 | `lemma` | [Prop.forall](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicLemmasNamespaced.lean/declarations/prop-forall.md) | 69 | `result-track:c5dea1ca8986015a869cc071b1a48696704bbfe1b19c97244d7cb64813918e88` |
| 13 | `lemma` | [Prop.exists](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicLemmasNamespaced.lean/declarations/prop-exists.md) | 72 | `result-track:04a1891954541f42c68d7a657a53bec01b65d7388cf93f21a040e207c88190fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5100615b47889315d724025e9d35029a9838a7dd4d37382b3fd0c5fea9fb9aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante1c8530201546e3d18dd2dc8b2f0b5c02959c79b0c52f051caf622dc31f20801.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante1c8530201546e3d18dd2dc8b2f0b5c02959c79b0c52f051caf622dc31f20801.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
