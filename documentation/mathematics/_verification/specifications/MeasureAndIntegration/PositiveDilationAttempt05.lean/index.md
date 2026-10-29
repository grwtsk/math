# Verification target: Positive Dilation Attempt05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c029de004fb404743d2de036459ecf5bdeaf8bab",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Variant98180aee47c9772133d35252da832adfc2d4537ad0afafb9f6830e1f521c51cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c029de004fb404743d2de036459ecf5bdeaf8bab`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Variant98180aee47c9772133d35252da832adfc2d4537ad0afafb9f6830e1f521c51cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Variant98180aee47c9772133d35252da832adfc2d4537ad0afafb9f6830e1f521c51cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveMeasure](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/positivemeasure.md) | 14 | `declaration-track:af112e7dedcc5abcd4c31a10f102c9eb8f5128a857d757c5510a25e8639ed8fe` |
| 2 | `abbrev` | [PositiveL2](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/positivel2.md) | 15 | `declaration-track:2ee053e5a59ae185e1553309b88fbb3b225aa57c0254f2be1ebff5db3852f41d` |
| 3 | `def` | [dilateFunc](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/dilatefunc.md) | 17 | `declaration-track:c2c053a18b4a758a8a5e034758458d3d6c6a53a92123fc0e97d7b9f364281cd0` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/positivemeasure-map-mul.md) | 19 | `result-track:cd87d51fd1ab50af03e21e06fe9a662362c2403d3e69e54038bad8993886e21b` |
| 5 | `theorem` | [positive_mul_quasi](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/positive-mul-quasi.md) | 28 | `result-track:325f27440c9ff55fd1213a97f2df1ed102bd52f413bf2453294712376ee3ea2a` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/dilatefunc-memlp.md) | 34 | `result-track:54e6c8ef3ab5960b19eb28100f39f4f597c5b490f3e1bb227d3ae47cddd3f65e` |
| 7 | `def` | [dilate](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/dilate.md) | 41 | `declaration-track:e1679b539749e4c272bf1f0ad3e23329a53faae61db3a67528343423f4df6282` |
| 8 | `theorem` | [dilate_ae](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/dilate-ae.md) | 44 | `result-track:6d7d564cdb06689321f5788fc34bbf887bcc0f273ef80db62d92ef5e613d73ba` |
| 9 | `theorem` | [norm_sq_integral](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/norm-sq-integral.md) | 48 | `result-track:8a880ca3ebbb50140b98aac7cd52ebfa82c29e95032739b85ebadbb4ea7edca0` |
| 10 | `theorem` | [dilate_norm_sq](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/dilate-norm-sq.md) | 63 | `result-track:e4e364644e8c40ca30f7ccf404059c29799bc1df6d38635482755028da082ae8` |
| 11 | `theorem` | [dilate_norm](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/dilate-norm.md) | 77 | `result-track:67bfb1e70a62a238c6568033ce61f49979b1a7a4546bf74f50259d7b7b9df93d` |
| 12 | `theorem` | [dilate_one](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/dilate-one.md) | 80 | `result-track:43edadc4a4bf2ecc84c26138000721e40fd1a4b4fd8c3be22ed52e93c25c2f3d` |
| 13 | `theorem` | [dilate_comp](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/dilate-comp.md) | 85 | `result-track:d45e6fe8b43f1586d699b2ebe001c448ff7058ff9014c6dd18795787eb81c5aa` |
| 14 | `theorem` | [dilate_inverse](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/dilate-inverse.md) | 97 | `result-track:124c03b875ccbab8fee9284dd85512e28841b7556f63fe33f464a35f1d7c48e4` |
| 15 | `theorem` | [dilate_add](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/dilate-add.md) | 102 | `result-track:ce57d4858631bb423bedd5628eee49f2db5828710505d99ff838c754d391cbfc` |
| 16 | `theorem` | [dilate_smul](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/dilate-smul.md) | 112 | `result-track:7b000ae9bdd1fb7b53e4a51714549a355c0f0e4dcbccad9a75fc7ee2991c6c1f` |
| 17 | `def` | [dilationIsometry](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/dilationisometry.md) | 123 | `declaration-track:66ab757808307de6a8048ee605081a5bb9c65900dd71bd71e45c63ad0845595e` |
| 18 | `def` | [dilationEquiv](../../../../MeasureAndIntegration/PositiveDilationAttempt05.lean/declarations/dilationequiv.md) | 129 | `declaration-track:d1416fee34d0969875e7b20322e9dda9fcc2af7ca473abbbe2b1bc9ad514b9a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec42b94be8e71504ae97df7468b5e669fdbd46f59183ca144accb2da942dec28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Variant98180aee47c9772133d35252da832adfc2d4537ad0afafb9f6830e1f521c51cf.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Variant98180aee47c9772133d35252da832adfc2d4537ad0afafb9f6830e1f521c51cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
