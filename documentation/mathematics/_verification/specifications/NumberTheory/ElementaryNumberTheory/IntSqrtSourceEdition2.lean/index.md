# Verification target: Int Sqrt Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84cd4db1bf7d0fadad04529e71262eb27b12fa80",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variant9afac075a9e796761d81618e97b70b6463f72ea72b45c8b95a7d9b32b71cdae5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/IntSqrtSourceEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/IntSqrtSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84cd4db1bf7d0fadad04529e71262eb27b12fa80`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variant9afac075a9e796761d81618e97b70b6463f72ea72b45c8b95a7d9b32b71cdae5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Sqrt/Variant9afac075a9e796761d81618e97b70b6463f72ea72b45c8b95a7d9b32b71cdae5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Sqrt` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqrt](../../../../../NumberTheory/ElementaryNumberTheory/IntSqrtSourceEdition2.lean/declarations/sqrt.md) | 24 | `declaration-track:73ead446b36a4431abf3934e678f8adcbb8356f3a69ed819258ff386308df01f` |
| 2 | `theorem` | [sqrt_eq](../../../../../NumberTheory/ElementaryNumberTheory/IntSqrtSourceEdition2.lean/declarations/sqrt-eq.md) | 28 | `result-track:d7e9541ded25a5077f7226460040f52394626bfa3de354b138a72eff82604ae5` |
| 3 | `theorem` | [exists_mul_self](../../../../../NumberTheory/ElementaryNumberTheory/IntSqrtSourceEdition2.lean/declarations/exists-mul-self.md) | 32 | `result-track:d633a2d0443ca1b0665224b77c740aaf265c903f3d6f5bf0fb6b87efea9fcc98` |
| 4 | `theorem` | [sqrt_nonneg](../../../../../NumberTheory/ElementaryNumberTheory/IntSqrtSourceEdition2.lean/declarations/sqrt-nonneg.md) | 36 | `result-track:b54fa38c750d7265cd0a5e118cc0dc2be14287845ee51b352a73c763369aae94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a822c79e65d66d85b9bbb669b47edc76f830c963dc152d643105ecf89719580c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variant9afac075a9e796761d81618e97b70b6463f72ea72b45c8b95a7d9b32b71cdae5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Sqrt/Variant9afac075a9e796761d81618e97b70b6463f72ea72b45c8b95a7d9b32b71cdae5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
