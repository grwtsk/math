# Verification target: Function Field RHNamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17bdf6d8da2a0388cf4628365bab290ff128cb05",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldRH/Variant5aa765159325a94f5f61c0f6e1f7fb4521f20fed3fb0032cfec97242fff69697.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17bdf6d8da2a0388cf4628365bab290ff128cb05`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldRH/Variant5aa765159325a94f5f61c0f6e1f7fb4521f20fed3fb0032cfec97242fff69697.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldRH/Variant5aa765159325a94f5f61c0f6e1f7fb4521f20fed3fb0032cfec97242fff69697.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Arithmetic.FinitePhaseBitmatrixAlgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Think.Targets.ConjectureLedger` — import line 8; external provider; requires a separately pinned dependency.
- `Think.Targets.Statements` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FunctionFieldRHScope](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/functionfieldrhscope.md) | 26 | `declaration-track:21b29b52dc8c8b8cef1ea377d6b2c932af289e4741792ea2f8391cdb1f7aaa05` |
| 2 | `structure` | [FiniteFieldSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/finitefieldsurface.md) | 31 | `declaration-track:2cc4415a967a95106ab81f0be556f521ba176b724857fa1a5469354a4ecfce83` |
| 3 | `structure` | [FunctionFieldCurveSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/functionfieldcurvesurface.md) | 36 | `declaration-track:53d08d7fb40496b5508d7dd36a5c5fcbc33fa819e8c189333ac53a29ba587336` |
| 4 | `structure` | [FunctionFieldZetaSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/functionfieldzetasurface.md) | 44 | `declaration-track:c4a7def1c4987c93ccd93da858375a7054c829a6f7ef2ab8c06233161f7b7186` |
| 5 | `structure` | [CurveZetaFormulaSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/curvezetaformulasurface.md) | 52 | `declaration-track:464b761e89e5a3d03bb35cae32608d216eeddc3684df78dbb92d43f0358e8f74` |
| 6 | `structure` | [FunctionFieldVarietySurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/functionfieldvarietysurface.md) | 68 | `declaration-track:f9eaf8f2c177a19d09d092995ec13bf3d14bcf85e64495a5287c928aec587c8f` |
| 7 | `structure` | [CohomologicalZetaFormulaSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/cohomologicalzetaformulasurface.md) | 76 | `declaration-track:de1fb76a0d3a0b27b4762c90c3979fa635bd64e2e7aed14199bd107327d7b05d` |
| 8 | `inductive` | [FunctionFieldRHAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/functionfieldrhauthority.md) | 86 | `declaration-track:e598c9798a478c400dfab084fe9be645f1c990b60c16ae68ed67224aa1d8e69e` |
| 9 | `structure` | [FunctionFieldRHBridgeSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/functionfieldrhbridgesurface.md) | 93 | `declaration-track:b2de991189a3e1aadf675cf7cbf9e0788967c87e9819d3200e85a4421e1da5e8` |
| 10 | `structure` | [FunctionFieldRHFormulaBridgeSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/functionfieldrhformulabridgesurface.md) | 102 | `declaration-track:e4a0d16f959a02b43f03e9527ef3ab09477b05987a42d1c771df4616125d650a` |
| 11 | `def` | [exampleFiniteField](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/examplefinitefield.md) | 113 | `declaration-track:2afcb183d3d91e02842ed89b61a2340e3281750cacfecd8154e820ef25e52a7e` |
| 12 | `def` | [exampleCurveSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/examplecurvesurface.md) | 117 | `declaration-track:c09c46d1fbd8b0335a1ec64659bed5625f570fab7067473b0cc7ab5d9f186e1e` |
| 13 | `def` | [exampleFunctionFieldZetaSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/examplefunctionfieldzetasurface.md) | 124 | `declaration-track:8292d76fe2edc70beb7286f6e1fa8a3fe771ada5a5fdf93915426fb870273b42` |
| 14 | `def` | [exampleCurveZetaFormulaSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/examplecurvezetaformulasurface.md) | 131 | `declaration-track:2a313f2deefdf1271704012ad53798a59fb8c0f8661e852ad83b70f201a67ed8` |
| 15 | `def` | [exampleVarietySurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/examplevarietysurface.md) | 148 | `declaration-track:420cfa46eacbfbb9e776f38b3938d2058011dae5321a6bb9963b6c572e7cb33d` |
| 16 | `def` | [exampleCohomologicalZetaFormulaSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/examplecohomologicalzetaformulasurface.md) | 155 | `declaration-track:720266cffb48ec6503d35c0e83a8ee7c58035cdc7c7014d22e97bf11fa876b42` |
| 17 | `def` | [functionFieldRHResidue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/functionfieldrhresidue.md) | 166 | `declaration-track:3f188141a38d0c9db88bb73002bf547e49b283f87ac4cfb806077de01148b335` |
| 18 | `def` | [defaultFunctionFieldRHBridgeSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/defaultfunctionfieldrhbridgesurface.md) | 175 | `declaration-track:e082b04b7d43f4dd751ef04cd20a52b0f4ca7600ebea5915785201a4f0fc7b53` |
| 19 | `def` | [defaultFunctionFieldRHFormulaBridgeSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/defaultfunctionfieldrhformulabridgesurface.md) | 184 | `declaration-track:1f2e808e5c312e47e2493fa7b0cfb6c5787b8ed46009240225aa2ea36b631d61` |
| 20 | `theorem` | [default_function_field_rh_authority_solved_reference](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/default-function-field-rh-authority-solved-reference.md) | 195 | `result-track:1051388ccf7616460c5f56a418461e6ca38b7205c38263bb1f9c6b0cde530a26` |
| 21 | `theorem` | [default_function_field_rh_not_imported](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/default-function-field-rh-not-imported.md) | 200 | `result-track:a7fc268461acd8bba23da53ac39b50bcdb23ef6a6cfc2baa8510a49d28f0bbfc` |
| 22 | `theorem` | [function_field_RH_does_not_settle_classical_RH](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/function-field-rh-does-not-settle-classical-rh.md) | 206 | `result-track:e7444d9650dd3495697f7436d32cd98ecf33f7971009751d794c0f7c899ebd2b` |
| 23 | `theorem` | [finite_bitmatrix_witness_does_not_prove_function_field_RH](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/finite-bitmatrix-witness-does-not-prove-function-field-rh.md) | 210 | `result-track:ff5a6eb65e91ddb8c71c289dfe778e19f4564019e2bf60abfdbc60809c7ddf23` |
| 24 | `theorem` | [finite_bitmatrix_witness_does_not_prove_classical_RH](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/finite-bitmatrix-witness-does-not-prove-classical-rh.md) | 215 | `result-track:4c4c36050e1705b205578751cf9182494f329c88126ef78517fd8295917649eb` |
| 25 | `theorem` | [function_field_rh_residue_is_external_not_imported](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/function-field-rh-residue-is-external-not-imported.md) | 221 | `result-track:147168a2abc9b05d098090ff50f3f79cae1bc87c0eba792bafe12c48d1949dbf` |
| 26 | `theorem` | [classical_rh_statement_remains_boundary](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/classical-rh-statement-remains-boundary.md) | 226 | `result-track:298e95bdb1a41cbe4506a07b85f06ddacaf18bafd27c9c1188605fe8217cdca5` |
| 27 | `theorem` | [function_field_rh_surface_retains_residue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/function-field-rh-surface-retains-residue.md) | 231 | `result-track:c009c7df75d6319ef972a08f3457752544bdc48b18c9ee980a1200fd2382107b` |
| 28 | `theorem` | [function_field_rh_surface_residue_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/function-field-rh-surface-residue-target.md) | 236 | `result-track:234b2a5a87192549f969e4f50ae25c5e0cac7cfbcc921d0468ac8ec339b51dd4` |
| 29 | `theorem` | [default_curve_zeta_formula_degree_two_genus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/default-curve-zeta-formula-degree-two-genus.md) | 241 | `result-track:286f6f31867e5cdb7c2ce81ef4776195587b62254e97f698a2dd95ee86863755` |
| 30 | `theorem` | [default_curve_zeta_formula_root_count_matches_degree](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/default-curve-zeta-formula-root-count-matches-degree.md) | 246 | `result-track:2670baccd6c7b52a0a7bddd32db355549c8a8fa8efb868fe437ea542e059b037` |
| 31 | `theorem` | [default_curve_zeta_formula_records_sqrt_q_weight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/default-curve-zeta-formula-records-sqrt-q-weight.md) | 251 | `result-track:15d4afca6790bced2d980c83961c037c5359486df2d7cbc4b2d9735df7d5d8f0` |
| 32 | `theorem` | [default_curve_zeta_formula_records_zero_circle](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/default-curve-zeta-formula-records-zero-circle.md) | 256 | `result-track:f62d7652296cd477f640dd254e5d622d1d4fe25bd526661ee40acb29987e1462` |
| 33 | `theorem` | [default_curve_zeta_formula_records_critical_line](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/default-curve-zeta-formula-records-critical-line.md) | 261 | `result-track:ccd7298fd873e54655361302a78898cf8d4a1ce24aff780894c35548ffd9043d` |
| 34 | `theorem` | [default_cohomological_formula_records_weight_condition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/default-cohomological-formula-records-weight-condition.md) | 266 | `result-track:571cc8cb9f46a37accdc40811620b00cf330278ea29357192490e8ef62864f18` |
| 35 | `theorem` | [default_function_field_formula_source_deligne_weil](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/default-function-field-formula-source-deligne-weil.md) | 271 | `result-track:125a51231539bb4525d136e68487e830dbba2664b98c770da23be3914e65bfa5` |
| 36 | `theorem` | [default_function_field_formula_is_external_not_imported](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/default-function-field-formula-is-external-not-imported.md) | 276 | `result-track:a84df1206117bfac0f443693bd551b245c680e638fde9fe4888c9eaf70c40a03` |
| 37 | `theorem` | [function_field_formula_does_not_settle_classical_RH](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/function-field-formula-does-not-settle-classical-rh.md) | 285 | `result-track:882a902e122880b03f2fbafda123d93e545454ff97e76cdebc46daf0142bdca2` |
| 38 | `theorem` | [function_field_formula_not_bitmatrix_proof](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/function-field-formula-not-bitmatrix-proof.md) | 291 | `result-track:c3fcd08e004acd780a421e4263b4e5d00df8a2aea320c25c35740ef6db337234` |
| 39 | `theorem` | [function_field_formula_retains_external_residue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionFieldRHNamespaced.lean/declarations/function-field-formula-retains-external-residue.md) | 296 | `result-track:47bc9d87dce0fe0427a4cfdfd8e4a58fdaf52cfec9c16439b004e99895e3ba61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26c881693923652af097f6d568594f1756e29e19b125dcd8857cd1b443cbd2bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldRH/Variant5aa765159325a94f5f61c0f6e1f7fb4521f20fed3fb0032cfec97242fff69697.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldRH/Variant5aa765159325a94f5f61c0f6e1f7fb4521f20fed3fb0032cfec97242fff69697.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
