# Verification target: Inv Log Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6b8798bd2a026950dfe565aab85bd9e1831bab0",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variantfbcc833e8a06129b1a28e67bcb511a7faa4aa0d80ce87579a0f4ef6b35ce29b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/InvLogPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/InvLogPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6b8798bd2a026950dfe565aab85bd9e1831bab0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variantfbcc833e8a06129b1a28e67bcb511a7faa4aa0d80ce87579a0f4ef6b35ce29b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variantfbcc833e8a06129b1a28e67bcb511a7faa4aa0d80ce87579a0f4ef6b35ce29b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [not_differentiableAt_inv_log_zero](../../../../SpecialFunctions/InvLogPublic.lean/declarations/not-differentiableat-inv-log-zero.md) | 32 | `result-track:c8d7067aca695ebad0ec0447966838bf81c3dca00144e5b8e897da067cee4632` |
| 2 | `lemma` | [not_continuousAt_inv_log_one](../../../../SpecialFunctions/InvLogPublic.lean/declarations/not-continuousat-inv-log-one.md) | 43 | `result-track:67bcdedb2ca0f1d4bc56270b7059fd2ef1828452af7fd5c999201683ff2bc837` |
| 3 | `lemma` | [not_continuousAt_inv_log_neg_one](../../../../SpecialFunctions/InvLogPublic.lean/declarations/not-continuousat-inv-log-neg-one.md) | 49 | `result-track:9d557a5f49b36dcd2dfca2dca61a12925d6eb5343ce1010a56792f005527b8b8` |
| 4 | `theorem` | [deriv_inv_log_apply](../../../../SpecialFunctions/InvLogPublic.lean/declarations/deriv-inv-log-apply.md) | 53 | `result-track:8fcb0227f37d182dce9ae60970adc530d7d8924964e1a816c3daf688182094c0` |
| 5 | `theorem` | [deriv_inv_log](../../../../SpecialFunctions/InvLogPublic.lean/declarations/deriv-inv-log.md) | 63 | `result-track:7e5dcc7f307616cfda719235d3e73e58c4871943325fc4892a910340d783eb3e` |
| 6 | `theorem` | [differentiableAt_inv_log](../../../../SpecialFunctions/InvLogPublic.lean/declarations/differentiableat-inv-log.md) | 66 | `result-track:1908fe44a13472088d6f245447fb0551a333a6b908553953fc499b96a1cceacc` |
| 7 | `theorem` | [hasDerivAt_inv_log](../../../../SpecialFunctions/InvLogPublic.lean/declarations/hasderivat-inv-log.md) | 70 | `result-track:8fb504dcac5fb9e765dc80e1a23988443d037b0c3aaf6fe4bf92ae69fb731d28` |
| 8 | `theorem` | [differentiableOn_inv_log'](../../../../SpecialFunctions/InvLogPublic.lean/declarations/differentiableon-inv-log.md) | 74 | `result-track:49630cbcb37dcb54521bce0fdbd61188598c4c7b2cd9329640a4ed5b7a5bd2ca` |
| 9 | `theorem` | [differentiableOn_inv_log](../../../../SpecialFunctions/InvLogPublic.lean/declarations/differentiableon-inv-log-source-edition-2.md) | 77 | `result-track:f58dd44c1a05c28009a55da44613b81b23753d06797f9ffa107c78f23b5dde3d` |
| 10 | `theorem` | [inv_log_isLittleO_one](../../../../SpecialFunctions/InvLogPublic.lean/declarations/inv-log-islittleo-one.md) | 80 | `result-track:dbfaefa183e14fbbc51397e9f8a91b43128b7764094809a206b9c2d2db737dc5` |
| 11 | `lemma` | [not_continuousAt_log_log_zero](../../../../SpecialFunctions/InvLogPublic.lean/declarations/not-continuousat-log-log-zero.md) | 86 | `result-track:c05c7b4920b2cc7532c120d0a908009c071b2300ffbdf6185851213f70766f64` |
| 12 | `lemma` | [not_continuousAt_log_log_one](../../../../SpecialFunctions/InvLogPublic.lean/declarations/not-continuousat-log-log-one.md) | 93 | `result-track:811e1004253c6e68bf28c3f46ea7352dc303b74d1b8cf4e3dcbb04a746edc871` |
| 13 | `lemma` | [not_continuousAt_log_log_neg_one](../../../../SpecialFunctions/InvLogPublic.lean/declarations/not-continuousat-log-log-neg-one.md) | 99 | `result-track:ed9086e428342df5f16b419ce23a5f44325efd843803e2bfa8b1b413439d38ee` |
| 14 | `theorem` | [deriv_log_log_apply](../../../../SpecialFunctions/InvLogPublic.lean/declarations/deriv-log-log-apply.md) | 103 | `result-track:1191760263ea9f82324a77aac066ea66af12f53545a6ad9f969345484b61de1f` |
| 15 | `theorem` | [deriv_log_log](../../../../SpecialFunctions/InvLogPublic.lean/declarations/deriv-log-log.md) | 113 | `result-track:459d7cc056e9cb12c1f0afc08ab17ca4f79a52312ca75ceac52101680f14a411` |
| 16 | `theorem` | [differentiableAt_log_log](../../../../SpecialFunctions/InvLogPublic.lean/declarations/differentiableat-log-log.md) | 116 | `result-track:f8ec5bdaa4bba61f650d6dec084c64e7935c6fecc377e7d92c5331ffc55a73d4` |
| 17 | `theorem` | [hasDerivAt_log_log](../../../../SpecialFunctions/InvLogPublic.lean/declarations/hasderivat-log-log.md) | 120 | `result-track:b66eca1d45cc14c819774fa32054928e87e5785e5dec70fa3ca38b28662141e2` |
| 18 | `theorem` | [differentiableOn_log_log'](../../../../SpecialFunctions/InvLogPublic.lean/declarations/differentiableon-log-log.md) | 124 | `result-track:b67f6511db87b6672ad2af23cb3366d80f0b671f47a6c2558e94de2c59a1ce62` |
| 19 | `theorem` | [differentiableOn_log_log](../../../../SpecialFunctions/InvLogPublic.lean/declarations/differentiableon-log-log-source-edition-2.md) | 127 | `result-track:fd8f1cebc2e8d39cae862058d3bff642abab60c8780784e4b393c677d2135a52` |
| 20 | `theorem` | [one_isLittleO_log_log](../../../../SpecialFunctions/InvLogPublic.lean/declarations/one-islittleo-log-log.md) | 130 | `result-track:426c552b653e69054b9f2a9f1af59307834469d307eef87fe3d44cb87712363b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6826462c5c9e7ee8d14edc4afcc52281b7b57cbb8898c71ecff61e9b944ef47b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variantfbcc833e8a06129b1a28e67bcb511a7faa4aa0d80ce87579a0f4ef6b35ce29b7.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variantfbcc833e8a06129b1a28e67bcb511a7faa4aa0d80ce87579a0f4ef6b35ce29b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
