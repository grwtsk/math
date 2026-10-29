# Verification target: State Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c11836f205703a972793a087ac9a155d8a022e4d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/State/Variantfe0db7085d632380fbe6b236bb4d1efec4e58143a28507d3ba3a94ad060d9734.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/StateSourceEdition2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/StateSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c11836f205703a972793a087ac9a155d8a022e4d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/State/Variantfe0db7085d632380fbe6b236bb4d1efec4e58143a28507d3ba3a94ad060d9734.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/State/Variantfe0db7085d632380fbe6b236bb4d1efec4e58143a28507d3ba3a94ad060d9734.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.TensorNetwork.Index` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TensorState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/StateSourceEdition2.lean/declarations/tensorstate.md) | 17 | `declaration-track:1738591da8eef066d966f1e4cbef0ff3c3242601ad456597c11faa996f92003f` |
| 2 | `structure` | [SemanticTensorEncodingCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/StateSourceEdition2.lean/declarations/semantictensorencodingcertificate.md) | 24 | `declaration-track:1ff94d9b5e879003ca9b5175a8c5ae80b8cc6e5c7738956680d200ca5e9b9a50` |
| 3 | `theorem` | [SemanticTensorEncodingCertificate.recovers](../../../../../MathematicalLogicAndFoundations/GeneralLogic/StateSourceEdition2.lean/declarations/semantictensorencodingcertificate-recovers.md) | 46 | `result-track:58ba19eb73b34b99a930ff5165d088104b1df91e5ab850fa6ad1a18063e167f2` |
| 4 | `structure` | [InjectiveSemanticTensorEncodingCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/StateSourceEdition2.lean/declarations/injectivesemantictensorencodingcertificate.md) | 59 | `declaration-track:e69d578a8535a9a53aa4576760645464e3c19110bdbfb8c593b3b6cc8d5eb6fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb62cd563f13d7a7aedb36ad8bbe3721509262b28d4bdeeb7f60941dad728144 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/State/Variantfe0db7085d632380fbe6b236bb4d1efec4e58143a28507d3ba3a94ad060d9734.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/State/Variantfe0db7085d632380fbe6b236bb4d1efec4e58143a28507d3ba3a94ad060d9734.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
