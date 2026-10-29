# Verification target: Triangle Inequality Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f35abd960646ff14fa1cc5413e02acdb82aba1d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante2e666214a617366c218f087c378f1bae1048bb1a75ebbd24b65795d40057042.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f35abd960646ff14fa1cc5413e02acdb82aba1d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante2e666214a617366c218f087c378f1bae1048bb1a75ebbd24b65795d40057042.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante2e666214a617366c218f087c378f1bae1048bb1a75ebbd24b65795d40057042.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.LpSeminorm.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.MeanInequalities` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eLpNorm'_add_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/elpnorm-add-le.md) | 33 | `result-track:6da1f3eecf6a6aefe131f371d9aebcb7fa9329b0c423ec8d6eff9573f6799014` |
| 2 | `theorem` | [eLpNorm'_add_le_of_le_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/elpnorm-add-le-of-le-one.md) | 41 | `result-track:b363f170984480bfcf41f7e96569b1be4ff19233b25e7a9f1c42c0694405a0e1` |
| 3 | `theorem` | [eLpNormEssSup_add_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/elpnormesssup-add-le.md) | 50 | `result-track:ca724bd0561372ddaac6a9f917f7ffbb847945f41bf42d42ea1a17c37eda865c` |
| 4 | `theorem` | [eLpNorm_add_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/elpnorm-add-le-source-edition-2.md) | 56 | `result-track:7093296f8e0059ee79e5a69c828a641a6bd5fc07481e406c58a968aa97bf0e5e` |
| 5 | `def` | [LpAddConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/lpaddconst.md) | 69 | `declaration-track:e5e4cda0894055b670a47cf4dc51908b5ceace62cd8a4c1938648236c4e0277a` |
| 6 | `theorem` | [LpAddConst_of_one_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/lpaddconst-of-one-le.md) | 72 | `result-track:d39ffa1bbc834662d5cdf432294a988255de4ad995162a8caf78e65d4f9241d3` |
| 7 | `theorem` | [LpAddConst_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/lpaddconst-zero.md) | 77 | `result-track:a444bb1ccb4825ec92549741627b219f459567f3b096966e021df63660f54a4f` |
| 8 | `theorem` | [LpAddConst_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/lpaddconst-lt-top.md) | 82 | `result-track:844c66d314eca2b577880e5013ed2c989b1617102dcac7ed34f472df4f0db963` |
| 9 | `theorem` | [eLpNorm_add_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/elpnorm-add-le-source-edition-3.md) | 90 | `result-track:a57c50eb9e061a413406d43c63a1987847778d12ae5c3933413f48ae0a8e451d` |
| 10 | `theorem` | [exists_Lp_half](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/exists-lp-half.md) | 107 | `result-track:1d1038443ce29f18438b7c7e60f799d4997da13932b99602fcd6962d18c7dfef` |
| 11 | `theorem` | [eLpNorm_sub_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/elpnorm-sub-le.md) | 125 | `result-track:8945e76c40ccd525f599a6067b6843bdd51af4a2800666bdb7d0911e6a278a83` |
| 12 | `theorem` | [eLpNorm_sub_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/elpnorm-sub-le-source-edition-2.md) | 130 | `result-track:a7989952d7cbf1e27371f039a8506c0fab1d85a2de0b3282f032037ec2b02c1d` |
| 13 | `theorem` | [eLpNorm_add_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/elpnorm-add-lt-top.md) | 134 | `result-track:6ba310e552abcecbd00af1bbe708520d8e2f3d898edf36a9c4b993fac9c1239d` |
| 14 | `theorem` | [eLpNorm'_sum_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/elpnorm-sum-le.md) | 143 | `result-track:7204c10301c9076fa14e3ea927d091809ebb7094f2430c6ec9fab59b566a2a78` |
| 15 | `theorem` | [eLpNorm_sum_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/elpnorm-sum-le-source-edition-2.md) | 150 | `result-track:81b4abdbcfaecd0aaa024123c0c20494e595bc3c136bd3e83c4e2ea5cab7ce88` |
| 16 | `theorem` | [MemLp.add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/memlp-add.md) | 157 | `result-track:92d7eeaf4c6d942f3288dfbbf14fb721b5deab562a613251bd62e29de1a9b22b` |
| 17 | `theorem` | [MemLp.sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/memlp-sub.md) | 160 | `result-track:6b7ecb19a9124fc4f4752979a8bc8423bf5a22d82925e8200df046b5399c65fd` |
| 18 | `theorem` | [memLp_finset_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/memlp-finset-sum-source-edition-2.md) | 164 | `result-track:975ca62fa1ffae95bb95bcc1312a70ae7319eee9fe436f76ba2fda157893830c` |
| 19 | `theorem` | [memLp_finset_sum'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TriangleInequalityNamespaced.lean/declarations/memlp-finset-sum.md) | 175 | `result-track:79696f2d28642e12b9fa648234245786d29ceeba67108abe3bb2ef9f5963b1fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24f71d58c9870ad04b91c3e551ff790fcba1c174a8c708cd47d26ca1205c87e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante2e666214a617366c218f087c378f1bae1048bb1a75ebbd24b65795d40057042.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante2e666214a617366c218f087c378f1bae1048bb1a75ebbd24b65795d40057042.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
