# Verification target: GRWTSK.Logic.Locality.AnchoredCertificates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8199632569c704cb9fcee348a3721384f6d9d1a6",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Locality/AnchoredCertificates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8199632569c704cb9fcee348a3721384f6d9d1a6`.

Source path: `GRWTSK/Logic/Locality/AnchoredCertificates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Locality/AnchoredCertificates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Locality.FiniteRuleTransport`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleTransport.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReplayCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/replaycertificate.md) | 25 | `declaration-track:d42f8b1ecc6a568ca88f589f214b002de0b05f4d9ad3c36132c50c97a9ecac70` |
| 2 | `def` | [ReplayCertificate.Fresh](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/replaycertificate-fresh.md) | 37 | `declaration-track:0875857e88fa716b47c3b983a39520b286b27da3d08a58f5380614ab73a4b362` |
| 3 | `def` | [ReplayCertificate.Accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/replaycertificate-accepted.md) | 41 | `declaration-track:825fb1713fed12565f2f738d65fe23e139f17fff44b3e3fc8e2b5dde7d6d8d79` |
| 4 | `theorem` | [ReplayCertificate.current_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/replaycertificate-current-target.md) | 45 | `result-track:4a28fdc79dc329a912580467af52edc3cb1207814b5543e9e6a8ed36fa159976` |
| 5 | `theorem` | [ReplayCertificate.accepted_iff_fresh](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/replaycertificate-accepted-iff-fresh.md) | 50 | `result-track:940a8c32ff5d7d19c67375abbd5bb3db024498a2ba91525254ca6cec249d8192` |
| 6 | `theorem` | [ReplayCertificate.recorded_accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/replaycertificate-recorded-accepted.md) | 56 | `result-track:0265aa82ebb1da1fa364f08f8ff050d71afb1899b9b485df0fcc6e0f666badea` |
| 7 | `theorem` | [ReplayCertificate.stale_read_rejects](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/replaycertificate-stale-read-rejects.md) | 62 | `result-track:a198d20549686c2d52d38c8c239dc4474d79616481a7cffb19d92b02b0aeb889` |
| 8 | `theorem` | [ReplayCertificate.to_terminal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/replaycertificate-to-terminal.md) | 72 | `result-track:0693f8a71fd94ad14571c28a866848e83c671b342e9cf3aef6e6a549b18b1d99` |
| 9 | `def` | [ofGlobal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/ofglobal.md) | 78 | `declaration-track:fc429cd180034e71470bb029105b10e46ea826cc2d125d984f20596226d11778` |
| 10 | `theorem` | [ofGlobal_recorded](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/ofglobal-recorded.md) | 86 | `result-track:45da90c6431d9008b6831e98c9cb78813c5b079c114c62264241a09690109acb` |
| 11 | `theorem` | [ofGlobal_reads](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/ofglobal-reads.md) | 90 | `result-track:84514ec8a6445286a7723f9eda90d70ff008a5e3b0cc91ea1d70fcbe4835517a` |
| 12 | `def` | [ofGrounded](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/ofgrounded.md) | 103 | `declaration-track:bb6ea2211a7af00d75dccb5b08a023289808823f04c94c67f9381bf793d97ab7` |
| 13 | `theorem` | [ofGrounded_recorded](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/ofgrounded-recorded.md) | 119 | `result-track:6db9e62af30b1d5f5e4c9f95057c86754b33d8ad295a250d7f97b1639abca01c` |
| 14 | `theorem` | [ofGrounded_reads](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/ofgrounded-reads.md) | 129 | `result-track:c882668a89c9fe1781af2c0898d3a36530a617a5e35502fd970424c514b147d9` |
| 15 | `def` | [replayQ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/replayq.md) | 147 | `declaration-track:c70171d73da5c5992739ec7a3b1b5079a9034d33a12f2e9aa7088885fd71031a` |
| 16 | `theorem` | [replayQ_reads](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/replayq-reads.md) | 150 | `result-track:9bdf62b88d1f6c6102afc924f46e85cd0b87321a1641012b34cfb03cf5ce6f89` |
| 17 | `theorem` | [replayQ_accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/replayq-accepted.md) | 152 | `result-track:d564ef8ca5229e24eb2a82b5c67ebd34fe2912928530c8493f655de29098937c` |
| 18 | `theorem` | [replayQ_has_no_global_certificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/declarations/replayq-has-no-global-certificate.md) | 155 | `result-track:edbd30e619ae7f4e8076307215a0fd883f2ff32aaad133cb5a85cf5dcacb2cba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6ce4a7c9146ad6810b9171a6e7619026bdf51de6c27d9b35c4cfee725b6c551 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Logic/Locality/AnchoredCertificates.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencee274d3629fa4621500038121.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
