# Verification target: Determinant Examples Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f10be12ab5614fff1bf6e032ed2cd45250c2bab",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DeterminantExamples/Variant5e340fa0d360db2089cf044a720f154eee6c6cd25474059bdc362415123981a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f10be12ab5614fff1bf6e032ed2cd45250c2bab`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DeterminantExamples/Variant5e340fa0d360db2089cf044a720f154eee6c6cd25474059bdc362415123981a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DeterminantExamples/Variant5e340fa0d360db2089cf044a720f154eee6c6cd25474059bdc362415123981a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.Determinant` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exampleSquareMatrix](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/examplesquarematrix.md) | 32 | `declaration-track:ca5db5a44185097f7485e3eaff8d58bb5a2ad39142a8a2726c2aff964ecfce3a` |
| 2 | `def` | [exampleFiniteDeterminantMatrix](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/examplefinitedeterminantmatrix.md) | 41 | `declaration-track:025167f4c012735aa3513e42556c60677ad1029762901cc6e47d3c216ace5e8d` |
| 3 | `def` | [exampleFiniteDeterminantCoefficients](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/examplefinitedeterminantcoefficients.md) | 48 | `declaration-track:4aa6dddbf6c960b7a944152071e32249a5a1cb62e821054d0bf45cdad655a579` |
| 4 | `def` | [exampleFiniteTracePowerSums](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/examplefinitetracepowersums.md) | 55 | `declaration-track:9b9584a427fa5fa5df7a5b20efea608354856287cbe11dbcfe35ce8b7f114633` |
| 5 | `def` | [exampleFinitePayload](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/examplefinitepayload.md) | 62 | `declaration-track:8a9b010bd53b7e7dc21b98b03419be6393766fc7f5458beb86230fe015b6cccb` |
| 6 | `def` | [exampleDeterminantLine](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/exampledeterminantline.md) | 71 | `declaration-track:3330c2675b843f2917202109520f0da2ab8f32a323562a2632f40e692b25652e` |
| 7 | `def` | [exampleTargetDeterminantLine](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/exampletargetdeterminantline.md) | 77 | `declaration-track:0791686bad093b373d1ed01eddbd13bfcc5dea948a683362423563d07bdeb2cc` |
| 8 | `def` | [exampleLineMorphism](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/examplelinemorphism.md) | 83 | `declaration-track:878f60016773b2ed8c14def40f42df94db5c9d0f5bd00cf3cf795eb0ca90324a` |
| 9 | `def` | [exampleZetaRegularizedSymbol](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/examplezetaregularizedsymbol.md) | 90 | `declaration-track:c85ffa9773ecfaa1bca2d171311d7587693fb3ecc2c752b9c45f9f14675bd4bc` |
| 10 | `def` | [exampleFredholmSymbol](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/examplefredholmsymbol.md) | 97 | `declaration-track:7a03f278d2528af7890df93fbb843624a623a9dde1fbae2860f065f584f50b51` |
| 11 | `def` | [exampleTraceLogSymbol](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/exampletracelogsymbol.md) | 104 | `declaration-track:a9ad47ac264b8ca8e9389da44692d41ece1459a44e9c0157a7348240c4f0ed33` |
| 12 | `def` | [exampleAnomalySymbol](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/exampleanomalysymbol.md) | 110 | `declaration-track:0622bb6e63c148674ec77203ad955c3a6a4eba454841c46c1ae2b61d81bcf82e` |
| 13 | `def` | [exampleDeterminantLineAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/exampledeterminantlineauthority.md) | 117 | `declaration-track:3db5204cce3f1a59da15b6f7f18d3decf366e8f377535d7aa97501c27003f64c` |
| 14 | `def` | [exampleDeterminantLineFunctorialityAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/exampledeterminantlinefunctorialityauthority.md) | 123 | `declaration-track:165b60a914ee652583050af4aa594c6427ca5f7b96f956488e1420f4391715f3` |
| 15 | `def` | [exampleZetaRegularizedAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/examplezetaregularizedauthority.md) | 135 | `declaration-track:2759dc679934816cdbd8b2fa9083302060e06022ed6c039dc21d807d5eeff5ed` |
| 16 | `def` | [exampleFredholmConvergenceAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/examplefredholmconvergenceauthority.md) | 145 | `declaration-track:b41c335652ebf5ed9575d361d8912210b493ebeae3427474529dd1b2b2c92376` |
| 17 | `def` | [exampleTraceLogExpansionAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/exampletracelogexpansionauthority.md) | 155 | `declaration-track:f1812d0029fc13558f68259158faeaf18781440faad93a02f5930ae3e0c868ab` |
| 18 | `def` | [exampleAnomalyFormulaAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/exampleanomalyformulaauthority.md) | 165 | `declaration-track:a53df3dda39ce4eb557d25984a31b69c13ae358966b61358bcdc7c7d6f697bb0` |
| 19 | `theorem` | [example_finite_payload_boundary_summary](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/example-finite-payload-boundary-summary.md) | 175 | `result-track:54f2d23a1cfab1d2e3c5ab760c8cf5c589cb52cb92a5d42ac23dd372e7f63267` |
| 20 | `theorem` | [example_determinant_symbol_boundary_summary](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/example-determinant-symbol-boundary-summary.md) | 192 | `result-track:efabfd6a67b2ead9192969fb08e04cf03af05bc149d66b49f4a79370d7494dad` |
| 21 | `theorem` | [example_determinant_line_authorized](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/example-determinant-line-authorized.md) | 212 | `result-track:1200e33de682657f4e3de7fc3bfe225ef9523e440839ba0e3f68195eda79d454` |
| 22 | `theorem` | [example_determinant_line_functoriality_authorized](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/example-determinant-line-functoriality-authorized.md) | 216 | `result-track:1d3d16dd38d11cf49981a0f95ef12e860e0ac4a544637676f6e943b33c0efc8d` |
| 23 | `theorem` | [example_zeta_regularized_determinant_authorized](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/example-zeta-regularized-determinant-authorized.md) | 223 | `result-track:3e24b69255266fd80c83e9a461aa3661bde208443f1799fb9bc4a74883a8994e` |
| 24 | `theorem` | [example_fredholm_determinant_convergence_authorized](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/example-fredholm-determinant-convergence-authorized.md) | 230 | `result-track:549cc5380cffc460328f913505e6600cf58a617e869e66ce24ee2714d3772d24` |
| 25 | `theorem` | [example_trace_log_expansion_authorized](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/example-trace-log-expansion-authorized.md) | 237 | `result-track:ef4e1aadf121f06fd2679ca51320a3f27415d569cf4ff6a4c1c4084a61befc24` |
| 26 | `theorem` | [example_anomaly_formula_authorized](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/example-anomaly-formula-authorized.md) | 244 | `result-track:1c8415b9f30cf83bc0d3a2a0edd72670569e0566ff5ffbf8d03d9a2e75520309` |
| 27 | `def` | [exampleDeterminantLineCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/exampledeterminantlinecertificate.md) | 251 | `declaration-track:b4655f1415187976b04a58a12baf040ffe3130e4d66cffb3f715086f35383c13` |
| 28 | `def` | [exampleDeterminantLineFunctorialityCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/exampledeterminantlinefunctorialitycertificate.md) | 254 | `declaration-track:3b79cad7886f565b085f059799bb78bbce45503a386b7302b2f35b0cc9b4f093` |
| 29 | `def` | [exampleZetaRegularizedDeterminantCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/examplezetaregularizeddeterminantcertificate.md) | 258 | `declaration-track:98d44dd8c812059ad34d82c389ffc303daea61a917d182e88c9358e3da1e8a6b` |
| 30 | `def` | [exampleFredholmConvergenceCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/examplefredholmconvergencecertificate.md) | 262 | `declaration-track:c150d067e3ddf9969d6a10fef16fbfb168f94996049d6c64e34709e3ca6f8599` |
| 31 | `def` | [exampleTraceLogExpansionCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/exampletracelogexpansioncertificate.md) | 266 | `declaration-track:25b7d21d8e2864b508adf8be97f2a68fb33a1052a1e1e86dab4eab9f0711856f` |
| 32 | `def` | [exampleAnomalyFormulaCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeterminantExamplesNamespaced.lean/declarations/exampleanomalyformulacertificate.md) | 270 | `declaration-track:c32b63e29779313267ae75b625bd91aa84abb579e3cb1b0b3a5d844fd984020f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0bd073a49030925977d9170942085b17a02ea56690c9d75f4cb1bb6dce6cfc12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/DeterminantExamples/Variant5e340fa0d360db2089cf044a720f154eee6c6cd25474059bdc362415123981a9.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/DeterminantExamples/Variant5e340fa0d360db2089cf044a720f154eee6c6cd25474059bdc362415123981a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
