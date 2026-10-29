# Verification target: GRWTSK.Analysis.Calculus.CompactPolynomialDerivatives

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fb6bc049950750a9955cbaedc3bd8e13d748cc8",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Calculus/CompactPolynomialDerivatives.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fb6bc049950750a9955cbaedc3bd8e13d748cc8`.

Source path: `GRWTSK/Analysis/Calculus/CompactPolynomialDerivatives.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Calculus/CompactPolynomialDerivatives.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.SignedIntegralSectorBounds`](../../../../MeasureAndIntegration/SignedIntegralSectorBounds.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Function.LocallyIntegrable` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [clippedProfile](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/clippedprofile.md) | 27 | `declaration-track:784ad31996c6522a3070086f5c5cb92b565ba3b0c13a2f6b81310989550514a2` |
| 2 | `theorem` | [clipped_zero_hasDerivAt](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/clipped-zero-hasderivat.md) | 31 | `result-track:4d40bcf2b5c86d534bcbaa6f30ef6483931c8997018c831d7eec203df9999d48` |
| 3 | `theorem` | [clipped_profile_hasDerivAt](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/clipped-profile-hasderivat.md) | 44 | `result-track:0ad387e1fc4505ffd6e2eb38d1c1017b3e35c4af2aeb56f5e5bcaa8543279795` |
| 4 | `def` | [bumpPolynomial](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/bumppolynomial.md) | 78 | `declaration-track:08a670e763f302998e37241310ed506beb9c1f994edf5d73731e925c054a6e61` |
| 5 | `def` | [bumpFirstPolynomial](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/bumpfirstpolynomial.md) | 80 | `declaration-track:53482a08a9531c473f827b41cde9fa312a4c10e3b8a0ca01e3803339a592769a` |
| 6 | `def` | [bumpSecondPolynomial](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/bumpsecondpolynomial.md) | 82 | `declaration-track:ff00188d4e9eda5159d5a47f09a4156b73cf8e1563d38a79639d80198a9eeef7` |
| 7 | `def` | [bumpThirdPolynomial](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/bumpthirdpolynomial.md) | 85 | `declaration-track:3a61b6e472780376b6405ab8c62e2ecee82e4ca515531868e38b2abd72653cc3` |
| 8 | `theorem` | [bump_polynomial_hasDerivAt](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/bump-polynomial-hasderivat.md) | 88 | `result-track:59aef7afb0b604ae6d67a5a4263a441a9c11e7be3db7b5a767926b90065a3aa1` |
| 9 | `theorem` | [bump_first_polynomial_hasDerivAt](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/bump-first-polynomial-hasderivat.md) | 94 | `result-track:587ac08711f63fa539f3b5a541217ea59d7e3c6dda35c05e3128fb777022dd71` |
| 10 | `theorem` | [bump_second_polynomial_hasDerivAt](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/bump-second-polynomial-hasderivat.md) | 101 | `result-track:6341640ed9503ece78595219a545480cb8ff8ac95b0cf037d97c58c3e89cf32c` |
| 11 | `theorem` | [bump_hasDerivAt](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/bump-hasderivat.md) | 109 | `result-track:6305686e6f25942ad2e7871b489e2dd1d89585ed4208a91ae848a5bb12f096ed` |
| 12 | `theorem` | [bump_first_hasDerivAt](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/bump-first-hasderivat.md) | 115 | `result-track:644502666988f057678329de8db08d34316098132f10950b28e5fe42fca72698` |
| 13 | `theorem` | [bump_second_hasDerivAt](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/bump-second-hasderivat.md) | 120 | `result-track:4ae4891688427cbf019b6345ce88d9d490b0ad54bd6446d33e57c152add0ef02` |
| 14 | `theorem` | [bump_deriv](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/bump-deriv.md) | 125 | `result-track:51c183ab6df0ab6b4faddb9621a5bf2373546eae073c38cd665d9932e409c1c8` |
| 15 | `theorem` | [bump_second_deriv](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/bump-second-deriv.md) | 128 | `result-track:8b705ee737680d683b476b966634108f62fe18f28b0328b29695fa574ec06a40` |
| 16 | `theorem` | [bump_continuous](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/bump-continuous.md) | 132 | `result-track:78ff788c9a37ee539f17a02ecb7cc735ae2b6da1b50c7ec54a3fc9c6a5946822` |
| 17 | `theorem` | [bump_second_continuous](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/bump-second-continuous.md) | 135 | `result-track:e0918be23fc72b6b18dd97ac9f934d5534ea67e3c39b694f093e9f4fdd741103` |
| 18 | `def` | [sourceFirst](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/sourcefirst.md) | 140 | `declaration-track:ec2e40827cead698873d3d98be6dcd6ad81f4fd597b33c1e20287f0a600c9062` |
| 19 | `def` | [sourceSecond](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/sourcesecond.md) | 144 | `declaration-track:b162dd1439fb0abbbe9edfd04f2cf475a9b78a3412d64dc59748928b763e6607` |
| 20 | `theorem` | [source_hasDerivAt](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/source-hasderivat.md) | 147 | `result-track:df301ed1351bdc2e35f15bf5bde71bb55d52cb85661f73492d8a99cd5d010671` |
| 21 | `theorem` | [sourceFirst_hasDerivAt](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/sourcefirst-hasderivat.md) | 155 | `result-track:ce1ff766ad55950d50b1fa90eccf1e7ca62385d280babe40182e32191b3c0db9` |
| 22 | `theorem` | [source_deriv](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/source-deriv.md) | 164 | `result-track:6d093cfb829783ca34540fd8324f43617bd8f2ab233e13cb135b2a757f323d90` |
| 23 | `theorem` | [source_second_deriv](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/source-second-deriv.md) | 167 | `result-track:a9af87bb639efef0eca424b6400b8c0f3b58cf5fdd2123375f05b0065ebcf8aa` |
| 24 | `theorem` | [sourceResidual_eq](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/sourceresidual-eq.md) | 171 | `result-track:d29fa05e257884652e2041be04b44727760528bccf8f94a46418fcb164b9c77d` |
| 25 | `theorem` | [sourceResidual_continuous](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/sourceresidual-continuous.md) | 177 | `result-track:fba39689869a5d735327aa5dde6dfdecd9750ced990ff500d208f6f1030cd444` |
| 26 | `theorem` | [scaled_mem_iff](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/scaled-mem-iff.md) | 190 | `result-track:86ef19ebcbee211226d8ea808bb9c2aab29e85268c08ec92362b3097a3c1d7b0` |
| 27 | `def` | [residualPolynomial](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/residualpolynomial.md) | 195 | `declaration-track:44d213d3f8b7b656ee76501b45de33ba24d57e53dda80dd2f1945baef7716af5` |
| 28 | `theorem` | [sourceResidual_eq_ite](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/sourceresidual-eq-ite.md) | 201 | `result-track:feaf8c669e4fcd565efca34ef315efce1040082b6db5440174027ffabdca2cdd` |
| 29 | `theorem` | [source_first_zero_outside](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/source-first-zero-outside.md) | 214 | `result-track:5744c86180f9ded71112ef5b52987039a271be2e34a1daa976f7399e2e535c02` |
| 30 | `theorem` | [source_second_zero_outside](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/source-second-zero-outside.md) | 220 | `result-track:ca39f0cc894ebb16dce2df905570d53e3cd8a5bdb8864b2ae7245d521915bcb2` |
| 31 | `theorem` | [source_first_endpoints_zero](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/source-first-endpoints-zero.md) | 226 | `result-track:2eb87d15dd5de3829e00d754f4f91b49569f11e36778aac3c9895646d4a7ce5d` |
| 32 | `theorem` | [source_second_endpoints_zero](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/source-second-endpoints-zero.md) | 231 | `result-track:1042a14e2c22e6e9a70250e7a3edb43b724019181f1dccac390dd819d3ede4b3` |
| 33 | `theorem` | [sourceResidual_zero_eq](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/sourceresidual-zero-eq.md) | 237 | `result-track:1884dc8ca7632c575848163536eb46aeccd4c903641c82bbdd8628d0dd0d28ef` |
| 34 | `theorem` | [sourceResidual_endpoints_zero](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/sourceresidual-endpoints-zero.md) | 244 | `result-track:49f972b6965ee6b9548f41a2ec0db80d6ffe1ac9624c7236f5e95b16fdaa9b82` |
| 35 | `theorem` | [sourceResidual_zero_outside](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/sourceresidual-zero-outside.md) | 249 | `result-track:406d60da30da87abd987ce1f48abb69fe8cb4cd577306093b77989b5b1dd6620` |
| 36 | `theorem` | [sourceResidual_hasCompactSupport](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/sourceresidual-hascompactsupport.md) | 254 | `result-track:dd073daaa5bc15578163066687a88117406a2bed66a92f7ab855d9109336ad3c` |
| 37 | `theorem` | [sourceResidual_square_integrable](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/declarations/sourceresidual-square-integrable.md) | 259 | `result-track:38b0b2f5becf67bc0320eb380f8cf11b84dfd4b2ec6c65d65b0b257f3d3fad72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c9c01d35bed751b30ddc9f8c7162a01ff3e4c12cbf0ea4208b94b57411332c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Calculus/CompactPolynomialDerivatives.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/CompactPolynomialDerivatives.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
