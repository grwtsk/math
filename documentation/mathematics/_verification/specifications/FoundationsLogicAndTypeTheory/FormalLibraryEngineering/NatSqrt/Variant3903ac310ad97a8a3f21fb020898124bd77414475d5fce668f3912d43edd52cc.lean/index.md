# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatSqrt.Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9108c2d9fb9196180732ea2fea8fbd8d80e42678",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9108c2d9fb9196180732ea2fea8fbd8d80e42678`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [nat_sqrt_helper](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc.lean/declarations/nat-sqrt-helper--8ad4735526edbccd98517981.md) | 27 | `result-track:8ad4735526edbccd98517981d866c873b5548d2f589b86cbd329918c9c3c9240` |
| 2 | `theorem` | [isNat_sqrt](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc.lean/declarations/isnat-sqrt--e38d781adde478ced46c3ccc.md) | 33 | `result-track:e38d781adde478ced46c3ccccf062bbf5434d17db14a2e916b510553b6bec861` |
| 3 | `def` | [proveNatSqrt](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc.lean/declarations/provenatsqrt--23a5e4acc06cc650f945fde5.md) | 38 | `declaration-track:23a5e4acc06cc650f945fde5201886f2d3c9a00b56b545d27ced43c7b9eaf2c5` |
| 4 | `def` | [evalNatSqrt](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc.lean/declarations/evalnatsqrt--bea1bbc4ea89b3baa7b299ec.md) | 52 | `declaration-track:bea1bbc4ea89b3baa7b299ecfe75434d709c9838e1a167a7d6e9659330a644b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f10046a06a48ad3b9c7a9cf8516848998f51ca4d3a2ce11b161ddbc74285171 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
