# Verification target: Authority Namespaced Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40298cc3d31a50e5bf6288312f95046d8bb0abd8",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Authority/Variant693a74cbe358b03d254c83c4966caf3984dac0556434ff9dd2cb2bd2fd2d939a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40298cc3d31a50e5bf6288312f95046d8bb0abd8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Authority/Variant693a74cbe358b03d254c83c4966caf3984dac0556434ff9dd2cb2bd2fd2d939a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Authority/Variant693a74cbe358b03d254c83c4966caf3984dac0556434ff9dd2cb2bd2fd2d939a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RefactorAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/refactorauthority.md) | 28 | `declaration-track:f4e85d250f44de69ad843ee035712aebfcb435576d898425795550cf1747b009` |
| 2 | `structure` | [ContentHash256](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/contenthash256.md) | 42 | `declaration-track:788680af06337ddcb63ca43cfebde5aa06c51a9c785ac14f9ba201a8751b2ce8` |
| 3 | `def` | [ContentHash256.Valid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/contenthash256-valid.md) | 47 | `declaration-track:e28c56b27324273fa85569d2cf8bf243a4758b57f8882e9b8335ec5ffac53a2f` |
| 4 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/instance.md) | 50 | `declaration-track:68c368ffc471dc7fde650f4028004f993583a129844ccded1380d9eac6df7bbf` |
| 5 | `def` | [verifyContentHash256](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/verifycontenthash256.md) | 54 | `declaration-track:9137e51ba87bc4efeb55a14f88780b802260ef4477146f07948570e2d5be125d` |
| 6 | `theorem` | [verifyContentHash256_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/verifycontenthash256-sound.md) | 58 | `result-track:97725dcb3b683191985fc646e5f1ca85ad05d2aeb1d0d7a82d5d384b8fa07f9b` |
| 7 | `inductive` | [AuthorityPromotion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/authoritypromotion.md) | 66 | `declaration-track:8f1d4ff69cb9c77125cc2ae32c296050792569c0d57a5d7c20dfb36e59adf041` |
| 8 | `theorem` | [authority_promotion_is_explicit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/authority-promotion-is-explicit.md) | 70 | `result-track:486bff1d2b6799abf47074678b1e8f9e7379f98543774c557350d60b5357abdd` |
| 9 | `theorem` | [model_proposal_not_kernel_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/model-proposal-not-kernel-authority.md) | 76 | `result-track:f0172193f008873e111a7c9b25d7659d863ab6a6e34ab00135db50783d22b369` |
| 10 | `theorem` | [finite_evidence_not_kernel_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/finite-evidence-not-kernel-authority.md) | 81 | `result-track:d0eb248978e88e1f9008ec690cab8db076bc46242e6c5f5514f7f4d1a20797f1` |
| 11 | `theorem` | [spectral_witness_not_kernel_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/spectral-witness-not-kernel-authority.md) | 86 | `result-track:9010e1634c2a63644fcfe67a2b9658d3649671614ae37fbbaa2f0f9db109c09e` |
| 12 | `structure` | [Authorized](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/authorized.md) | 92 | `declaration-track:2bb4a6ec7f01151e6c8f4476df9c4e63e1c0b2eb7cce3665b92eb62f4894c1c7` |
| 13 | `def` | [classifyModelProposal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/classifymodelproposal.md) | 97 | `declaration-track:16c14571f685d2de6f10535a75195153d2e969d1da6232aa7778f1b14bf0a669` |
| 14 | `def` | [Authorized.authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/authorized-authority.md) | 102 | `declaration-track:592e84f747389f7d957d0dde47ec339d7b55be56fef2f5da1ba571652fa15731` |
| 15 | `theorem` | [classifier_does_not_promote_model_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/classifier-does-not-promote-model-authority.md) | 108 | `result-track:469dc423c30978175b4d8f082ab422b840e81f328ba403ca8c4e4cf9f45b8d83` |
| 16 | `def` | [receiptAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/receiptauthority.md) | 115 | `declaration-track:cc57e2c006408446dd1c189f83bff967b1f48d986e1b3d3e5fd08412aa633795` |
| 17 | `theorem` | [receipt_alone_does_not_expose_task_proposition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/receipt-alone-does-not-expose-task-proposition.md) | 119 | `result-track:cc0050080c449eb933e5b627b1b27cfad5cd12ebb35df644655f86e7a6d4bdb4` |
| 18 | `theorem` | [checked_trial_exposes_task_proposition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedPublicEdition2.lean/declarations/checked-trial-exposes-task-proposition.md) | 126 | `result-track:2edea4020458bc3a598ff2babef4651a56bafde4d4e7aa223e7a60d6f6f849aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=560996ed6db51bbe87a4abfb027af72f6c115e17d55858f7157a0b782016f962 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Authority/Variant693a74cbe358b03d254c83c4966caf3984dac0556434ff9dd2cb2bd2fd2d939a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Authority/Variant693a74cbe358b03d254c83c4966caf3984dac0556434ff9dd2cb2bd2fd2d939a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
