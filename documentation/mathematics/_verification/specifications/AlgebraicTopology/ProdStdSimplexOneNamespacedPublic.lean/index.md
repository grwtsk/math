# Verification target: Prod Std Simplex One Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "112eeb9fd32c1f82cf7018a463d63751f9f23578",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variantc6e2193db9b8bf35f47b294538bc248181710466200f1640287bce198a088340.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/ProdStdSimplexOneNamespacedPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/ProdStdSimplexOneNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `112eeb9fd32c1f82cf7018a463d63751f9f23578`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variantc6e2193db9b8bf35f47b294538bc248181710466200f1640287bce198a088340.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variantc6e2193db9b8bf35f47b294538bc248181710466200f1640287bce198a088340.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonDegenerateEquiv](../../../../AlgebraicTopology/ProdStdSimplexOneNamespacedPublic.lean/declarations/nondegenerateequiv.md) | 51 | `declaration-track:82f3e4af513c97f5c6959e7da0ea549a382da24a2bda7b8af704c56d5f6fa029` |
| 2 | `lemma` | [nonDegenerateEquiv_fst](../../../../AlgebraicTopology/ProdStdSimplexOneNamespacedPublic.lean/declarations/nondegenerateequiv-fst.md) | 90 | `result-track:992415ddaa154c9fc5cab05f33c11fa78a53e1f844b3dce44c10d9057ccf1033` |
| 3 | `lemma` | [nonDegenerateEquiv_snd](../../../../AlgebraicTopology/ProdStdSimplexOneNamespacedPublic.lean/declarations/nondegenerateequiv-snd.md) | 95 | `result-track:5d72065f1c42f6d09156407ccee4b2d2858b68c0dba865d36ae41a0aba99d51d` |
| 4 | `def` | [filtration](../../../../AlgebraicTopology/ProdStdSimplexOneNamespacedPublic.lean/declarations/filtration.md) | 101 | `declaration-track:63fcfc81d94570251d945a85a96f22c275cb1d09550106791678d5f6a27b7908` |
| 5 | `lemma` | [ofSimplex_le_filtration](../../../../AlgebraicTopology/ProdStdSimplexOneNamespacedPublic.lean/declarations/ofsimplex-le-filtration.md) | 104 | `result-track:e1baa53d8c7b249f0c448ba203f257599871257c696b1257e90556ba24cdc2fa` |
| 6 | `lemma` | [filtration_zero](../../../../AlgebraicTopology/ProdStdSimplexOneNamespacedPublic.lean/declarations/filtration-zero.md) | 110 | `result-track:e4d92495ac473bdc7935ed8dc407416bd722eb5e2f172d1d492dfda5a8138813` |
| 7 | `lemma` | [filtration_last](../../../../AlgebraicTopology/ProdStdSimplexOneNamespacedPublic.lean/declarations/filtration-last.md) | 115 | `result-track:ee2d2be2019ab0dc7557dbb71d9cc22d51fb3cf778dd745f1890e9d9a4bcf334` |
| 8 | `lemma` | [filtration_monotone](../../../../AlgebraicTopology/ProdStdSimplexOneNamespacedPublic.lean/declarations/filtration-monotone.md) | 124 | `result-track:9aae9f880509d2ff43ea84ca39cdb2e8fe487d662b8e1f1142f2b4687bf4b6bd` |
| 9 | `abbrev` | [intersectionNondeg](../../../../AlgebraicTopology/ProdStdSimplexOneNamespacedPublic.lean/declarations/intersectionnondeg.md) | 135 | `declaration-track:39504ccf77dc0700ee98995d5d6b48ab81d85d749df2d396300b75f8473c44d6` |
| 10 | `def` | [codimOneSimplex](../../../../AlgebraicTopology/ProdStdSimplexOneNamespacedPublic.lean/declarations/codimonesimplex.md) | 144 | `declaration-track:9fa692e56d53d933482e14d084adc998a72643435adb6219faa502fc12ee0a84` |
| 11 | `lemma` | [δ_castSucc_nonDegenerateEquiv](../../../../AlgebraicTopology/ProdStdSimplexOneNamespacedPublic.lean/declarations/castsucc-nondegenerateequiv.md) | 151 | `result-track:43c1e08ae18da74eae3f181b2fd23c6b50ffb6d4f0879fe885d47b5876524d00` |
| 12 | `lemma` | [δ_succ_nonDegenerateEquiv](../../../../AlgebraicTopology/ProdStdSimplexOneNamespacedPublic.lean/declarations/succ-nondegenerateequiv.md) | 161 | `result-track:660b0f5a3a37acc42ee94bbe3dc3a6721d4c5163513924c35a946395b61b2a1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06379f22fc9a2c88622ea5cec765fc7c5ed009095a841172b7c67387e6d09870 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variantc6e2193db9b8bf35f47b294538bc248181710466200f1640287bce198a088340.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variantc6e2193db9b8bf35f47b294538bc248181710466200f1640287bce198a088340.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
