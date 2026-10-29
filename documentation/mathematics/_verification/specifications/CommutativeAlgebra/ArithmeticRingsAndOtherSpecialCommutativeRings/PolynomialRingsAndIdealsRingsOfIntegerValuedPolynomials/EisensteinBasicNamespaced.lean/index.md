# Verification target: Eisenstein Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d860baf8ccc6eeee94762c32c8386f1fe3e230b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d860baf8ccc6eeee94762c32c8386f1fe3e230b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Eisenstein.Criterion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.ScaleRoots` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsWeaklyEisensteinAt](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/declarations/isweaklyeisensteinat.md) | 51 | `declaration-track:90186d31012d0dde081b79b00da4bd6d96cbc2af2ca916bef4d7e9744d123e20` |
| 2 | `structure` | [IsEisensteinAt](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/declarations/iseisensteinat.md) | 58 | `declaration-track:f20dac39e4853867f338cb77d3153df4d14ca5600dd491fad63c72320033a7d8` |
| 3 | `theorem` | [map](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/declarations/map.md) | 69 | `result-track:d7a798bd8a10fb23f94cb4a6f43e0f692bd00afbd55d1b7ca1e0a33e4a2b71f6` |
| 4 | `theorem` | [exists_mem_adjoin_mul_eq_pow_natDegree](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/declarations/exists-mem-adjoin-mul-eq-pow-natdegree.md) | 86 | `result-track:99d80512e735b74699213c2d89d9b3a2845a27984ac247f2cff278604b4677f1` |
| 5 | `theorem` | [exists_mem_adjoin_mul_eq_pow_natDegree_le](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/declarations/exists-mem-adjoin-mul-eq-pow-natdegree-le.md) | 113 | `result-track:a7d526e3cc02032ca10fcf1cf708526a98d9e0aae8ff484da2cc5b69979e1a7d` |
| 6 | `theorem` | [pow_natDegree_le_of_root_of_monic_mem](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/declarations/pow-natdegree-le-of-root-of-monic-mem.md) | 129 | `result-track:0ab2d1b97841276dad04439cef3f9eb6a3d7f7ec6cfb7510a4dfda45f9664a38` |
| 7 | `theorem` | [pow_natDegree_le_of_aeval_zero_of_monic_mem_map](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/declarations/pow-natdegree-le-of-aeval-zero-of-monic-mem-map.md) | 142 | `result-track:e21398370efe1c0ab6cc3c9d9c0ae1c2abd859065760b5cb5900d60852320da5` |
| 8 | `theorem` | [scaleRoots.isWeaklyEisensteinAt](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/declarations/scaleroots-isweaklyeisensteinat.md) | 161 | `result-track:2d900a53a3ce54e101ae170ddc21cf454c15e2fa07e29a5161bd08dad4dd9b93` |
| 9 | `theorem` | [dvd_pow_natDegree_of_eval₂_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/declarations/dvd-pow-natdegree-of-eval-eq-zero.md) | 168 | `result-track:c9d21efe904638f474c1bddd34bfa0440517892447ac11c566c3608c63b1f93f` |
| 10 | `theorem` | [dvd_pow_natDegree_of_aeval_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/declarations/dvd-pow-natdegree-of-aeval-eq-zero.md) | 180 | `result-track:1b47b6e85870de43240e652534053ff8d5a2a34bfad460e5286908d5ca38f01f` |
| 11 | `theorem` | [Eisenstein Basic Namespaced](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/declarations/leadingcoeff-notmem.md) | 196 | `result-track:289d0a7414e8f3c90057caaf5080980bbe5e8976a1ed7774484f128eca157a56` |
| 12 | `theorem` | [Eisenstein Basic Namespaced](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/declarations/iseisensteinat-of-mem-of-notmem.md) | 202 | `result-track:b4e16222596d0399654d72d6240f980a25d768324bde940d259eeabdf3a1da09` |
| 13 | `theorem` | [isWeaklyEisensteinAt](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/declarations/isweaklyeisensteinat-source-edition-2.md) | 213 | `result-track:f49951720e58bcba758663dd994182cadcacf18303c9e335e6f2774f25f2b559` |
| 14 | `theorem` | [coeff_mem](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/declarations/coeff-mem.md) | 216 | `result-track:81ed0c4abcfb5c0ef8a010c55529f1f66470d486643ee5874763194f12b9d953` |
| 15 | `theorem` | [irreducible](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/declarations/irreducible.md) | 230 | `result-track:eceb000bbce3e0c35461ed7ee352e25a2ab8fa1bf787f999ec9968fbd2f5e9ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0e98e7c8bf59b1ab081ac5715a90b1f58a30f38578236333852924e8495f719 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
