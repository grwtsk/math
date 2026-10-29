# Verification target: Pochhammer Asc Pochhammer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b40d6ba03337af3d8bc06974ed560d7c629dcb73",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant887a253d2b2e54f2c1c38f24167bd6ea058ed127ac59d7ed41817ccdafdcf3f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b40d6ba03337af3d8bc06974ed560d7c629dcb73`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant887a253d2b2e54f2c1c38f24167bd6ea058ed127ac59d7ed41817ccdafdcf3f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Pochhammer/Variant887a253d2b2e54f2c1c38f24167bd6ea058ed127ac59d7ed41817ccdafdcf3f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Algebra` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ascPochhammer](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer.md) | 48 | `declaration-track:b4dc279bf898907151455da6d0a8611f2758fbc1a9b43024d780f03f5639cbd9` |
| 2 | `theorem` | [ascPochhammer_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-zero.md) | 53 | `result-track:1916e40578f9ce193f6d3711c7df0264eedf5d781de239436432e801a4f46027` |
| 3 | `theorem` | [ascPochhammer_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-one.md) | 57 | `result-track:bba4d747966cd2c6de5fa78d8ad0836ae1062066b1efb9eb105c320fbd9fb871` |
| 4 | `theorem` | [ascPochhammer_succ_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-succ-left.md) | 59 | `result-track:c7d9c06b1f93a8369b98253e3332f7ea5ea83f7c51030879bc316b670880220f` |
| 5 | `theorem` | [monic_ascPochhammer](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/monic-ascpochhammer.md) | 63 | `result-track:cb269e21bc7cbde483581b3ff1171a2ee0df4e55257734463a396124a45f7847` |
| 6 | `theorem` | [ascPochhammer_map](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-map.md) | 77 | `result-track:15c70fae24fff9f8eb69a8c7a76e90b6738c88d9bb88c2a6d1663390091045e8` |
| 7 | `theorem` | [ascPochhammer_eval₂](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-eval.md) | 83 | `result-track:86647a1af1f567d68e99c3198252bd52368c24f8388698b15475fc63da56646b` |
| 8 | `theorem` | [ascPochhammer_eval_comp](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-eval-comp.md) | 88 | `result-track:8885303cdfcb68578eaa552755829362e79a02edfb34cfaf25b0214f1fe7c180` |
| 9 | `theorem` | [ascPochhammer_eval_cast](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-eval-cast.md) | 97 | `result-track:8b1c2d4dbbbbd72ab371cd8984b2e628bb6207844a972c84a4369090c813bc2e` |
| 10 | `theorem` | [ascPochhammer_eval_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-eval-zero.md) | 102 | `result-track:efed02cff4585f0e73e05abb21e42a62024c974f455942683d9d5fc0c73a53c9` |
| 11 | `theorem` | [ascPochhammer_zero_eval_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-zero-eval-zero.md) | 107 | `result-track:fdeaadec3f5bae04d639a6724e6d9cfe41668b178e6a721267f6903fa6cddae3` |
| 12 | `theorem` | [ascPochhammer_ne_zero_eval_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-ne-zero-eval-zero.md) | 110 | `result-track:dfb7049588e61892f7673633c41a426cb5d61be4054c910528c4f20143c4696b` |
| 13 | `theorem` | [ascPochhammer_succ_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-succ-right.md) | 113 | `result-track:8847bd0b6c6c070c11f55ac61f20144dd26c447380a16e37170c03f31ae3d696` |
| 14 | `theorem` | [ascPochhammer_succ_eval](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-succ-eval.md) | 126 | `result-track:7f6321189783970f32c38fe7ef507f419b7a8e537dc0e0de1f41b381d5a4b6f0` |
| 15 | `theorem` | [ascPochhammer_succ_comp_X_add_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-succ-comp-x-add-one.md) | 131 | `result-track:aec9fa1b37bf6b2b0984896d0011181eb8cbc8f520433c4d7d341c26ab421afe` |
| 16 | `theorem` | [ascPochhammer_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-mul.md) | 142 | `result-track:9e1bc305be9881bdfd6c74d7a3fbccc1640b0634d476c246cf779fe748cb1a09` |
| 17 | `theorem` | [ascPochhammer_nat_eq_ascFactorial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-nat-eq-ascfactorial.md) | 149 | `result-track:b90a4b0c09877864900ae609288262dbe90a2b40f2b41d3f42d5c4bbeb0c28ba` |
| 18 | `theorem` | [ascPochhammer_nat_eq_natCast_ascFactorial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-nat-eq-natcast-ascfactorial.md) | 156 | `result-track:182a84b35dcb8048cd4d67829b84ddd6323822755a5706a17973494080cc005f` |
| 19 | `theorem` | [ascPochhammer_nat_eq_descFactorial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-nat-eq-descfactorial.md) | 161 | `result-track:705bea9028829a67ea64a073348b46dd84aec2cf2466b39d0f8148cf247b0b57` |
| 20 | `theorem` | [ascPochhammer_nat_eq_natCast_descFactorial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-nat-eq-natcast-descfactorial.md) | 165 | `result-track:9a20e4353741e204cfa9e3ad406bc067856b6b82dd4db5d338bc0d1c47f6b208` |
| 21 | `theorem` | [ascPochhammer_natDegree](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-natdegree.md) | 171 | `result-track:117440cb7db5cfa2bb471f07b595f30dbade5617782bf65fefde14816a4d7513` |
| 22 | `theorem` | [ascPochhammer_pos](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-pos.md) | 188 | `result-track:51a85d0bf3fe6cedf0818d8c086b0ff55d3a4da73b42120b84ad7fc67a0d5985` |
| 23 | `theorem` | [ascPochhammer_eval_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-eval-one.md) | 207 | `result-track:a9fcb161b79d4813d77b43b42fddafc0440c8884c64336804f41f05a9b7c7839` |
| 24 | `theorem` | [factorial_mul_ascPochhammer](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/factorial-mul-ascpochhammer.md) | 211 | `result-track:6d42490becc77cba672d79942a0da591f5fc7dabd893ad87eaf6720dd4a2fb4f` |
| 25 | `theorem` | [ascPochhammer_nat_eval_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-nat-eval-succ.md) | 215 | `result-track:536c9dec75d0c35882f0576660e8a66d7c8007b65fa7f37aa3c2186778f8f8b7` |
| 26 | `theorem` | [ascPochhammer_eval_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-eval-succ.md) | 223 | `result-track:6c18a2edf16491b0761c0dc3c87de28853e6d03b23441595a7608be9ba2cfdae` |
| 27 | `def` | [descPochhammer](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer.md) | 237 | `declaration-track:4835f8bc6aa9af90f3fcf570af53f008a8118fb04b5e05c5b42a0cdd4d7aa034` |
| 28 | `theorem` | [descPochhammer_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-zero.md) | 242 | `result-track:ddc12135a24592ba62a39e799f414b8f7e9a39ced6f5608de45fad50b67b71a0` |
| 29 | `theorem` | [descPochhammer_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-one.md) | 246 | `result-track:853495cd6cab09c854fa3296d6f4d084685653fcf2350119ec32ae3ac10cdcdd` |
| 30 | `theorem` | [descPochhammer_succ_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-succ-left.md) | 248 | `result-track:2511a35a2f9af18d14e197b392a630346618a7a76b9aad1e08658fcc4f4576d8` |
| 31 | `theorem` | [monic_descPochhammer](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/monic-descpochhammer.md) | 252 | `result-track:c41c4dc099b7f7b777324dd34390295eb9593da48dc0ef02628bf0aeeba1eeb5` |
| 32 | `theorem` | [descPochhammer_map](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-map.md) | 266 | `result-track:d3a9bbffd92466c242d73fb7fcf4dfbc50a83dea0cc50d7101cb1589b83d02c1` |
| 33 | `theorem` | [descPochhammer_eval_cast](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-eval-cast.md) | 274 | `result-track:8324b7c2569bd10c8c854d35eb2e489ec4ca32255166fb53452ffdcc59a6f556` |
| 34 | `theorem` | [descPochhammer_eval_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-eval-zero.md) | 279 | `result-track:df441d16173f88d3e4ceeb5aa3af5408d4683968eadbc64a38dab5fc9b5a8d6f` |
| 35 | `theorem` | [descPochhammer_zero_eval_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-zero-eval-zero.md) | 285 | `result-track:d6c3955a64a7987ea3787fd133ef623195262a10ed5c250464361ba7a7d0df2f` |
| 36 | `theorem` | [descPochhammer_ne_zero_eval_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-ne-zero-eval-zero.md) | 288 | `result-track:28034baf093452e9657d738f409ce385bf61e61721e0517a6534855ee5a4eb5a` |
| 37 | `theorem` | [descPochhammer_succ_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-succ-right.md) | 291 | `result-track:dde492365f54e760f56393314f57cec1d58987d422507bf3788f50452079329c` |
| 38 | `theorem` | [descPochhammer_natDegree](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-natdegree.md) | 306 | `result-track:90c72e042cd23c6a1dfe56411b1f5117af8f0bfe96eef0b1cac360b33ef3c359` |
| 39 | `theorem` | [descPochhammer_succ_eval](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-succ-eval.md) | 317 | `result-track:2055acb87dbe749b4d3d9bd004f7737d10698654ca0248779ce8252341b08a64` |
| 40 | `theorem` | [descPochhammer_succ_comp_X_sub_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-succ-comp-x-sub-one.md) | 322 | `result-track:dcf5115a85b99ddd84b20d6f8b846a13af190052a4c1069eef8d193cd8685f9d` |
| 41 | `theorem` | [descPochhammer_eq_ascPochhammer](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-eq-ascpochhammer.md) | 332 | `result-track:c514d1cb017ffe640fe621399b220a414d60ceaaca12559dd71d7e4fe1f1eaf0` |
| 42 | `theorem` | [descPochhammer_eval_eq_ascPochhammer](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-eval-eq-ascpochhammer.md) | 340 | `result-track:a00fc672f3ce1342cd459141d01172fb05c6f9100af86fdf62a8fc421d22533e` |
| 43 | `theorem` | [descPochhammer_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-mul.md) | 350 | `result-track:f0648f8bef7937a801e4a803bf13e447b98b4029204aedc99c03a93588af4b01` |
| 44 | `theorem` | [ascPochhammer_eval_neg_eq_descPochhammer](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-eval-neg-eq-descpochhammer.md) | 357 | `result-track:fc26dcd55d2837f45bdfe8349b947493337653ef4e3bfebcdb6151533d9e7b71` |
| 45 | `theorem` | [descPochhammer_eval_eq_descFactorial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-eval-eq-descfactorial.md) | 369 | `result-track:9f5f1e4100e2d6c94a52174e841655abd885e16c9f997a9073993e5c96110f10` |
| 46 | `theorem` | [descPochhammer_int_eq_ascFactorial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-int-eq-ascfactorial.md) | 380 | `result-track:10e0abc83e5edea493663aac97ce9e88aded0023192beeb502e6304a6c083dbb` |
| 47 | `theorem` | [ascPochhammer_eval_neg_coe_nat_of_lt](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-eval-neg-coe-nat-of-lt.md) | 388 | `result-track:0bf84f472afd9b862f1e17fab0334080b995eeb3cadc759e8193bc7e04c89a69` |
| 48 | `theorem` | [ascPochhammer_eval_eq_zero_iff](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/ascpochhammer-eval-eq-zero-iff.md) | 402 | `result-track:fc16501d7e29224563a1c9cc06b4fd8c0feb3e26f0a4e8e16f40b4351cd87648` |
| 49 | `theorem` | [descPochhammer_eval_coe_nat_of_lt](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-eval-coe-nat-of-lt.md) | 420 | `result-track:61619d9ff428b26fc4993006e928c392920695b129aef5e3f6b279c65c4b7b47` |
| 50 | `lemma` | [descPochhammer_eval_eq_prod_range](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-eval-eq-prod-range.md) | 426 | `result-track:c03b03f628efad85937ab5b7fdcdc4588a81dc134fdda7d3443988eb4a0e4b37` |
| 51 | `theorem` | [descPochhammer_pos](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-pos.md) | 439 | `result-track:78196320beea521cf22af71b8c02a29f90b99d750e468b377c01ad8685e9fb5c` |
| 52 | `theorem` | [descPochhammer_nonneg](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/descpochhammer-nonneg.md) | 446 | `result-track:d4c6b9ec84ac9733239729fb510935a63a6a463564a22bef2c188cc954c2e114` |
| 53 | `theorem` | [pow_le_descPochhammer_eval](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/pow-le-descpochhammer-eval.md) | 455 | `result-track:3d056f321721c1da2114d69cc28fc57647b0696edc97016c98802fe8618a2e9f` |
| 54 | `theorem` | [monotoneOn_descPochhammer_eval](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerAscPochhammer.lean/declarations/monotoneon-descpochhammer-eval.md) | 467 | `result-track:7454633b5ca7c6697866c5bdcfbe29eb2432d20df4e3ec8e8ffcd11b112d932b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a7821f2829008efb6a037579a911180cf4caaa4ce920488b9ff4537a0e99cf7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant887a253d2b2e54f2c1c38f24167bd6ea058ed127ac59d7ed41817ccdafdcf3f3.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Pochhammer/Variant887a253d2b2e54f2c1c38f24167bd6ea058ed127ac59d7ed41817ccdafdcf3f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
