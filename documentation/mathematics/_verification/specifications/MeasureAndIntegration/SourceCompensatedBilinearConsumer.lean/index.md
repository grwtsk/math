# Verification target: Source Compensated Bilinear Consumer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdcc17d44aac80fdfdfba9f94b6deaa21fdc0dfb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompensatedBilinearConsumer/Variant4df9084e6944b3b45761bdcf252b7f956e365b2f24dfb7bfce6b5018ffbfd7d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCompensatedBilinearConsumer.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCompensatedBilinearConsumer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdcc17d44aac80fdfdfba9f94b6deaa21fdc0dfb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompensatedBilinearConsumer/Variant4df9084e6944b3b45761bdcf252b7f956e365b2f24dfb7bfce6b5018ffbfd7d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompensatedBilinearConsumer/Variant4df9084e6944b3b45761bdcf252b7f956e365b2f24dfb7bfce6b5018ffbfd7d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceJointWorkConsumer` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualMixedWorkFubini` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [timeRow](../../../../MeasureAndIntegration/SourceCompensatedBilinearConsumer.lean/declarations/timerow.md) | 26 | `declaration-track:0c806e194a64865bd3dcb3dd0d7ab5edfbcf837c6162bac87bff2a1c324e3e0c` |
| 2 | `def` | [columnRow](../../../../MeasureAndIntegration/SourceCompensatedBilinearConsumer.lean/declarations/columnrow.md) | 31 | `declaration-track:ea3080c2943e21ec7990a6c3419621e11f97e28cc326b87d2b663fde2d9a4d08` |
| 3 | `def` | [actualBilinearWork](../../../../MeasureAndIntegration/SourceCompensatedBilinearConsumer.lean/declarations/actualbilinearwork.md) | 39 | `declaration-track:98cb00dfe3c7ec76d5cd2d263b3f9cf17867f016c77b95c6f789d9565eba1714` |
| 4 | `theorem` | [actualBilinearWork_eq_jointMangoldtErrorWork](../../../../MeasureAndIntegration/SourceCompensatedBilinearConsumer.lean/declarations/actualbilinearwork-eq-jointmangoldterrorwork.md) | 44 | `result-track:6f87f9c55e7705198461a49b1f8fd1e420cc2c121512dfe660d678ca02edb617` |
| 5 | `def` | [compensatedBilinearWork](../../../../MeasureAndIntegration/SourceCompensatedBilinearConsumer.lean/declarations/compensatedbilinearwork.md) | 50 | `declaration-track:825c784ff33e213bcb26f247eb4240d953c300ed7cb0ede6e98da1822fc97479` |
| 6 | `theorem` | [compensatedBilinearWork_eq_compensatedJointWork](../../../../MeasureAndIntegration/SourceCompensatedBilinearConsumer.lean/declarations/compensatedbilinearwork-eq-compensatedjointwork.md) | 57 | `result-track:cd892c9640c4fe6520fc6a2449646e6fef8153b7f4092008067289ea9deacf4e` |
| 7 | `theorem` | [residual_tail_of_compensatedBilinearWork_tail](../../../../MeasureAndIntegration/SourceCompensatedBilinearConsumer.lean/declarations/residual-tail-of-compensatedbilinearwork-tail.md) | 63 | `result-track:134486e4326cb422bf92b75b9803755d30d7bb6072ee6479c7c54a62546a379a` |
| 8 | `theorem` | [estimate_of_compensatedBilinearWork_tail](../../../../MeasureAndIntegration/SourceCompensatedBilinearConsumer.lean/declarations/estimate-of-compensatedbilinearwork-tail.md) | 74 | `result-track:95353eb9990896ffe5034de5d91c6b03b889bdd5f0d82c19356b50467289cec4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2000f767ac0b5fa429fdb3a355232d52ad9a3778e883375c074012b403f96a51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompensatedBilinearConsumer/Variant4df9084e6944b3b45761bdcf252b7f956e365b2f24dfb7bfce6b5018ffbfd7d4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompensatedBilinearConsumer/Variant4df9084e6944b3b45761bdcf252b7f956e365b2f24dfb7bfce6b5018ffbfd7d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
