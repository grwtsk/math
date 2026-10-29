# Verification target: Power Series Derivative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1a24bf97583e3d2d7cbffcaf3d881986a1f0368",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Derivative/Variant64f7b01a0883dade1797297cfd0262bc28b885e554a337b44658d1bf72b586d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1a24bf97583e3d2d7cbffcaf3d881986a1f0368`.

Source path: `GRWTSK/Algebra/Derivative/Variant64f7b01a0883dade1797297cfd0262bc28b885e554a337b44658d1bf72b586d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Derivative/Variant64f7b01a0883dade1797297cfd0262bc28b885e554a337b44658d1bf72b586d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PowerSeries.Trunc` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Inverse` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Derivation.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivativeFun](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivativefun.md) | 39 | `declaration-track:3f1ad64071f4529155ed53aa6dbb7237e71480b977904e7986e3076a4de61d07` |
| 2 | `theorem` | [coeff_derivativeFun](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/coeff-derivativefun.md) | 41 | `result-track:dea423676dbfbc666b45aa727b842cd81f86a347a1c1e1a224d3bce18077784f` |
| 3 | `theorem` | [derivativeFun_coe](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivativefun-coe.md) | 45 | `result-track:decf51391fadde14b1330c32643b64c77e9dd3a5502809acd997214d44193b01` |
| 4 | `theorem` | [derivativeFun_add](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivativefun-add.md) | 49 | `result-track:c42bf268e12cb738764b33e687f79d37e3f68e508a70524b1d989c7ef653a456` |
| 5 | `theorem` | [derivativeFun_C](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivativefun-c.md) | 55 | `result-track:e5f5d6b600e22b2b08531f288cb20b7a4593058436edd733199b7fb87b4a5a6c` |
| 6 | `theorem` | [trunc_derivativeFun](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/trunc-derivativefun.md) | 60 | `result-track:5477183deb55599db1d0dce53365c4fcf8cb4732d1c902ed5f4527a4e9101d14` |
| 7 | `theorem` | [derivativeFun_coe_mul_coe](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivativefun-coe-mul-coe.md) | 71 | `result-track:07dab33d965e3433e246b64011c5be453578b8d9f825ce17bb464fa169441d19` |
| 8 | `theorem` | [derivativeFun_mul](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivativefun-mul.md) | 77 | `result-track:fe3109851a4769d6048e666a2fda2cf0351fcef64f8cd1ec0f19906bd15c80fb` |
| 9 | `theorem` | [derivativeFun_one](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivativefun-one.md) | 87 | `result-track:6b392cc2ad84e10d86b15252bc2ae8735dac3dc25517dc0478e5e96629f3a37d` |
| 10 | `theorem` | [derivativeFun_smul](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivativefun-smul.md) | 90 | `result-track:ead855c58c4514f2a1605e879b57e53fa1b3e9082e872c70c3f3c98540ac22e0` |
| 11 | `def` | [derivative](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivative.md) | 97 | `declaration-track:4b509f41375c975e4afaa9f51b4ad2514b228df04eec68b377dad19a24b1d485` |
| 12 | `theorem` | [derivative_C](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivative-c.md) | 108 | `result-track:b78faff8c1f13d3d959f30a5cb050bb9e105b5352910537863108f72d11844bd` |
| 13 | `theorem` | [coeff_derivative](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/coeff-derivative.md) | 110 | `result-track:1b103dfb14c5ee2c5dd47e07a690132214f2b57901056b9be9af19898f6b862b` |
| 14 | `theorem` | [derivative_coe](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivative-coe.md) | 113 | `result-track:f00b1ad5f77295defa10eb2a735539b50d8d5f4998278144408230c5a4dcda58` |
| 15 | `theorem` | [derivative_X](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivative-x.md) | 115 | `result-track:b432e5e7540b85ccb33ae48f71b49d798c4f3e0a96b8277cc92b6c38fefa507e` |
| 16 | `theorem` | [trunc_derivative](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/trunc-derivative.md) | 123 | `result-track:e0e9253398edb7dff6e32ba19c9a051c9779fb0120be71ed1b13e8eb4060cb39` |
| 17 | `theorem` | [trunc_derivative'](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/trunc-derivative-source-edition-2.md) | 127 | `result-track:f1a461cc2768db4f0f2780118eefa89ce3bebe1c79953b70486e950f6cb383a0` |
| 18 | `theorem` | [derivative.ext](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivative-ext.md) | 142 | `result-track:49077590739661ea1b73d263951e67c29151e963be55666dfe7fa3593d324545` |
| 19 | `theorem` | [derivative_inv](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivative-inv.md) | 153 | `result-track:0daeaccd4ef12fbbdbe0710a19f3abcabd6b12c6c761eae2f37500e5a65bad8d` |
| 20 | `theorem` | [derivative_invOf](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivative-invof.md) | 158 | `result-track:08857400b8c956ce7df119447bfebd59267388499b8b67e377086d4cea6bc95e` |
| 21 | `theorem` | [derivative_inv'](../../../../CommutativeAlgebra/PowerSeriesDerivative.lean/declarations/derivative-inv-source-edition-2.md) | 166 | `result-track:513f166c6b13d26fa7ffa6d4a7756d9de02f892c67a93f73f1ce93fdaf6fb091` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a58ec9880f14046d1cd31bce4a2a676447ee3280b3d1b53153c8b03e0685e0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Derivative/Variant64f7b01a0883dade1797297cfd0262bc28b885e554a337b44658d1bf72b586d7.lean","GRWTSK/_verification/specifications/Algebra/Derivative/Variant64f7b01a0883dade1797297cfd0262bc28b885e554a337b44658d1bf72b586d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
