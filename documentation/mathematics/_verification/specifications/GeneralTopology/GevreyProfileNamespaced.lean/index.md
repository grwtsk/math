# Verification target: Gevrey Profile Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a74a777e5c1415664f4952c658dc2c810e3abca",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfile/Variant7344d8315f97d73aec8ba55dd15803ef3120d61aa42d8cf2c292693a4b51f17d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/GevreyProfileNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/GevreyProfileNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a74a777e5c1415664f4952c658dc2c810e3abca`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfile/Variant7344d8315f97d73aec8ba55dd15803ef3120d61aa42d8cf2c292693a4b51f17d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfile/Variant7344d8315f97d73aec8ba55dd15803ef3120d61aa42d8cf2c292693a4b51f17d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.SmoothTransition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Support` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squaredExpNegInvGlue](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/squaredexpneginvglue.md) | 33 | `declaration-track:dc6486eecbb5c8bf34b630262d9234dafe73fb5d244ab60a6884454b7da5040e` |
| 2 | `theorem` | [squaredExpNegInvGlue_zero_of_nonpos](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/squaredexpneginvglue-zero-of-nonpos.md) | 36 | `result-track:a6493fe300d5c34c4f2415ee86b6f1e981a4a2fc38e81d32f2647e1f90b85010` |
| 3 | `theorem` | [squaredExpNegInvGlue_zero](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/squaredexpneginvglue-zero.md) | 40 | `result-track:be7a8f5bc4977408ec5eb9ef96ba258afeed5985eee70f33392fb7a6e7ae45b6` |
| 4 | `theorem` | [tendsto_polynomial_inv_mul_zero](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/tendsto-polynomial-inv-mul-zero.md) | 44 | `result-track:9887d7af47337a8c1e3bdb7cfb483a09413cb009d30da17a28c2ee71ce18018f` |
| 5 | `theorem` | [hasDerivAt_polynomial_eval_inv_mul](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/hasderivat-polynomial-eval-inv-mul.md) | 63 | `result-track:37e5a7aab9152c7529c351360b598bdd833464b310849d3c461a99b2acdd4576` |
| 6 | `theorem` | [differentiable_polynomial_eval_inv_mul](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/differentiable-polynomial-eval-inv-mul.md) | 82 | `result-track:f6bfd7bb3427454c7c8f5f1a90826e3bd4d85c56f0270df231b6c3b4e1552598` |
| 7 | `theorem` | [continuous_polynomial_eval_inv_mul](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/continuous-polynomial-eval-inv-mul.md) | 86 | `result-track:711823539339a7cb9ebecac2e369ad5e5bfc31addecbb2f86caba5ce89b0b54e` |
| 8 | `theorem` | [contDiff_polynomial_eval_inv_mul](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/contdiff-polynomial-eval-inv-mul.md) | 90 | `result-track:bf11f42e4b81653af268187361005f21311bb1c1094fd4659d59676ed9512c0f` |
| 9 | `theorem` | [squaredExpNegInvGlue_contDiff](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/squaredexpneginvglue-contdiff.md) | 102 | `result-track:ebbbea3b45856443879482866dfa04f22ed5974cddfa83be9ac76b7d0f2996f5` |
| 10 | `def` | [profile](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/profile.md) | 107 | `declaration-track:9cd1fd3bc2e8c843c3bd41283b97b5302dcfcd907c0f1f2a7858cb192b6f67f1` |
| 11 | `theorem` | [profile_eq_glue](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/profile-eq-glue.md) | 111 | `result-track:9138b837d7a7dc6fbb858ac74bfd3aecf032d80b62ec8dfc55d399cd4e718783` |
| 12 | `theorem` | [profile_contDiff](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/profile-contdiff.md) | 124 | `result-track:41ebc955783ffd8a9d0c813710d215feb0009d806dd0a18323868dde67eddc2f` |
| 13 | `theorem` | [profile_pos_of_abs_lt_one](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/profile-pos-of-abs-lt-one.md) | 132 | `result-track:54592448b62e243d707d5064994c41a6570683eb730d77f0141bdec57d953298` |
| 14 | `theorem` | [profile_zero_of_one_le_abs](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/profile-zero-of-one-le-abs.md) | 135 | `result-track:9c6f39c52ab464d985a0f7c0ef731ae54c859761082e7cab1188c81b8ee5660c` |
| 15 | `theorem` | [profile_zero](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/profile-zero.md) | 138 | `result-track:ff40c10d04c86dade999ba06c13bf2621b85549fd762abdee3e6641f60c9bfef` |
| 16 | `theorem` | [profile_nonzero](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/profile-nonzero.md) | 141 | `result-track:2e665456f63501efab0b059c29e83178680797e8a1240f8e34e32115b444021c` |
| 17 | `theorem` | [profile_support](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/profile-support.md) | 144 | `result-track:c92822e40cc373b39161579551d27ec09598b1fcd69b04c6fc5a0503d34fccc2` |
| 18 | `theorem` | [profile_hasCompactSupport](../../../../GeneralTopology/GevreyProfileNamespaced.lean/declarations/profile-hascompactsupport.md) | 155 | `result-track:df71054546ac9b4d03fabc108c83a871c115948a16ed7bb8a86eb0086990527d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b331e428c3c607babb39fbe9afcd7bca4a444cfc8ce9e9695d92afc9015d9bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfile/Variant7344d8315f97d73aec8ba55dd15803ef3120d61aa42d8cf2c292693a4b51f17d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfile/Variant7344d8315f97d73aec8ba55dd15803ef3120d61aa42d8cf2c292693a4b51f17d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
