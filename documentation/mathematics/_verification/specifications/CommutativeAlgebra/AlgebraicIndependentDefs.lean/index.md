# Verification target: Algebraic Independent Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a90f4397532aadaa77ef85768393f458322fe02b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant606978d77397fea48902845498c852ea62b8afac588d3f718e2890ba89a13174.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a90f4397532aadaa77ef85768393f458322fe02b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant606978d77397fea48902845498c852ea62b8afac588d3f718e2890ba89a13174.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Defs/Variant606978d77397fea48902845498c852ea62b8afac588d3f718e2890ba89a13174.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AlgebraicIndependent](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/algebraicindependent.md) | 50 | `declaration-track:322ba4989a01ebd867a33fe0d4fe063e34c4eb317996d6dbadde20475dcf46d5` |
| 2 | `abbrev` | [AlgebraicIndepOn](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/algebraicindepon.md) | 55 | `declaration-track:675e683c4fde1fae275f1bf15502cec80f49bf4470d1e4e86cea7f49ea993894` |
| 3 | `theorem` | [algebraicIndependent_iff](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/algebraicindependent-iff.md) | 59 | `result-track:06168a3c4103be79631857f625b674b2127398bded3b6c24decbc5bcaa41df5d` |
| 4 | `theorem` | [AlgebraicIndependent.eq_zero_of_aeval_eq_zero](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/algebraicindependent-eq-zero-of-aeval-eq-zero.md) | 64 | `result-track:d9614f69fc670e9d6bcd966ec74bfaa56586ee0e2671f7f507b7a7b5e47a8ab1` |
| 5 | `theorem` | [algebraicIndependent_iff_injective_aeval](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/algebraicindependent-iff-injective-aeval.md) | 68 | `result-track:55916cf2e3e9ad5d3cdab55bac9f6867195992d39d0fb84d0058df4b77eb5c93` |
| 6 | `theorem` | [of_comp](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/of-comp.md) | 74 | `result-track:1d0e89fecb7d8b352072622fb47818ce5459d79b4ea387504cae7262323f7941` |
| 7 | `theorem` | [comp](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/comp.md) | 83 | `result-track:7fd9ad0768d436c8763ddf69cb34a58f7d3d0b3cb51567904d982cf1479b9583` |
| 8 | `theorem` | [coe_range](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/coe-range.md) | 87 | `result-track:d26fdd5c69f7aa1486bed56e08138c6a712f7bc987760881d990559c182fcc0a` |
| 9 | `theorem` | [algebraicIndependent_equiv](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/algebraicindependent-equiv-source-edition-2.md) | 94 | `result-track:c84ee9e606b67bddfea8a237d9bfe2f8b6771b5f63d0a2338a5d1f1fbb7a26ae` |
| 10 | `theorem` | [algebraicIndependent_equiv'](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/algebraicindependent-equiv.md) | 99 | `result-track:978a6ff3eb77b7593447a1652e01697b2fbdffa043928276db9b221ae66d0f2c` |
| 11 | `theorem` | [algebraicIndependent_subtype_range](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/algebraicindependent-subtype-range.md) | 103 | `result-track:c4f028f47b7eaf52f5b62d5b25f3f6e4b80d1444edf0bdc2d41ec61e6babdf46` |
| 12 | `theorem` | [algebraicIndependent_image](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/algebraicindependent-image.md) | 109 | `result-track:1ec8a959e35af28ed7bf622af60ed96dd4372122ef90b4bc23c158a2fa805941` |
| 13 | `theorem` | [mono](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/mono.md) | 115 | `result-track:e9b7077203c91886d043af1eb67f51c138763d4f44bfe56c6516b35d52159970` |
| 14 | `def` | [aevalEquiv](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/aevalequiv.md) | 127 | `declaration-track:5d0fcb23843cd08e38fa2cf503a6298ed3fd247be298e9f7e184233e17f72052` |
| 15 | `theorem` | [algebraMap_aevalEquiv](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/algebramap-aevalequiv.md) | 132 | `result-track:2888029e564b121968fa05687abb2f8bf350a4833e731bd4d2cfb2c2f47d8b47` |
| 16 | `def` | [repr](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/repr.md) | 138 | `declaration-track:d4bc1dc75444d193dce5dc7a450e4ceb9ed17afa60f7c4af56424605e23daf57` |
| 17 | `theorem` | [aeval_repr](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/aeval-repr.md) | 142 | `result-track:7ee99f025a5dba272429bdbbc71fdf89060e93f76812f928a0f6405e57585317` |
| 18 | `theorem` | [aeval_comp_repr](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/aeval-comp-repr.md) | 145 | `result-track:945c8299f5a640c1acdb2a8ac9671663fb6eaee266173df2373ff4a8039fbb84` |
| 19 | `def` | [IsTranscendenceBasis](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/istranscendencebasis.md) | 154 | `declaration-track:6e4a6ec11cae0806e68d85d77eea4e68b2fce934f98bc4d655b2fd4ba4407d63` |
| 20 | `theorem` | [isTranscendenceBasis_iff_maximal](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/istranscendencebasis-iff-maximal.md) | 158 | `result-track:40824b51b3064b7c167e617c1faf28c802959303aa8ba17763900884043499bc` |
| 21 | `theorem` | [isTranscendenceBasis_equiv](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/istranscendencebasis-equiv.md) | 162 | `result-track:75fda4165f31100c5712da8999b65aad0a9afe90b4be28f686f894a128f0d4b5` |
| 22 | `theorem` | [isTranscendenceBasis_equiv'](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/istranscendencebasis-equiv-source-edition-2.md) | 168 | `result-track:e7c3cbcfbc39279d6072f1d41730db75e5693def06af39268954c22252113c6a` |
| 23 | `theorem` | [isTranscendenceBasis_subtype_range](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/istranscendencebasis-subtype-range.md) | 172 | `result-track:bbfacf04b0da05b5674cb0287eee219604842ac7f09205a94a0aa553356b5749` |
| 24 | `theorem` | [isTranscendenceBasis_image](../../../../CommutativeAlgebra/AlgebraicIndependentDefs.lean/declarations/istranscendencebasis-image.md) | 178 | `result-track:0176eee30ab867d049413e070d9c9be68ffd57d2be0dbfd5a8ee91b13fd643ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d0de98122e8f33670f65e06890c241e9f82880af766aa338d5ee1896db1b080 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant606978d77397fea48902845498c852ea62b8afac588d3f718e2890ba89a13174.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Defs/Variant606978d77397fea48902845498c852ea62b8afac588d3f718e2890ba89a13174.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
