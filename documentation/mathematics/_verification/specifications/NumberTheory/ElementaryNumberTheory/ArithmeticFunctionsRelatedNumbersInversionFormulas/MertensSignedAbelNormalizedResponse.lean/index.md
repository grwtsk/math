# Verification target: GRWTSK.NumberTheory.Moebius.MertensSignedAbelNormalizedResponse

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41e7d4e872da780caa4fbd208a04f6c2cca0ecbd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelNormalizedResponse.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelNormalizedResponse.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41e7d4e872da780caa4fbd208a04f6c2cca0ecbd`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensSignedAbelBilinear`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MertensSignedAbelBilinear.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedAbelDepthShiftWeightMass](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelNormalizedResponse.lean/declarations/signedabeldepthshiftweightmass.md) | 21 | `declaration-track:d24bdf7028c1fe041393e2f937c173c4378f72cb07ca89656ed48a2f37572b16` |
| 2 | `theorem` | [signedAbelDepthShiftWeightMass_eq_initialWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelNormalizedResponse.lean/declarations/signedabeldepthshiftweightmass-eq-initialweight.md) | 27 | `result-track:a512046ae6b9a3080c9689c2d53332de49b9cca4708ece3c2f57bdc2402b198e` |
| 3 | `theorem` | [signedAbelDepthShiftWeightMass_le_right_inv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelNormalizedResponse.lean/declarations/signedabeldepthshiftweightmass-le-right-inv.md) | 60 | `result-track:daa57211dbea4890030c9970c26c3d68bff2a76d9e19779a66d4e185d990d404` |
| 4 | `theorem` | [signedAbelDepthShiftResponse_eq_range](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelNormalizedResponse.lean/declarations/signedabeldepthshiftresponse-eq-range.md) | 72 | `result-track:a775017ba7df832e3b711d915ce1729f4d1472e5ba3cbc9ff992b78b3f115b38` |
| 5 | `theorem` | [abs_signedAbelDepthShiftResponse_le_two_mul_right_inv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelNormalizedResponse.lean/declarations/abs-signedabeldepthshiftresponse-le-two-mul-right-inv.md) | 98 | `result-track:e802c7f1fb7525106673142eeca60114a9fd557ecf5056f9c3c80fcd2dfd8d1e` |
| 6 | `def` | [normalizedSignedAbelDepthShiftResponse](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelNormalizedResponse.lean/declarations/normalizedsignedabeldepthshiftresponse.md) | 131 | `declaration-track:721507d9efb4748c13d0855d71200bc919ffc9e615fa56b4c4da3f6051ea8e16` |
| 7 | `theorem` | [abs_normalizedSignedAbelDepthShiftResponse_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelNormalizedResponse.lean/declarations/abs-normalizedsignedabeldepthshiftresponse-le-one.md) | 137 | `result-track:a76e9387cdb3087c7992137d7c6cb84cc316fe99df4102dbc1bf24e63fc58c94` |
| 8 | `theorem` | [signedAbelDepthShiftResponse_eq_normalized](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelNormalizedResponse.lean/declarations/signedabeldepthshiftresponse-eq-normalized.md) | 158 | `result-track:248017d35482552b780d784075e78f5b947e583b8611cb2aa652ed887acddd75` |
| 9 | `theorem` | [weightedMertensDyadicSignedAbelDepthSlice_eq_normalizedCorrelation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelNormalizedResponse.lean/declarations/weightedmertensdyadicsignedabeldepthslice-eq-normalizedcorrelation.md) | 174 | `result-track:3c1e5a273e675c009bba5f26c1840903ba39566191521c623e901808011b778c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6541f881eaff7389ddf18dc2f5a61d277c6375bc98fc9b37ec7938e040ee12ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
