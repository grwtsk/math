# Verification target: Source Kapitza Physical Matching

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73bf14c3521fa982614598d52630cac6d98fbb4b",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaPhysicalMatching/Variant9257152f89e7169129f6ec80b251a708f43bebc1bc557d90f990e003ba6e929d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73bf14c3521fa982614598d52630cac6d98fbb4b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaPhysicalMatching/Variant9257152f89e7169129f6ec80b251a708f43bebc1bc557d90f990e003ba6e929d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaPhysicalMatching/Variant9257152f89e7169129f6ec80b251a708f43bebc1bc557d90f990e003ba6e929d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceKapitzaCumulativeMatching` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceKapitzaFiniteFilter` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceKapitzaQuadratureCurvature` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [physicalWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/physicalweight.md) | 33 | `declaration-track:1f175d22b8324085b3cd0712f37af816a73e32adee2c5882c2e2d0158df10501` |
| 2 | `def` | [analyticWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/analyticweight.md) | 38 | `declaration-track:a0844e09aa1ed238419e551cf13017348b5e61a684eb306bf98d104e02fea298` |
| 3 | `theorem` | [physicalWeight_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/physicalweight-one.md) | 41 | `result-track:f70c28908868880e069bae1ec9efeb673aa9468b95266a5bbd435a1d907b5e3a` |
| 4 | `theorem` | [analyticWeight_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/analyticweight-one.md) | 44 | `result-track:120bcb8f99c27ad0361c27767462fd82bb864f6604f5c9afbb95658a7d3c8cf7` |
| 5 | `theorem` | [physicalWeight_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/physicalweight-eq.md) | 47 | `result-track:644cba69c179feb3f3a651afcab5accc8b90866b424226c70be40f987f825e66` |
| 6 | `theorem` | [physical_compensated_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/physical-compensated-eq.md) | 55 | `result-track:5049ad8d7cb06f85386bba0dd52addc192a31ed8cd588305037c7d15b2afb12a` |
| 7 | `def` | [physicalRow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/physicalrow.md) | 64 | `declaration-track:4bc86b743be97be8b41c083fa6c497e1a2f856c6f780253cc14ab0ff63349be6` |
| 8 | `def` | [weightedRow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/weightedrow.md) | 69 | `declaration-track:b4f71780f347b47f5f2d7c786b9a3c9bec4c5b93d0680c80269ca2d3af6e5b8b` |
| 9 | `def` | [physicalResidual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/physicalresidual.md) | 71 | `declaration-track:b23de0ef4c8c91d7a471477a2af943bf484a0e4f211290cb931a4d744ab4d7ec` |
| 10 | `def` | [head](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/head.md) | 74 | `declaration-track:be8aaf75e224bb475bcc24f3254f15ace9f9f0d8bdb0dd047cdacb6de381dc0c` |
| 11 | `def` | [middle](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/middle.md) | 76 | `declaration-track:ebaf5b1e4f2790afaa26c0aa63a851c4ae8871e191bceccbf7a35d06de5509e9` |
| 12 | `def` | [top](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/top.md) | 78 | `declaration-track:718005a55d97550fe9800eb9649b94cfedf580223c027a1914cdbecc7936588d` |
| 13 | `def` | [headCutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/headcutoff.md) | 81 | `declaration-track:240ab2a0ffb5392e44488e18d5d156a3d9cc802d43ecab999178cc03ec8571b5` |
| 14 | `def` | [topCutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/topcutoff.md) | 83 | `declaration-track:c210614e7d17bc9a1328ef44d6bfa8f62464cc7f7fcb9ebe189c5f08d078c5c7` |
| 15 | `theorem` | [physicalResidual_three_strip](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/physicalresidual-three-strip.md) | 85 | `result-track:502a83884c38e4eb4cf4fcabe273b68d1280510385cac18df3bfaa7ce25306d3` |
| 16 | `theorem` | [physicalWeight_zero_above](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/physicalweight-zero-above.md) | 92 | `result-track:b8fb54351d6d7e74b034d6a7bd5d7e9a281dd7e914174800cd03cf38b30f443e` |
| 17 | `theorem` | [physical_cutoff_ge_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/physical-cutoff-ge-two.md) | 96 | `result-track:108d15b63b39f740614e79bd22011c7bb7e993f0116ebf569f2dece8b06aa21d` |
| 18 | `def` | [physicalJ](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/physicalj.md) | 104 | `declaration-track:53d77b686eaf7be8df7227df4fd851133b516a4cf34b11dbf0cfdef788383649` |
| 19 | `theorem` | [physicalResidual_eq_finiteResidual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/physicalresidual-eq-finiteresidual.md) | 108 | `result-track:ded202512b45bc19a218c496e2062789e68d1931245433bbe2d91b027663757a` |
| 20 | `theorem` | [physical_divisor_balance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/physical-divisor-balance.md) | 119 | `result-track:646e977bd392af87e4e6f146024104c8e9474d375e57d59d82747c9e2a49fbb0` |
| 21 | `theorem` | [compensated_eq_physicalJ_sub_residual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/compensated-eq-physicalj-sub-residual.md) | 130 | `result-track:1ed94f33d21fbd04082b8769b9120f8ea708d08d7d65d7dc8050c63609a05b1e` |
| 22 | `def` | [demandAtom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/demandatom.md) | 136 | `declaration-track:62d3c7814091a9e6223042fbb7c11d540b0017f9917a434e17e862a8ce816e9a` |
| 23 | `def` | [supplyAtom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/supplyatom.md) | 138 | `declaration-track:01708f8cf61a0bfd48c6abdb06921574013d6c5deab8ae6cac9b9c21d593fbac` |
| 24 | `def` | [cumulative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/cumulative.md) | 141 | `declaration-track:e5cd5245ae8484c413aeafe17bf9708ec61a9165bbfa7512173b5eecd05de402` |
| 25 | `theorem` | [cumulative_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/cumulative-zero.md) | 143 | `result-track:9b1403a4faae81f97d0b5b775373192d7957b689473503542dfebeb2eef5c304` |
| 26 | `theorem` | [cumulative_monotone](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/cumulative-monotone.md) | 146 | `result-track:065ae2a0decb37096432c790226b358150d4fd4b3df7a2ef2454afc5c6d40f5f` |
| 27 | `theorem` | [demandAtom_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/demandatom-nonneg.md) | 153 | `result-track:7df5f57e223e969568438a604e6779df21b57dd73715657daae67a483def4544` |
| 28 | `theorem` | [supplyAtom_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/supplyatom-nonneg.md) | 161 | `result-track:d0ea6ba9b5217bcc5ed6da6a7197b25020f0082a096fc87aae7173406b4b1a7e` |
| 29 | `theorem` | [demand_total](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/demand-total.md) | 169 | `result-track:c8597a639eb2bab66ed5bc6082436346ccddcc5da73b137f68af4f5ee4d44b12` |
| 30 | `theorem` | [supply_total](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/supply-total.md) | 182 | `result-track:dc5123e0f99c1155eb0649e0a0988e8b9f7d9791c7de819817537fcd4dc3e845` |
| 31 | `theorem` | [physical_matching_return](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/physical-matching-return.md) | 196 | `result-track:0a2a6e9dc1087564d964beeb6b673e4d75ec00f6f03e269a9b31bc1fb871736c` |
| 32 | `theorem` | [estimate_of_physical_residual_budget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaPhysicalMatching.lean/declarations/estimate-of-physical-residual-budget.md) | 224 | `result-track:af0e3eb022d8c3b895ef54e925d216c360e87a6f0abcb74ec53562dc0ca82d46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f945d837fc49d7d76434801fe6200cc1a7a4d6f10101892b587c762353322fcc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaPhysicalMatching/Variant9257152f89e7169129f6ec80b251a708f43bebc1bc557d90f990e003ba6e929d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaPhysicalMatching/Variant9257152f89e7169129f6ec80b251a708f43bebc1bc557d90f990e003ba6e929d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
