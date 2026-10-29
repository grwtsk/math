# Verification target: Comm Ring

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "528f43681042f50e35f71cbdbb24fa448f017853",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CommRing/Variant295e60a2fe38b7b44b0859e143f312ddc187408085f5e6d0dc3944668c29d09e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `528f43681042f50e35f71cbdbb24fa448f017853`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CommRing/Variant295e60a2fe38b7b44b0859e143f312ddc187408085f5e6d0dc3944668c29d09e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CommRing/Variant295e60a2fe38b7b44b0859e143f312ddc187408085f5e6d0dc3944668c29d09e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Variables` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCommRingMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/instcommringmvpolynomial.md) | 53 | `declaration-track:2154f8c356d85c876a3970ff211155d5bf6dfeed03837c0f2e3073cdc91e7435` |
| 2 | `theorem` | [C_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/c-sub.md) | 59 | `result-track:f10ea64ee9853fae6f603905d4585abcbda6f8d9060fca56f4b2b035e17207d0` |
| 3 | `theorem` | [C_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/c-neg.md) | 63 | `result-track:faff94bc8c701729c22d78468259ddfd2a113213174dd541a7ccb382dbe7bb41` |
| 4 | `theorem` | [coeff_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/coeff-neg.md) | 67 | `result-track:9bd7573c7e65cbd629edc58630a7bb313abf68db7db4345d330081ef503f2b5d` |
| 5 | `theorem` | [coeff_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/coeff-sub.md) | 71 | `result-track:d36f1540fc9c93530c6388667a2957791b3269f8771d5168d3242de54be8847e` |
| 6 | `theorem` | [support_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/support-neg.md) | 75 | `result-track:a2d0f851df4380fcc4c9a4ef4568d84fde19153110acf14df540c7d25ffb4688` |
| 7 | `theorem` | [support_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/support-sub.md) | 78 | `result-track:105fe2be6432b082158d0f4efd0cea33f4e2b98a526267eca7e26cccf22bcf50` |
| 8 | `theorem` | [degrees_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/degrees-neg.md) | 87 | `result-track:4f56d6580a5dbf83682abed1de5e35b44036e7fae49e41cc8dc1ba0cb4b126ae` |
| 9 | `theorem` | [degrees_sub_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/degrees-sub-le.md) | 90 | `result-track:e99ccd9fa0368bbfc9e7d9a1ea1ee420c6b656db06595e8540852a8ee955a739` |
| 10 | `theorem` | [degreeOf_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/degreeof-neg.md) | 101 | `result-track:cfbc26bfa069b13b53a86bab313507d368e8c042236094f8ceb0d0a74d0df57d` |
| 11 | `theorem` | [degreeOf_sub_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/degreeof-sub-le.md) | 104 | `result-track:598455667467d6ce42a18f85fb9eb6096b288f4e52b0401b16e08928c3132337` |
| 12 | `theorem` | [vars_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/vars-neg.md) | 113 | `result-track:d0084b1b7d0a775bf3acddb6116f776b25aa368d240fd4fddb7e9448754f42b1` |
| 13 | `theorem` | [vars_sub_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/vars-sub-subset.md) | 115 | `result-track:c640709cb98cc2594757a69d71abdf1f56c51b67fb002e4a31d1e39376a60cfd` |
| 14 | `theorem` | [vars_sub_of_disjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/vars-sub-of-disjoint.md) | 119 | `result-track:052b29d3b956a6405f7f98a7bce39a4121ab2242e85b9c587e84a1295f7e0fbf` |
| 15 | `theorem` | [eval₂_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/eval-sub.md) | 132 | `result-track:21c9847c36b44b4fefae8a2f521827ddb4f4c5f5353cb4005e0e5005d90fac75` |
| 16 | `theorem` | [eval_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/eval-sub-source-edition-2.md) | 135 | `result-track:590d7d85f2eb8487e160914736b6e90263e71fa056b3a9c0d6ec10a3289f8010` |
| 17 | `theorem` | [eval₂_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/eval-neg-source-edition-2.md) | 139 | `result-track:855a77b2623b3afcbf855f5e4acab7b4dbf19e9e2c6332fe115e67aae3f484ca` |
| 18 | `theorem` | [eval_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/eval-neg.md) | 142 | `result-track:500c1c5a98375186b23ca7e5fcdce2c4d8a19ac83f0e659b2d033765533becf2` |
| 19 | `theorem` | [hom_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/hom-c.md) | 145 | `result-track:00f43a2a9f47591945d6d0d8666dd7db07bd09b561eb91f86061b9f6403cd0b5` |
| 20 | `theorem` | [eval₂Hom_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/eval-hom-x.md) | 151 | `result-track:d36d11050e29935b5efb1d125208426861730c54f1b6655715eadfb0b021aa8a` |
| 21 | `def` | [homEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/homequiv.md) | 166 | `declaration-track:7d7cc68a9cb1080da24eda67e93b389b0568b3bbebde36dfce3bbfd65e655166` |
| 22 | `theorem` | [degreeOf_sub_lt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/degreeof-sub-lt.md) | 176 | `result-track:f908998745972fb8fc1a118fb041f14a88e2203c17a1e1906a3568513746b04a` |
| 23 | `theorem` | [totalDegree_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/totaldegree-neg.md) | 195 | `result-track:192c72f4eb603d386f18f4dc2195070637176fde98bf2b7f9ad8a46e967a1958` |
| 24 | `theorem` | [totalDegree_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/totaldegree-sub.md) | 198 | `result-track:e0234d01b14dd2d5ba0665e5d9bde10e551ebe1ff11acf55f982ce873af30980` |
| 25 | `theorem` | [totalDegree_sub_C_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CommRing.lean/declarations/totaldegree-sub-c-le.md) | 205 | `result-track:d90639a3eb7bd1314688714ea2376b2209b18a1f0300ba31b8d09293172cbcde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6130f1f904c311bc8fcd78e711152a63601ccd3ef1fc57932a32d15cd1ea0bf3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/CommRing/Variant295e60a2fe38b7b44b0859e143f312ddc187408085f5e6d0dc3944668c29d09e.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/CommRing/Variant295e60a2fe38b7b44b0859e143f312ddc187408085f5e6d0dc3944668c29d09e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
