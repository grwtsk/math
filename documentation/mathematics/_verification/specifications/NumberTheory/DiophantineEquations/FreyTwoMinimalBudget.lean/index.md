# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoMinimalBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe008b7ca6130fa6daa585401d047bdabcc69831",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoMinimalBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/index.md) · [Full source](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe008b7ca6130fa6daa585401d047bdabcc69831`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoMinimalBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoMinimalBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.C4MinimalScale`](../../../../../CommutativeAlgebra/C4MinimalScale.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoLowDepth`](../../../../../CommutativeAlgebra/FreyTwoLowDepth.lean/index.md) — import line 14; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/instance.md) | 28 | `declaration-track:5ae829403f0293fe26b3e419a7aa89ba6c8934b5f5bca07054776bb024411311` |
| 2 | `theorem` | [shape_odd](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/shape-odd.md) | 31 | `result-track:0b638bc93f531e7fb9e21ae703e5e1d2c83ab55ff51cbac81f777f537c33c46f` |
| 3 | `theorem` | [shape_pos](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/shape-pos.md) | 39 | `result-track:49995f0c54e4bf1bea51dd199ac0c39b4a5ea00d7a2dc2a1caeacc5c1e708831` |
| 4 | `theorem` | [raw_c4_ne_zero](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/raw-c4-ne-zero.md) | 44 | `result-track:4272ab7c51fa9c072101d23e652e087c8a14674d67cdc18680d4531405848975` |
| 5 | `theorem` | [raw_c4_value](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/raw-c4-value.md) | 49 | `result-track:e33ac0fe0ff05e0969d8d17b4b388870362b08e89d16b780d68b99da1491f204` |
| 6 | `theorem` | [raw_c4_exponent](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/raw-c4-exponent.md) | 64 | `result-track:1402683e32b35519a0fa0378d8cc3a35d81f81cb8ac70deda0c34e48ea00dc87` |
| 7 | `theorem` | [integral_scale_at_most_one](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/integral-scale-at-most-one.md) | 71 | `result-track:25a197d7877c0b871099a33e1316cb70fdd0ca5dabb02c3e5fa542c829b43eea` |
| 8 | `theorem` | [minimal_scale_binary](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/minimal-scale-binary.md) | 79 | `result-track:a80a778a088971e4869a2c77eea49264266b316ed304ea3348ba6b5db3166199` |
| 9 | `def` | [minimumExponent](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/minimumexponent.md) | 89 | `declaration-track:1786ccb09c028b610df9400f21f37a8396a68daab74bbfca29f60002d3804539` |
| 10 | `theorem` | [minimumExponent_eq](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/minimumexponent-eq.md) | 93 | `result-track:2fa9adb37a0c84f703cdb7e7701ec323a45fe414d97cdd09b104b9bf9592de6f` |
| 11 | `theorem` | [minimumExponent_nonneg](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/minimumexponent-nonneg.md) | 104 | `result-track:264c3da63a0f858291008c5686f2f8019f256411b34a470fe362cc53bde46516` |
| 12 | `def` | [dyadicCorrection](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/dyadiccorrection.md) | 113 | `declaration-track:02c83997b1ec81045bcc4f06e36b4043859a84698a2fecb019e84ac0ed00f305` |
| 13 | `theorem` | [correction_eq_scale](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/correction-eq-scale.md) | 117 | `result-track:3a69119cce2578949ca270616dc55e9282e62a5c12d22aa780b3b8412a92fd75` |
| 14 | `theorem` | [dyadicCorrection_cases](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/dyadiccorrection-cases.md) | 126 | `result-track:5f6ea63b86ce436808f441a402fbeb756e66f7770e5818c3641a3e2b4be762eb` |
| 15 | `theorem` | [dyadicCorrection_bounds](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/dyadiccorrection-bounds.md) | 132 | `result-track:5f23095fa6930f1cd4901db93c7fd1de8613a4b9cb99f697fe19be446ada153a` |
| 16 | `theorem` | [minimum_two_balance](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/minimum-two-balance.md) | 136 | `result-track:b0d2c521d5cfc01ed51fdc6fae9c20e78215deab0de4c643f6473376e2c42334` |
| 17 | `theorem` | [minimum_two_dichotomy](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/minimum-two-dichotomy.md) | 143 | `result-track:f58737f3e22e7623e9e0d10be1785e229b589a73d99da7443093b750c5119108` |
| 18 | `theorem` | [minimum_two_lower_bound](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/minimum-two-lower-bound.md) | 150 | `result-track:b7b2f5cc11d257cd9684cbf2074a756b20a7ae7f1c42547e632ac4af7f401571` |
| 19 | `theorem` | [minimum_odd_eq_raw](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/minimum-odd-eq-raw.md) | 157 | `result-track:b18242b3982fe7fac419dae7dc15739bbaa0b851078f04cf2eceda5615cee552` |
| 20 | `theorem` | [correction_zero_of_low_depth](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/correction-zero-of-low-depth.md) | 165 | `result-track:2c1546616ef3109311b3e655fe411f21fa450170841b249503e9acf143cb7a93` |
| 21 | `theorem` | [correction_twelve_of_scale_two](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/correction-twelve-of-scale-two.md) | 174 | `result-track:30c962a1a9c898643bfe2195b53afd652ae71fc22d0e3c4e0cad7d7da48bf332` |
| 22 | `theorem` | [correction_twelve_in_first_chamber](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/correction-twelve-in-first-chamber.md) | 180 | `result-track:85363152806cc3a8dea4174a074beaecc8998dae0f2ddfedd56942547f303bde` |
| 23 | `theorem` | [correction_twelve_in_even_chamber](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/correction-twelve-in-even-chamber.md) | 186 | `result-track:6a011c1247f81f623e7b867fed4693b9420c786a247f612c32d888570d541134` |
| 24 | `def` | [modelCorrectionCost](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/modelcorrectioncost.md) | 193 | `declaration-track:f7daaed0d3b5a0ef0cc3ff69b4c8d28e5565798c740626b1ac81212e6abdbfaf` |
| 25 | `theorem` | [modelCorrectionCost_bounds](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/modelcorrectioncost-bounds.md) | 196 | `result-track:e088d66338b8330a0589467e97c3d085763d22cbfc5a3743e93117aef1e0f46e` |
| 26 | `theorem` | [correction_attained](../../../../../NumberTheory/DiophantineEquations/FreyTwoMinimalBudget.lean/declarations/correction-attained.md) | 206 | `result-track:460bd7eef25986c0f95f951c6e86a3640370e05fdf84fd7e587b570f7b22a4b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=384c0f8130bb5903438f7bc74d256e65b0af14ec6af5f22ad2777e0503aed3ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoMinimalBudget.lean","GRWTSK/_verification/specifications/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoMinimalBudget.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
