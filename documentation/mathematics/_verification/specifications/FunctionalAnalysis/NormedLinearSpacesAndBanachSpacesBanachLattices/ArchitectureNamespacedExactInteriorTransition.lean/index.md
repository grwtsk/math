# Verification target: Architecture Namespaced Exact Interior Transition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7719cfe0bcd35c9a101340240d6a26faba424701",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Architecture/Variant3e1c9082cbac55cb88021364b4a9bfc84d7871a79e0f8a397cb38e597f4a0a29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ArchitectureNamespacedExactInteriorTransition.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ArchitectureNamespacedExactInteriorTransition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7719cfe0bcd35c9a101340240d6a26faba424701`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Architecture/Variant3e1c9082cbac55cb88021364b4a9bfc84d7871a79e0f8a397cb38e597f4a0a29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Architecture/Variant3e1c9082cbac55cb88021364b4a9bfc84d7871a79e0f8a397cb38e597f4a0a29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.NeuralDiffusion.Decoder` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExactInteriorTransition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ArchitectureNamespacedExactInteriorTransition.lean/declarations/exactinteriortransition.md) | 32 | `declaration-track:16ce0ccf8daa2b15ab4f8bb818b3272733263e2ef6f96c3ffcc8bd9a8fb2864b` |
| 2 | `def` | [unchanged](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ArchitectureNamespacedExactInteriorTransition.lean/declarations/unchanged.md) | 39 | `declaration-track:7bf4dca723eb695bf9291fd4e2d349821aca38cf6404cbafe0efa83d84ac8811` |
| 3 | `structure` | [SourceFixedCertifiedLayer](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ArchitectureNamespacedExactInteriorTransition.lean/declarations/sourcefixedcertifiedlayer.md) | 52 | `declaration-track:1979c5c4ef2302502772f6cde0d78fa25c24048dd97f0554878d880795e02d17` |
| 4 | `def` | [step](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ArchitectureNamespacedExactInteriorTransition.lean/declarations/step.md) | 75 | `declaration-track:45ff8ac4d932deecc015b249856c23f66ad018efd79942c7331609776cfa2a66` |
| 5 | `theorem` | [accepted_state_is_source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ArchitectureNamespacedExactInteriorTransition.lean/declarations/accepted-state-is-source.md) | 83 | `result-track:03a738502242bd609f240499fad38304d06fe1a47df30ed21ffe6c30c2e11ad4` |
| 6 | `structure` | [Architecture](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ArchitectureNamespacedExactInteriorTransition.lean/declarations/architecture.md) | 94 | `declaration-track:822f78f13ad3772ee2dca90e8497249034b0a3263b0fb911618188b2a6103e0f` |
| 7 | `def` | [totalStep](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ArchitectureNamespacedExactInteriorTransition.lean/declarations/totalstep.md) | 138 | `declaration-track:e197d7dd2ddabc5f760d93679cc79c22994e3f761320e00cc467303df168f976` |
| 8 | `structure` | [CompletionGuarantees](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ArchitectureNamespacedExactInteriorTransition.lean/declarations/completionguarantees.md) | 158 | `declaration-track:4493627b2bd3e750fbf8b44f68a67c95520fff6e1a3124af8f3beec462bd47f2` |
| 9 | `theorem` | [completion](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ArchitectureNamespacedExactInteriorTransition.lean/declarations/completion.md) | 210 | `result-track:ba0f8f73bf6d7d9a00a76117ddf21a5fa1750c68de181648af4c017395bef6bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1765b76e9f8bf8eafd7caa6cb169f142a5dbedca2590e281cd3a77d4f756b6a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Architecture/Variant3e1c9082cbac55cb88021364b4a9bfc84d7871a79e0f8a397cb38e597f4a0a29.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Architecture/Variant3e1c9082cbac55cb88021364b4a9bfc84d7871a79e0f8a397cb38e597f4a0a29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
