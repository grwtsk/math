# Verification target: Rank Loop Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aade16cac83599410dea4758a2636eec88276f05",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variant187961711ddfb1f879660ddc4dd8de5213aef70861089d74ec90788b50543b66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/RankLoopNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/RankLoopNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aade16cac83599410dea4758a2636eec88276f05`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variant187961711ddfb1f879660ddc4dd8de5213aef70861089d74ec90788b50543b66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variant187961711ddfb1f879660ddc4dd8de5213aef70861089d74ec90788b50543b66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.TopologicalEmbedding` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.BSD` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HomologyGroupH1](../../../../../ComputerScience/AlgorithmsInComputerScience/RankLoopNamespaced.lean/declarations/homologygrouph1.md) | 29 | `declaration-track:f17c3569cf308da32b97fa5a3b08bf84238c33b934b77d2cf2452a403a9c9f2d` |
| 2 | `structure` | [MordellWeilModuloTorsion](../../../../../ComputerScience/AlgorithmsInComputerScience/RankLoopNamespaced.lean/declarations/mordellweilmodulotorsion.md) | 36 | `declaration-track:4e541d1456bdcf3cd4fb65f7ef89ac2ecdeec5fdaa2daf7adb1e84c7915852b0` |
| 3 | `structure` | [RankLoopMap](../../../../../ComputerScience/AlgorithmsInComputerScience/RankLoopNamespaced.lean/declarations/rankloopmap.md) | 43 | `declaration-track:3da1ce0c1b3722c4c57d1a6952c9c1ac0d9ca991a30de591dd7a983348f1a020` |
| 4 | `structure` | [RankLoopEquivalenceCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/RankLoopNamespaced.lean/declarations/rankloopequivalencecertificate.md) | 55 | `declaration-track:ee083802530e56ea45d863584c53eff82faa8c421457fe9faf3cdaec448fb0a2` |
| 5 | `def` | [RankLoopConjecture](../../../../../ComputerScience/AlgorithmsInComputerScience/RankLoopNamespaced.lean/declarations/rankloopconjecture.md) | 69 | `declaration-track:2336a498c197879485c18b5376473037a197449ca94c1faa7a7956e6746583ad` |
| 6 | `theorem` | [rank_eq_loop_rank](../../../../../ComputerScience/AlgorithmsInComputerScience/RankLoopNamespaced.lean/declarations/rank-eq-loop-rank.md) | 81 | `result-track:47126b0891c6c25f635306137cfa05e3b6b9929e307df3bb6f99691f407d0307` |
| 7 | `structure` | [RankZeroConditionalSchema](../../../../../ComputerScience/AlgorithmsInComputerScience/RankLoopNamespaced.lean/declarations/rankzeroconditionalschema.md) | 91 | `declaration-track:476f289e59fd09b0241b92343f5c2c958f1089179ae3211b66a003c2901b2516` |
| 8 | `structure` | [RankOneConditionalSchema](../../../../../ComputerScience/AlgorithmsInComputerScience/RankLoopNamespaced.lean/declarations/rankoneconditionalschema.md) | 97 | `declaration-track:0c1a0e0755f39070554ea4ec8c82330bae81b9eb365cbbbc77e1ce4e78f9ea14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=425d0eb09a71627cb5e060df66d6f9e7917e675f8e7f1cf9e4ec0db7895cc898 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variant187961711ddfb1f879660ddc4dd8de5213aef70861089d74ec90788b50543b66.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variant187961711ddfb1f879660ddc4dd8de5213aef70861089d74ec90788b50543b66.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
