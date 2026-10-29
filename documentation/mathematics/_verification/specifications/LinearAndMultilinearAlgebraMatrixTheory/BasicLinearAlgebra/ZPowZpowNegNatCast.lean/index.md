# Verification target: ZPow Zpow Neg Nat Cast

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "094e3e41e29f483d1c675409de43408a326c3c47",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ZPow/Varianta62c9236336104f63d12803ae8a5a8fa17aa649048d060d1d1130cd0a826abdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `094e3e41e29f483d1c675409de43408a326c3c47`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ZPow/Varianta62c9236336104f63d12803ae8a5a8fa17aa649048d060d1d1130cd0a826abdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ZPow/Varianta62c9236336104f63d12803ae8a5a8fa17aa649048d060d1d1130cd0a826abdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/instance.md) | 35 | `declaration-track:c138acd19a28c684bac77a90f1f1d945715927b9f000f739a9a27093ecc08bde` |
| 2 | `theorem` | [inv_pow'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/inv-pow.md) | 41 | `result-track:dda4ee5daab4d96b842cd1b20694643dc31112c41cd8ea66d6c8d0cb51110b88` |
| 3 | `theorem` | [pow_sub'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/pow-sub.md) | 46 | `result-track:4242d2225f8a1c8133d58a5496d80523f79d0be8d6e393250388747e4b6b6e6b` |
| 4 | `theorem` | [pow_inv_comm'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/pow-inv-comm.md) | 52 | `result-track:97043ac986806dd55fac8261f32d9741b3a52b6ad288710698cdb5ff455fb90c` |
| 5 | `theorem` | [one_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/one-zpow.md) | 75 | `result-track:f7c76717585e134545fd0ee71ffe71b77888d997f8a06f87ae79dc854e2d4d3a` |
| 6 | `theorem` | [zero_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zero-zpow.md) | 79 | `result-track:df9fb3a8a42ac28b0473d5f7cba2a855286c1cdfebc299017b2a2b60569da71f` |
| 7 | `theorem` | [zero_zpow_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zero-zpow-eq.md) | 85 | `result-track:dbc4bf15adfe7034a9cffc82529e2de315db847686d5fdb291e9aa6f88850b01` |
| 8 | `theorem` | [inv_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/inv-zpow.md) | 90 | `result-track:0b774ee36ddb231765fb93b53aef951141348eb21cd76cb6a035ffc2e57b644a` |
| 9 | `theorem` | [zpow_neg_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zpow-neg-one.md) | 95 | `result-track:d460bdde2789e9587d90f3035a546ae40c2cca94af94a0f9f198c154c0af6d6e` |
| 10 | `theorem` | [zpow_neg_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zpow-neg-natcast.md) | 100 | `result-track:9f8f911b130397e414afc0b2076c7fb5c9a46281694b7276092f5e0a523303e1` |
| 11 | `theorem` | [_root_.IsUnit.det_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/root-isunit-det-zpow.md) | 105 | `result-track:e39abc8ccbb42d7ea1f425f99beb6d98e74360c4154cefc886d34edb3e244516` |
| 12 | `theorem` | [isUnit_det_zpow_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/isunit-det-zpow-iff.md) | 110 | `result-track:8e7c9a58038d78637ebd05f69743f778753932b786deba8f520af23fbab63ad6` |
| 13 | `theorem` | [zpow_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zpow-neg.md) | 122 | `result-track:13a352fe530c6d8f4e603a6ea089d8cb65d11cbb6a942f9e0910e507afb26028` |
| 14 | `theorem` | [inv_zpow'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/inv-zpow-source-edition-2.md) | 129 | `result-track:ad2260a67f549d031e0d5906338713a3c9c9ca5a35368494db807ddfa64a4f79` |
| 15 | `theorem` | [zpow_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zpow-add-one.md) | 132 | `result-track:47c351b3d4e093724c617fb2f996e78624227e89d08590fe32ff43388978cb61` |
| 16 | `theorem` | [zpow_sub_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zpow-sub-one.md) | 143 | `result-track:40d5301679d749a356ad76cc481d3547c8b6652181e7289c7c38a4c953e2c0c0` |
| 17 | `theorem` | [zpow_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zpow-add.md) | 149 | `result-track:f24bf902192960d1165e0c1adcb8fffe720cb7086523dcdc3347d8bd2777588e` |
| 18 | `theorem` | [zpow_add_of_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zpow-add-of-nonpos.md) | 155 | `result-track:3d0f766fe6fb442fff75d3b9cc3d7190bff0d8d4e5c53f8386163c73cec2c9cf` |
| 19 | `theorem` | [zpow_add_of_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zpow-add-of-nonneg.md) | 163 | `result-track:9a84c5ff4a65b42d6fac4ad41d844858e1c5dae3e833c960d38a986f4f7ec55f` |
| 20 | `theorem` | [zpow_one_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zpow-one-add.md) | 169 | `result-track:a6dfceb843d99881fdc611916df9d4c0cfd5bb22c5ab4d839ecb0f201357be88` |
| 21 | `theorem` | [SemiconjBy.zpow_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/semiconjby-zpow-right.md) | 172 | `result-track:8a299ac190246365a718f37cf40860335f29691008fbfcdf9b35a20c852610f3` |
| 22 | `theorem` | [Commute.zpow_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/commute-zpow-right.md) | 190 | `result-track:928f7631c46a8ac87272c610ce3d187ba76d066ef31b29af45ce4ffeb2f48d85` |
| 23 | `theorem` | [Commute.zpow_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/commute-zpow-left.md) | 197 | `result-track:ac50d5fad3fc814e841c99385d8e27fb8a20965358108dd035cb4f5cddf79305` |
| 24 | `theorem` | [Commute.zpow_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/commute-zpow-zpow.md) | 200 | `result-track:3f1358589ad618ca1cd46b661c8c1e8eeb6e74419df18ca00dfab86cf3af7380` |
| 25 | `theorem` | [Commute.zpow_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/commute-zpow-self.md) | 203 | `result-track:c75fae601f7e2e4d2ad9360bc014020d8c2fb3cd140db8fea730b7ad2114c7b1` |
| 26 | `theorem` | [Commute.self_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/commute-self-zpow.md) | 206 | `result-track:6f110d77d367d3ad14e05d199af2ef05618826678e00d08dece5337f1ac10f0d` |
| 27 | `theorem` | [Commute.zpow_zpow_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/commute-zpow-zpow-self.md) | 209 | `result-track:772454198eab986a65be59d8ee38dd0525c1c0388372e87b6fdf13da3d1f1cdf` |
| 28 | `theorem` | [zpow_add_one_of_ne_neg_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zpow-add-one-of-ne-neg-one.md) | 212 | `result-track:ee195f5c0df4ccc54b2971af1e27cf097536187a7188554734fb369ec6a34a1e` |
| 29 | `theorem` | [zpow_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zpow-mul-source-edition-2.md) | 221 | `result-track:5169bfbe82caf7977bb123de2b22a286f173c5802e5951e8db658627825bf6bd` |
| 30 | `theorem` | [zpow_mul'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zpow-mul.md) | 235 | `result-track:08fa91308548404a26ab101d825cbdaf5535f073c0b8206e273aec3e197c200b` |
| 31 | `theorem` | [coe_units_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/coe-units-zpow.md) | 240 | `result-track:88d056c699a7c053ccb255bc5a66ca54987f5a433f3717cc561252b857d49993` |
| 32 | `theorem` | [zpow_ne_zero_of_isUnit_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zpow-ne-zero-of-isunit-det.md) | 245 | `result-track:561bbe9d83d452c9dd8ef89af133c3ec275e358bf21b1cd12b9433a745bd98ca` |
| 33 | `theorem` | [zpow_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zpow-sub.md) | 252 | `result-track:8495bc0341b6e964bf8fb1a4cc002af1b074696e091aac1e487b7c956b0ccb47` |
| 34 | `theorem` | [Commute.mul_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/commute-mul-zpow.md) | 255 | `result-track:2caa584783767cefb5a049aa8dbf303421b32f08884b12004cdb7cfea74afa65` |
| 35 | `theorem` | [zpow_neg_mul_zpow_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/zpow-neg-mul-zpow-self.md) | 261 | `result-track:95e9aa8d65d0f4983d02a78f33cc1803ffad44d68e8492364ac25a65c6f56eb3` |
| 36 | `theorem` | [one_div_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/one-div-pow.md) | 264 | `result-track:72761e1f058f855491b6a26285aca93269a7ddbe8e91f15cbbcfaacd643ff071` |
| 37 | `theorem` | [one_div_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/one-div-zpow.md) | 266 | `result-track:5dfd9b690a1e5430af70bb848700916d5e5362609d87ed538a3aa2735956028e` |
| 38 | `theorem` | [transpose_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/transpose-zpow.md) | 269 | `result-track:03ce665260cf20a64524c65aa80308f3b4129ffc41acd4c99db1e31bd7931105` |
| 39 | `theorem` | [conjTranspose_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/conjtranspose-zpow.md) | 274 | `result-track:3b2cefe0fd86c571ab5027353f510c539782a499d327b5b57ed180ef2966c8c4` |
| 40 | `theorem` | [IsSymm.zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowZpowNegNatCast.lean/declarations/issymm-zpow.md) | 278 | `result-track:5c44e6cc1cf04d36fec7e9d60865aaf12e3616b89f57c673a358cb3e6f1143cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a22f7996ebe466afa065f64b059469644913bc2cac5c05deafe6f5ae4fbd63b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ZPow/Varianta62c9236336104f63d12803ae8a5a8fa17aa649048d060d1d1130cd0a826abdf.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ZPow/Varianta62c9236336104f63d12803ae8a5a8fa17aa649048d060d1d1130cd0a826abdf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
