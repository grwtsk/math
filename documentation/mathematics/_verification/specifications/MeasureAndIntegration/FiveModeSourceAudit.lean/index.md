# Verification target: Five Mode Source Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20f926a3845ffd4086fcadc057360a2279921b89",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant6be9af073f9fc00e82d1c113fc27a9bc63f1b4a715f994caf59e4e604b7e6c00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20f926a3845ffd4086fcadc057360a2279921b89`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant6be9af073f9fc00e82d1c113fc27a9bc63f1b4a715f994caf59e4e604b7e6c00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant6be9af073f9fc00e82d1c113fc27a9bc63f1b4a715f994caf59e4e604b7e6c00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [legendre](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/legendre.md) | 20 | `declaration-track:9fc3a41198a9adcb8f2e912521c8eda17270fa052a65df829dbe4df595aee455` |
| 2 | `def` | [mode](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/mode.md) | 28 | `declaration-track:a1ec830e447a6be437a6f12098123dc17316817956952e6575e18a2cdbb9b180` |
| 3 | `def` | [bumpCoefficient](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/bumpcoefficient.md) | 30 | `declaration-track:c5879b97ca00f48b477d6940f02391ddee8eda9e2e39925aac4e0b84025686b9` |
| 4 | `def` | [secondCoefficient](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/secondcoefficient.md) | 31 | `declaration-track:01ea934ac1e4156de82fd3111f327cf4efdb78d5622e5bce028772b60ac7496d` |
| 5 | `def` | [modeWeight](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/modeweight.md) | 32 | `declaration-track:a1b9b55928b1171d029e2848e6c5e58e6dbecd8fcd0f275de56b8fa6d426d6e0` |
| 6 | `def` | [sourceCoefficient](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/sourcecoefficient.md) | 33 | `declaration-track:0b43639dfe73ff25bd8640df51fba34cb0c7b076724de0d1e7d3ce9dd69c8306` |
| 7 | `theorem` | [mode_zero](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/mode-zero.md) | 36 | `result-track:09b10dd7e11f594cb6740a7af365db37000636d2249bd3b9a1c71a287d789b24` |
| 8 | `theorem` | [mode_two](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/mode-two.md) | 37 | `result-track:8b66e21e282eb24d583990777df70375f6681b3dcd1697230f6d10884f177eb5` |
| 9 | `theorem` | [mode_four](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/mode-four.md) | 39 | `result-track:3e3eb51c1bd2cea757fad90900b4bd255e63e03ce4724a7405c88c946f9a0985` |
| 10 | `theorem` | [mode_six](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/mode-six.md) | 41 | `result-track:34f07964413bde4ef879783ad5cd07d3babad047f42b3c71095bbed7cce96c4b` |
| 11 | `theorem` | [mode_eight](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/mode-eight.md) | 43 | `result-track:3fb68169c84b641f3585d47f7ca10c63cb4e2dd46a3b847f1f8cd10c5c239eba` |
| 12 | `theorem` | [mode_even](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/mode-even.md) | 47 | `result-track:ecc9397b5157aa3c0184cc17f4600a07226ccace6622586d7a091e347ce5f7ad` |
| 13 | `theorem` | [bump_expansion](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/bump-expansion.md) | 50 | `result-track:25c4fdd363ee19e6fc18ddf5b8a22f92d481871ec94a0d61b2600bd02d812aae` |
| 14 | `theorem` | [second_expansion](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/second-expansion.md) | 55 | `result-track:535751aa41b08f19f4a01e6569060920c395414d954bbd29ed73bb6dd0df777d` |
| 15 | `theorem` | [source_polynomial_expansion](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/source-polynomial-expansion.md) | 60 | `result-track:a14e41f31ca761770a7bf7469570ffc21daa79a0013ad1204726e4e6f9082cec` |
| 16 | `theorem` | [exact_weighted_normalization](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/exact-weighted-normalization.md) | 67 | `result-track:a441f222796047fa2d01ac2fe89d191c543c9e38c75f0d55838fafa4a3cf41e7` |
| 17 | `def` | [alpha](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/alpha.md) | 75 | `declaration-track:fcf09fdc1de5d610d9e7a3697a8be25410d3373f75ba0ed2fe56069edd8ac29e` |
| 18 | `def` | [normalizedMode](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/normalizedmode.md) | 79 | `declaration-track:640186f863eddf8d193ecccb3503ecbe0cb418ddc492e5c4c5d57c5330cfa5d1` |
| 19 | `theorem` | [modeWeight_pos](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/modeweight-pos.md) | 83 | `result-track:2494eabbdb888e05727973f31c73c4d0f5c12ccf0bcaf0e799477258843f3ad0` |
| 20 | `theorem` | [alpha_square](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/alpha-square.md) | 86 | `result-track:6c1bc16d971eb45c69be6b0484e431b9a1b3a6594f5ba817880ae554f761b645` |
| 21 | `theorem` | [alpha_normalization](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/alpha-normalization.md) | 95 | `result-track:d75a891bdf3ff1c9d57b3bcee55446ed5c5920d70de96c72d37b371a5c5b7a9e` |
| 22 | `theorem` | [sqrt_mode_product](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/sqrt-mode-product.md) | 101 | `result-track:50501f8975462722906caef3266b8a1cc2c959c9f044676a6ac5d69ddd2b96dd` |
| 23 | `theorem` | [actual_source_reconstruction](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/actual-source-reconstruction.md) | 112 | `result-track:64d9b7c17df4a97ee6a999e0be997aba6f77ecaa5394ecda3f9ccad7b1bd8fe0` |
| 24 | `theorem` | [actual_source_norm](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/actual-source-norm.md) | 135 | `result-track:6bbd74136b1695740e93e379cc0e2ebe7dcf197528a8bab520c6c75d8339b3cb` |
| 25 | `theorem` | [reconstructed_support](../../../../MeasureAndIntegration/FiveModeSourceAudit.lean/declarations/reconstructed-support.md) | 140 | `result-track:f4ebbb2ecc356252bc6bb70755d1388b63dfb239943befcebfafdceb81e1a27b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7ed3ce96a7d73412fae6519bb7d01ea87547f1b7aca605bc0ebb728c5c576cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant6be9af073f9fc00e82d1c113fc27a9bc63f1b4a715f994caf59e4e604b7e6c00.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant6be9af073f9fc00e82d1c113fc27a9bc63f1b4a715f994caf59e4e604b7e6c00.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
