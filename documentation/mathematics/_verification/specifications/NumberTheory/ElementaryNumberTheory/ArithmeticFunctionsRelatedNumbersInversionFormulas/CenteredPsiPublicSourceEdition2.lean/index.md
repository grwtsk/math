# Verification target: Centered Psi Public Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e228e431515237c401c2c34448f65f2d0d2cb782",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantddfe514a5e8b72c9fc3f882fe513ecd713650d79e37b2b0807c0b73318e1d68a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CenteredPsiPublicSourceEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CenteredPsiPublicSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e228e431515237c401c2c34448f65f2d0d2cb782`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantddfe514a5e8b72c9fc3f882fe513ecd713650d79e37b2b0807c0b73318e1d68a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantddfe514a5e8b72c9fc3f882fe513ecd713650d79e37b2b0807c0b73318e1d68a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletPrincipalIndicator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CenteredPsiPublicSourceEdition2.lean/declarations/dirichletprincipalindicator.md) | 28 | `declaration-track:a10651478650ead8ecdbef42cc22ad92615708e7ed2b10055fc02ed965cbf1e7` |
| 2 | `def` | [twistedPsi](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CenteredPsiPublicSourceEdition2.lean/declarations/twistedpsi.md) | 36 | `declaration-track:643bf595cbdde169a1ba936fb7539749b966c2e4cca93c932bd7259c476cea57` |
| 3 | `def` | [centeredTwistedPsi](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CenteredPsiPublicSourceEdition2.lean/declarations/centeredtwistedpsi.md) | 43 | `declaration-track:8fd3b09ef71de1f49c2558a9d9c17a26a84c8f0c2657dcd3ef06254947d1f8a2` |
| 4 | `theorem` | [dirichletPrincipalIndicator_eq_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CenteredPsiPublicSourceEdition2.lean/declarations/dirichletprincipalindicator-eq-zero.md) | 48 | `result-track:a60c940312065ea853f7632ecaad3397bf83d0a423a9c0faae54fe6b687360fb` |
| 5 | `theorem` | [dirichletPrincipalIndicator_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CenteredPsiPublicSourceEdition2.lean/declarations/dirichletprincipalindicator-one.md) | 54 | `result-track:0a620abe9d55310a3153fb33ec8dc490b112d3da3a03bb21ca61ef8f6732ca6a` |
| 6 | `theorem` | [twistedPsi_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CenteredPsiPublicSourceEdition2.lean/declarations/twistedpsi-zero.md) | 60 | `result-track:9e33a7649f52a0b3d9d9141fddf8f558c70a87c5fdb6b26e275326c193022c76` |
| 7 | `theorem` | [centeredTwistedPsi_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CenteredPsiPublicSourceEdition2.lean/declarations/centeredtwistedpsi-zero.md) | 66 | `result-track:309240cdbd75405a44de0727f2f1a3e807b87eb30f39a5f58f043ab6f7948374` |
| 8 | `theorem` | [centeredTwistedPsi_eq_twistedPsi_of_ne_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CenteredPsiPublicSourceEdition2.lean/declarations/centeredtwistedpsi-eq-twistedpsi-of-ne-one.md) | 73 | `result-track:590e7837087279aa97125c43e80fcc8d4473123944e473777a785a7d6717877d` |
| 9 | `theorem` | [centeredTwistedPsi_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CenteredPsiPublicSourceEdition2.lean/declarations/centeredtwistedpsi-one.md) | 80 | `result-track:be54061898b055222936d4c3955723ef9d0b2a8429dddb2860ca50facf676319` |
| 10 | `theorem` | [twistedPsi_succ](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CenteredPsiPublicSourceEdition2.lean/declarations/twistedpsi-succ.md) | 88 | `result-track:9262f2a0d0990f059d80ba1b8a357521f1327d6723027d802a96f08e8543dde6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5880a037ac5e62f16dc227bb205bcdf6e0692b6f6bbbed6c2e1a4eed0daa60a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantddfe514a5e8b72c9fc3f882fe513ecd713650d79e37b2b0807c0b73318e1d68a.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantddfe514a5e8b72c9fc3f882fe513ecd713650d79e37b2b0807c0b73318e1d68a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
