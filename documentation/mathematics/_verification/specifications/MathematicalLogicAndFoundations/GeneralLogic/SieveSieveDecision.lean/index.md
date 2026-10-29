# Verification target: Sieve Sieve Decision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6604f8ebc72e7ba1e81e34547966c4d6fe8ab9ea",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variantaf40fb4b7fc331feb9971f6b8cf0b64d8139708cfcc029a15759bb1686a8b9c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6604f8ebc72e7ba1e81e34547966c4d6fe8ab9ea`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variantaf40fb4b7fc331feb9971f6b8cf0b64d8139708cfcc029a15759bb1686a8b9c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variantaf40fb4b7fc331feb9971f6b8cf0b64d8139708cfcc029a15759bb1686a8b9c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Transport.Coordinate` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SieveDecision](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/declarations/sievedecision.md) | 8 | `declaration-track:92e33e186e8e158e96d5c15953218075a2bf40ed9368117821d08078886dc883` |
| 2 | `structure` | [SieveSpecification](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/declarations/sievespecification.md) | 15 | `declaration-track:c441a57ddd1656657d45b0d02e55c2efaebb47c05d2ce56cf3fa41b4d2ee1bed` |
| 3 | `structure` | [SieveProcedure](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/declarations/sieveprocedure.md) | 20 | `declaration-track:4da0ba035eae8eb41b298c8f7a5b7c615bd3db69d8cf024785dc3f57383d8207` |
| 4 | `structure` | [SieveSoundness](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/declarations/sievesoundness.md) | 27 | `declaration-track:024138f27e7b44a2bf3a039ee6f29da31b5989ff52f8d121abf9f67a63043a56` |
| 5 | `structure` | [SieveCompleteness](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/declarations/sievecompleteness.md) | 38 | `declaration-track:448b3852a1ca6e7c0709f8e74cec01746b83787e8a815a5e48dcfcaccbe89135` |
| 6 | `structure` | [SieveTermination](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/declarations/sievetermination.md) | 49 | `declaration-track:8d49a12963a8b8239cefa89004769b3b309996050da1224c00284442b7006d89` |
| 7 | `structure` | [SieveEvidenceTheoryVersion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/declarations/sieveevidencetheoryversion.md) | 64 | `declaration-track:356e465695c6096d5657127f60412278b08e1b63337dc87af1bccd4ad2c09032` |
| 8 | `def` | [SieveEvidenceTheoryVersion.soundOnly](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/declarations/sieveevidencetheoryversion-soundonly.md) | 76 | `declaration-track:b2f8269d0b7f297b73d11d11876632845a7b36885c410b900602e12ae8b36f84` |
| 9 | `structure` | [SieveClosureClaim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/declarations/sieveclosureclaim.md) | 91 | `declaration-track:5f9c65356a4dc77c1c4ed36ce477ceea37c84b8567c403ca59f60ff244c78a2f` |
| 10 | `structure` | [SieveEvaluationResult](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/declarations/sieveevaluationresult.md) | 104 | `declaration-track:6b0cec55ea1aec2b8ff5c7a17ce8928a2218bdf1b77523b36f8a2e76ff3231fd` |
| 11 | `structure` | [SieveEvaluation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/declarations/sieveevaluation.md) | 114 | `declaration-track:fcf2146cb5d6cb26e7c979ab30137e4078adb57773831543ef16e3d7811b41c7` |
| 12 | `structure` | [SieveWitness](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/declarations/sievewitness.md) | 123 | `declaration-track:324f23e4ad4cfdc83b06ac5c7dad944f051126ec9917157e11166a558f2ac577` |
| 13 | `structure` | [ConstraintSieveBridge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/declarations/constraintsievebridge.md) | 134 | `declaration-track:eb296cc13b2b54f38bdf8f2fb979792950da962b9b4350fe084fda626962461f` |
| 14 | `structure` | [SieveReflection](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SieveSieveDecision.lean/declarations/sievereflection.md) | 145 | `declaration-track:f86590568b916746fe92ad9420db08c492e910be929918d0443962ce7171c438` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9801846102984fb05a0a370ef6387ef82f1cbfd60d9c4645ba77682d54406ee6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variantaf40fb4b7fc331feb9971f6b8cf0b64d8139708cfcc029a15759bb1686a8b9c3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variantaf40fb4b7fc331feb9971f6b8cf0b64d8139708cfcc029a15759bb1686a8b9c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
