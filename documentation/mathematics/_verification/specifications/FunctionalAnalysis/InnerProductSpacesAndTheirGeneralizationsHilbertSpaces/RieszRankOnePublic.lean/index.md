# Verification target: Riesz Rank One Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1cd9ce90730a5df6a52c5d73e2c5368c8ca8e06",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/RieszRankOne/Variant969300f94011e3aafad2f2f51dfff6455f14fb8314cf4f8d34065e99f0501e78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1cd9ce90730a5df6a52c5d73e2c5368c8ca8e06`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/RieszRankOne/Variant969300f94011e3aafad2f2f51dfff6455f14fb8314cf4f8d34065e99f0501e78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/RieszRankOne/Variant969300f94011e3aafad2f2f51dfff6455f14fb8314cf4f8d34065e99f0501e78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [idempotentResolventFormula](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/idempotentresolventformula.md) | 59 | `declaration-track:a93c7fc1e3ce7db1433a5c4f5fcfb0af115aab8eae9a03374a5345cad9e9c9ad` |
| 2 | `theorem` | [algebraMap_sub_idempotent](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/algebramap-sub-idempotent.md) | 63 | `result-track:f324593b5ab88559849e8518fcfa7a93dae1ded643cfb9c4677a8a657a47f308` |
| 3 | `theorem` | [algebraMap_sub_idempotent_mul_formula](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/algebramap-sub-idempotent-mul-formula.md) | 69 | `result-track:101a9de8a1118dfdcbd5a42ef755927d711bfd1ccdd5523c59a80ffe620c119b` |
| 4 | `theorem` | [formula_mul_algebraMap_sub_idempotent](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/formula-mul-algebramap-sub-idempotent.md) | 87 | `result-track:1d05694d9b3f1d1ba81c149655d5988c0ef9ac646ff8b62f09d8834389e35a7f` |
| 5 | `theorem` | [idempotent_mem_resolventSet](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/idempotent-mem-resolventset.md) | 106 | `result-track:7aa9ad20dedb350df938e975553e1d4b287496859be2014af92498e16d6f3614` |
| 6 | `theorem` | [resolvent_idempotent_eq_formula](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/resolvent-idempotent-eq-formula.md) | 118 | `result-track:777e09e9acb881c1b50e8c099edd75d383ad3a34cc9ec5f58c9e3b414968d99d` |
| 7 | `theorem` | [mem_sphere_one_ne_zero](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/mem-sphere-one-ne-zero.md) | 134 | `result-track:e2a71df1fea0f371b70a8cd4ebbff64947e0dcbb24e00960ad0dfa23f81442a6` |
| 8 | `theorem` | [mem_sphere_one_ne_one](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/mem-sphere-one-ne-one.md) | 142 | `result-track:617b462548995dc15fc99ccf0fedcc9c4b349612c835fb554f17af87efd55ff3` |
| 9 | `def` | [idempotentResolventCircle](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/idempotentresolventcircle.md) | 151 | `declaration-track:6a7185a215198b9985ddfeb8e48d9e0c127038bd83f37dffb9f28d238eaa1863` |
| 10 | `theorem` | [circleIntegral_inv_center_one_eq_zero](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/circleintegral-inv-center-one-eq-zero.md) | 170 | `result-track:fc927e30759cc9536d020e9f565ee14d3193c59e42a24205e322443cec6818cf` |
| 11 | `theorem` | [normalizedCircleIntegral_inv_smul_eq_zero](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/normalizedcircleintegral-inv-smul-eq-zero.md) | 188 | `result-track:a304b309ca26d280d7f364fe13149b37f9ba9f5165683a09462f6630dfd688f0` |
| 12 | `theorem` | [normalizedCircleIntegral_sub_one_inv_smul_eq](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/normalizedcircleintegral-sub-one-inv-smul-eq.md) | 196 | `result-track:13ca1065230da05022d4a2cdc14840e7de00e469238e9aa3a86e6b56d7150949` |
| 13 | `theorem` | [circleRieszCandidate_idempotent_eq](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/circlerieszcandidate-idempotent-eq.md) | 210 | `result-track:d3913e8564a82f0ffbba391729ff9eb2dc4e894c27064a6702ac923d80e29fcc` |
| 14 | `theorem` | [idempotentResolventCircle_candidate_eq](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/idempotentresolventcircle-candidate-eq.md) | 242 | `result-track:aa4b580c29380ba1a1d939195e970037af140f304e03fd524d2489667e64ba07` |
| 15 | `theorem` | [idempotentResolventCircle_isProjection](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/idempotentresolventcircle-isprojection.md) | 250 | `result-track:1df8d8b28da3d352c1c07a1287b51f80923771c00ae202933a8156c7c05c9567` |
| 16 | `def` | [rankOneProjection](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/rankoneprojection.md) | 268 | `declaration-track:00971e7a1dc8b1f18e87614575c3fd55ff477e57a90dfda780804b0eb990629e` |
| 17 | `theorem` | [rankOneProjection_isIdempotent](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/rankoneprojection-isidempotent.md) | 272 | `result-track:44ac177f6b609bd1821c05d2516b25b3ec4584d54ebcfdd470156952287e68de` |
| 18 | `theorem` | [rankOneResolventCircle_candidate_eq](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/rankoneresolventcircle-candidate-eq.md) | 283 | `result-track:709ea5bdf8034a14d876fa10ed4eb5ecd6879126e35381e5cbe7ef12e038da2f` |
| 19 | `theorem` | [rankOneResolventCircle_isProjection](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RieszRankOnePublic.lean/declarations/rankoneresolventcircle-isprojection.md) | 296 | `result-track:b9290d8661527808205dc0d24b4477330cf6028c4eac2a294c8fd6fb25727b32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54012d210b76e499efbfc80ca28515a6ec4a6f71e1dd1ce277c8eb5b3c317914 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/RieszRankOne/Variant969300f94011e3aafad2f2f51dfff6455f14fb8314cf4f8d34065e99f0501e78.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/RieszRankOne/Variant969300f94011e3aafad2f2f51dfff6455f14fb8314cf4f8d34065e99f0501e78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
