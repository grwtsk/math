# Verification target: Source Kapitza Storage Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50432f5bb6f6b72e4835ccf5fa05eeea642501fe",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50432f5bb6f6b72e4835ccf5fa05eeea642501fe`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [storage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/storage.md) | 34 | `declaration-track:7e40193911bb68137e60c54efa6ee4f5272e5c8403bd6dc0c46df1c2d79eea99` |
| 2 | `def` | [initialStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/initialstorage.md) | 37 | `declaration-track:391271541ffadb44b38dc4e417e7c8a724bf242c6a343a423d82118eb40e3b84` |
| 3 | `theorem` | [drift_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/drift-identity.md) | 40 | `result-track:92b68d70d2526131954d4b74ac579e1637723d65e7ab7c5afb23bacd8847f2f9` |
| 4 | `theorem` | [hasDerivAt_storage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/hasderivat-storage.md) | 47 | `result-track:3b091562da5371283c1102240f2002b2e2eedc39a8ac88b2222c51b8ba7cdb6a` |
| 5 | `theorem` | [hasDerivAt_weight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/hasderivat-weight.md) | 56 | `result-track:3a10462d30456fd53ec645c9104920dd165f897805d2c22fd160abc88511014d` |
| 6 | `theorem` | [corrector_cancellation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/corrector-cancellation.md) | 63 | `result-track:a3305006c1dd1e49fd2ec78eeee5df241dd509dbd129ff2de24e190a46947241` |
| 7 | `theorem` | [hasDerivAt_corrector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/hasderivat-corrector.md) | 69 | `result-track:91b3d7112e0beeb61c9606ed6ff70b468b69cec74471e637e4ff737bc31c3d1a` |
| 8 | `theorem` | [jump_continuous_corrector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/jump-continuous-corrector.md) | 79 | `result-track:f9fd8ef1538d86e5dc1492c248ad8744e87bc8d08c2d5f02863f6f62ee6b724c` |
| 9 | `theorem` | [jump_jumping_corrector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/jump-jumping-corrector.md) | 85 | `result-track:625d1b7324f0e8bcce8e5f04c7dac9abf304a16f21466b24655fb82eeabc3c4a` |
| 10 | `theorem` | [storage_endpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/storage-endpoint.md) | 92 | `result-track:9596a127fa2a0b3a7c1481319f86740838df32b909f443c71f73f43372dde906` |
| 11 | `theorem` | [storage_complete_square](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/storage-complete-square.md) | 95 | `result-track:56da3e65388d9f7d8b732fead0ee5a90bba0affcc17177f4a03f9ee7e4514f02` |
| 12 | `theorem` | [initialStorage_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/initialstorage-reconstruction.md) | 101 | `result-track:7f9d20759d1b87dde81638810bff1aefbafa9d71779019fdd0e09ff0f800f44b` |
| 13 | `theorem` | [initialStorage_abs_sub_four](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/initialstorage-abs-sub-four.md) | 107 | `result-track:e145b8ac42dc043eed96b036d23d5b919443ab83846bf6ab28bd6fed9ca152a1` |
| 14 | `theorem` | [initialStorage_abs_sub_four_linear](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/initialstorage-abs-sub-four-linear.md) | 128 | `result-track:bc04a030b1aabd5b2200d96ddf137099b5fdd61380779c0ba556aca2a0160e7b` |
| 15 | `theorem` | [initialStorage_epsilon](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/initialstorage-epsilon.md) | 136 | `result-track:ceb1d815823aeaad636c250e49b0d9583ef2bca6fd36212993f091e1eaa81fec` |
| 16 | `theorem` | [obstruction_coefficients](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/obstruction-coefficients.md) | 152 | `result-track:044c4c9f6b8f3a0c4935742585b202a230d26ff4546ded2dd12184fe9cd247da` |
| 17 | `theorem` | [obstruction_product](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/obstruction-product.md) | 161 | `result-track:2adfc8ef59d380e1f742ac58bf5eed961b99c241b479dbdfa52a694b64939d6e` |
| 18 | `def` | [quadraticImpulse](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/quadraticimpulse.md) | 170 | `declaration-track:0c0e48a272824c952c72fe21d262897ea512d90c0bdef719188a72865dbae6c3` |
| 19 | `def` | [quadraticMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/quadraticmajorant.md) | 174 | `declaration-track:8ef52398e6e3e9c97c2b32f4c4d4d2c72570e537f7426265462ff39a4fa14a73` |
| 20 | `def` | [quadraticPrimitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/quadraticprimitive.md) | 178 | `declaration-track:da2689c36731154a91c45d9f2c4695bb38b156a8180097c9ad112052dfb8a3b5` |
| 21 | `def` | [quadraticConstant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/quadraticconstant.md) | 182 | `declaration-track:625a68553148a5413f75ae52234de7fa17637f1c7889da3ca55681b42306b1cf` |
| 22 | `theorem` | [quadraticImpulse_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/quadraticimpulse-nonneg.md) | 184 | `result-track:9726ed7cc6b60f231df07d27b0f43da2bc03ec75a32e9140b791f6ecde24f5be` |
| 23 | `theorem` | [quadraticImpulse_le_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/quadraticimpulse-le-log.md) | 189 | `result-track:4fc096af594eefc21f539beb61af69c8bd3a047595279899a4dc6dad930f5353` |
| 24 | `theorem` | [log_atom_le_quadraticMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/log-atom-le-quadraticmajorant.md) | 196 | `result-track:a1625712a7e9582abe0ac173179c3461793453efce50816681014aa7d6a628f5` |
| 25 | `theorem` | [quadraticPrimitive_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/quadraticprimitive-hasderivat.md) | 212 | `result-track:ea703dbb3e12c8733142b03faba5b26b990104cb095763d06e3de464b82cf412` |
| 26 | `theorem` | [quadraticPrimitive_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/quadraticprimitive-one.md) | 247 | `result-track:1a133cc8b6a06086d2e6c57342c4c8705b25c451338a0353ad3c58f61342b6b9` |
| 27 | `theorem` | [quadraticPrimitive_nonpos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/quadraticprimitive-nonpos.md) | 251 | `result-track:0e7f07fb87d77be30051915c40304773696502622104ae9868aef040a07e94bb` |
| 28 | `theorem` | [quadraticMajorant_continuousOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/quadraticmajorant-continuouson.md) | 260 | `result-track:130456d31ea1e6f6af7924225e6eeab62cca1fc812fe5b8e6bc7e67ce8d27b59` |
| 29 | `theorem` | [quadraticMajorant_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/quadraticmajorant-integral.md) | 270 | `result-track:76fa8dbb4da5026a7abbe1be364a47cf5465520c326ce7db70e991be5b75b777` |
| 30 | `theorem` | [quadraticMajorant_integral_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/quadraticmajorant-integral-le.md) | 283 | `result-track:88683e709dffc2df66db94d8923d05b4a5c9535ba08e86e9352c6a37791dd5ee` |
| 31 | `theorem` | [quadraticImpulse_sum_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/quadraticimpulse-sum-le.md) | 290 | `result-track:118c0eec6c8669e5c77a3ddbb17039955fc389dae7744d3c83969f096f8a3487` |
| 32 | `theorem` | [quadraticImpulse_closed_cutoff_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageNamespacedEdition1.lean/declarations/quadraticimpulse-closed-cutoff-le.md) | 332 | `result-track:3e0cc09e9046beb89be7f3a82a7e53d23352609e516c4ed8748e5ada9246087c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c006e039c9acff77125f69187ba311f72ac216e55dc351c78d01875ac520d323 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
