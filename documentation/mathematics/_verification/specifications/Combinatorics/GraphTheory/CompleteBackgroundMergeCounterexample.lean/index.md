# Verification target: Complete Background Merge Counterexample

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd80e3dcf42f695e39c2830829e2e793214334fb",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/ComplementaryBackgroundComponentWitness/Variant859e3c53b02f0792/CompleteBackgroundMergeCounterexample.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/CompleteBackgroundMergeCounterexample.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/CompleteBackgroundMergeCounterexample.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd80e3dcf42f695e39c2830829e2e793214334fb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/ComplementaryBackgroundComponentWitness/Variant859e3c53b02f0792/CompleteBackgroundMergeCounterexample.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/ComplementaryBackgroundComponentWitness/Variant859e3c53b02f0792/CompleteBackgroundMergeCounterexample.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Surgery.CanonicalRaster` — import line 19; external provider; requires a separately pinned dependency.
- [Configurations Policies And Exterior Links](../../../../../Combinatorics/GraphTheory/ConfigurationsPoliciesAndExteriorLinks.lean/index.md) — import line 21; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [backgroundMergeBefore](../../../../../Combinatorics/GraphTheory/CompleteBackgroundMergeCounterexample.lean/declarations/backgroundmergebefore.md) | 44 | `declaration-track:6a53433488b2fd5901cf7bbbd74c0ffdd590f0418a1605291c4e511836ce5c01` |
| 2 | `def` | [backgroundMergeAfter](../../../../../Combinatorics/GraphTheory/CompleteBackgroundMergeCounterexample.lean/declarations/backgroundmergeafter.md) | 48 | `declaration-track:182d8ea0df1fc57d4d4c7d4321facc85aa7ef8fbe4d8bfb5610c6d498680db52` |
| 3 | `def` | [backgroundMergeCut](../../../../../Combinatorics/GraphTheory/CompleteBackgroundMergeCounterexample.lean/declarations/backgroundmergecut.md) | 52 | `declaration-track:eb3f21acee997e9955bb99f0918f40bae583e32cc66256971161c919ff4683e5` |
| 4 | `def` | [backgroundMergeRepair](../../../../../Combinatorics/GraphTheory/CompleteBackgroundMergeCounterexample.lean/declarations/backgroundmergerepair.md) | 56 | `declaration-track:3e9ecb4a1ed34defaec89b525a41b6f60da1589bfcb096c47ad78855d46955ca` |
| 5 | `theorem` | [backgroundMergeRepair_apply](../../../../../Combinatorics/GraphTheory/CompleteBackgroundMergeCounterexample.lean/declarations/backgroundmergerepair-apply.md) | 59 | `result-track:b7902a182c99cf2022b649514af3ef7308f0813f4c51ce1007a87a581178bfee` |
| 6 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/CompleteBackgroundMergeCounterexample.lean/declarations/example.md) | 66 | `declaration-track:2042eaebe024ecfd392f2564880b2edffb7c663b6494b3cf5c81c74be60340c1` |
| 7 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/CompleteBackgroundMergeCounterexample.lean/declarations/example-source-edition-2.md) | 72 | `declaration-track:45e0cec90bd2dfe7806a8a3b6ea1d6e2dc765b314ece4df5e06a2c412372c082` |
| 8 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/CompleteBackgroundMergeCounterexample.lean/declarations/example-source-edition-6.md) | 75 | `declaration-track:8b6c7e56004616cb05a1b2fb515fc074c414c40fadb619c4e0fb818d79e974e3` |
| 9 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/CompleteBackgroundMergeCounterexample.lean/declarations/example-source-edition-4.md) | 81 | `declaration-track:7f2ebbf9d22648dfe6ef01c81051a847e106e81639bdfbd1802cb9ae7c3765ea` |
| 10 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/CompleteBackgroundMergeCounterexample.lean/declarations/example-source-edition-7.md) | 87 | `declaration-track:e8a570bfdcd08d2e7acbd4afd5cf198632f0365155a2b65d3ad00040dc303548` |
| 11 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/CompleteBackgroundMergeCounterexample.lean/declarations/example-source-edition-5.md) | 97 | `declaration-track:897dd64bbb022d876e4da2e5deebade83ae23032cd6ebdb13e47abb0adafd218` |
| 12 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/CompleteBackgroundMergeCounterexample.lean/declarations/example-source-edition-3.md) | 106 | `declaration-track:559e37bdaafcf42eb35e6e4d890cbe64dc42a6abb921bff590d943834f582190` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c586ba19de05e67f1e6b2d1d364c21f9196e94580663b3fd2b58817b11e23ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/ComplementaryBackgroundComponentWitness/Variant859e3c53b02f0792/CompleteBackgroundMergeCounterexample.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/ComplementaryBackgroundComponentWitness/Variant859e3c53b02f0792/CompleteBackgroundMergeCounterexample.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
