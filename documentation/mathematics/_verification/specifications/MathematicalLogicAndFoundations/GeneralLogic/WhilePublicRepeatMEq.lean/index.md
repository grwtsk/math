# Verification target: While Public Repeat MEq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6c953c39bad07eaf16f37cf8a006df58c49646d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/While/Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WhilePublicRepeatMEq.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WhilePublicRepeatMEq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6c953c39bad07eaf16f37cf8a006df58c49646d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/While/Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/While/Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054.lean.json)

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
| 1 | `abbrev` | [repeatM.body](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WhilePublicRepeatMEq.lean/declarations/repeatm-body.md) | 24 | `declaration-track:df6108977ce273aa97b815873aa4b97eb52b3fa5025c1133fb0892fc770c5a4d` |
| 2 | `abbrev` | [repeatM.Pred](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WhilePublicRepeatMEq.lean/declarations/repeatm-pred.md) | 36 | `declaration-track:29209915516cd0650a36edf0a3018dd210d2453d7537c9dddd983a602a095d8b` |
| 3 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WhilePublicRepeatMEq.lean/declarations/instance.md) | 43 | `declaration-track:d75c9405393ee958a8213a29bb6b20e563a4c6eb682047ad68237d53793d9cd1` |
| 4 | `def` | [repeatM.impl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WhilePublicRepeatMEq.lean/declarations/repeatm-impl.md) | 53 | `declaration-track:22942dac14acaef2f9d277742afa1a364ea3d4d5a72d1317f93b01a6389024ff` |
| 5 | `def` | [repeatM.erased](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WhilePublicRepeatMEq.lean/declarations/repeatm-erased.md) | 68 | `declaration-track:cf1aa5d12a2bb24a53bdef2a8b3aafd754f4409c38434f5fba94fc15de30f9c8` |
| 6 | `def` | [repeatM](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WhilePublicRepeatMEq.lean/declarations/repeatm.md) | 77 | `declaration-track:ca86770309979f5ac1622351ed32cf782761caa45b8b6273fee3210308155d65` |
| 7 | `theorem` | [repeatM_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WhilePublicRepeatMEq.lean/declarations/repeatm-eq.md) | 82 | `result-track:e74d2101454acb63eb3fd18eaf80e95e24b0fc17152fae6f02d90d6ecb2b4b81` |
| 8 | `structure` | [Loop](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WhilePublicRepeatMEq.lean/declarations/loop.md) | 100 | `declaration-track:71019ab832d79575cae43eb7c9368b461aa5e80b017ddaddb0fd736209f4c876` |
| 9 | `def` | [Loop.forIn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WhilePublicRepeatMEq.lean/declarations/loop-forin.md) | 102 | `declaration-track:50417a411dcbd96b6fc73da1228b23d24201ab1f2c0348ae20cfd8f0abb56812` |
| 10 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WhilePublicRepeatMEq.lean/declarations/instance-source-edition-2.md) | 110 | `declaration-track:eac88b8485e17afbc44ebe946d1f89dd334fc3613d3dcef827492d514112b22b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97bf2eef01b948229e9678b35fca43ad038a5a2a1f8b02cadd7f6800b61b4c32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/While/Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/While/Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
