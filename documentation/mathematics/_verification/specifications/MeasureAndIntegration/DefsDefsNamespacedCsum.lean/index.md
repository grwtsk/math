# Verification target: Defs Defs Namespaced Csum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa95d5c6a5a69e5c0d40516f35754ef5471be4b0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant831fbcce6acf969d30846bde433c86dbc11b2abba18c70bfead1b7b89bbeb947.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/DefsDefsNamespacedCsum.lean/index.md) · [Full source](../../../../MeasureAndIntegration/DefsDefsNamespacedCsum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa95d5c6a5a69e5c0d40516f35754ef5471be4b0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant831fbcce6acf969d30846bde433c86dbc11b2abba18c70bfead1b7b89bbeb947.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant831fbcce6acf969d30846bde433c86dbc11b2abba18c70bfead1b7b89bbeb947.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Csum](../../../../MeasureAndIntegration/DefsDefsNamespacedCsum.lean/declarations/csum.md) | 35 | `declaration-track:0a25a781f3ff34eab9a8e0a0e177ec6d4ef42422e431c4c9d352139b28b1f2c2` |
| 2 | `def` | [Cstep](../../../../MeasureAndIntegration/DefsDefsNamespacedCsum.lean/declarations/cstep.md) | 38 | `declaration-track:3451e98297dc73c4c3be9bd7157a3bdd020896dd5bd8f206b65c38604d478a06` |
| 3 | `def` | [Dfun](../../../../MeasureAndIntegration/DefsDefsNamespacedCsum.lean/declarations/dfun.md) | 41 | `declaration-track:1aa185adf898f5e3a603ef8339f6c56eba2ad942bcd05e03bdbb452fdd0d6036` |
| 4 | `def` | [Efun](../../../../MeasureAndIntegration/DefsDefsNamespacedCsum.lean/declarations/efun.md) | 44 | `declaration-track:e785fae0d991d72be2d4134541a4aa78fe2e99b256a95ad301d1b6600aebfcd7` |
| 5 | `lemma` | [Csum_zero](../../../../MeasureAndIntegration/DefsDefsNamespacedCsum.lean/declarations/csum-zero.md) | 48 | `result-track:407926811e8651b419b5e39291d3225c4a091c54ab749a4835a76993add6d1c2` |
| 6 | `lemma` | [Csum_succ](../../../../MeasureAndIntegration/DefsDefsNamespacedCsum.lean/declarations/csum-succ.md) | 50 | `result-track:aec8fde25ffe1eaa31cea3234839192a010f5047aeedfd9be67847f9674fec34` |
| 7 | `lemma` | [Cstep_eq_Csum_of_mem](../../../../MeasureAndIntegration/DefsDefsNamespacedCsum.lean/declarations/cstep-eq-csum-of-mem.md) | 55 | `result-track:cd83e8c82578797e2c9a2baed254f20ddc3ed5b050467ff5421b879742bf0d3a` |
| 8 | `lemma` | [Cstep_eq_Csum_of_one_le](../../../../MeasureAndIntegration/DefsDefsNamespacedCsum.lean/declarations/cstep-eq-csum-of-one-le.md) | 74 | `result-track:8ed6d6c93466405b884db34a6f6b9e55eab9a82a11cc362238ade6b3e15b8914` |
| 9 | `lemma` | [Cstep_one](../../../../MeasureAndIntegration/DefsDefsNamespacedCsum.lean/declarations/cstep-one.md) | 84 | `result-track:873a592c32255ca557da56b301a10747fd2a7af18cca46f5e41123aefad22fc0` |
| 10 | `lemma` | [Cstep_eq_zero_of_lt](../../../../MeasureAndIntegration/DefsDefsNamespacedCsum.lean/declarations/cstep-eq-zero-of-lt.md) | 87 | `result-track:9bda0c259ee1f501f541523db7afb6a138e4ad310b5d2cdb07c46fff94e3bcb5` |
| 11 | `lemma` | [Dfun_one](../../../../MeasureAndIntegration/DefsDefsNamespacedCsum.lean/declarations/dfun-one.md) | 96 | `result-track:2160ecda79e0074b8cc42531252a3bd9fe91be00f78c4c7514cd3fb3e63f4076` |
| 12 | `lemma` | [Efun_zero](../../../../MeasureAndIntegration/DefsDefsNamespacedCsum.lean/declarations/efun-zero.md) | 99 | `result-track:118c732c395ffd0627747c6a4f0ba52bcac2572fa3002246cc3e66fb7b623641` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03c890d6d7d1201c6f457fa5d07d647f4c1e9cd94891f51c7a6c1c4c664e6ad2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant831fbcce6acf969d30846bde433c86dbc11b2abba18c70bfead1b7b89bbeb947.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant831fbcce6acf969d30846bde433c86dbc11b2abba18c70bfead1b7b89bbeb947.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
