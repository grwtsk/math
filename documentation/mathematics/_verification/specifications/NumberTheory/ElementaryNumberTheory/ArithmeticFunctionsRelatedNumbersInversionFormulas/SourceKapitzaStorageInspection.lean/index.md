# Verification target: Source Kapitza Storage Inspection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "165fa8560d2e66a67a03bd9f835e5960864ad04d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bccf80cd93cd426909ab4a17fd2189ee13ee5f599fddd9b4b7368d08e8466964SourceKapitzaSto/Variant8eb6bf3efe1c98a251158641665bb80ad07da780f4abfd13a2f5c29dcc137ae7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `165fa8560d2e66a67a03bd9f835e5960864ad04d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bccf80cd93cd426909ab4a17fd2189ee13ee5f599fddd9b4b7368d08e8466964SourceKapitzaSto/Variant8eb6bf3efe1c98a251158641665bb80ad07da780f4abfd13a2f5c29dcc137ae7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Bccf80cd93cd426909ab4a17fd2189ee13ee5f599fddd9b4b7368d08e8466964SourceKapitzaSto/Variant8eb6bf3efe1c98a251158641665bb80ad07da780f4abfd13a2f5c29dcc137ae7.lean.json)

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
| 1 | `def` | [storage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/storage.md) | 34 | `declaration-track:c0f403311a6b580322e65d24d0779efe46fa6b00dec9cfd4e8fa8ce41630d4b5` |
| 2 | `def` | [initialStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/initialstorage.md) | 37 | `declaration-track:a723583df4fdd9dc5a6bb8ccabc22dbeb45fd71728abf099b7ac711354c02b30` |
| 3 | `theorem` | [drift_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/drift-identity.md) | 40 | `result-track:7a1a30184fe35e61904649e3787c7d3cd23e7835e4a13f16d65bd4d98f75fb37` |
| 4 | `theorem` | [hasDerivAt_storage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/hasderivat-storage.md) | 47 | `result-track:9035423c565f1c4c9bb6b4c00fbff47dfb039fa492c294d0af10b65805d494af` |
| 5 | `theorem` | [hasDerivAt_weight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/hasderivat-weight.md) | 56 | `result-track:8dbadee45ed10bd3f928c08d134ae1d7a84a59b88a6415eb19ab8e8f6ba14406` |
| 6 | `theorem` | [corrector_cancellation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/corrector-cancellation.md) | 63 | `result-track:835adb8177cf9d4e315cfac1e38206d41e6562cdcb6a61180108ef66c79a7962` |
| 7 | `theorem` | [hasDerivAt_corrector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/hasderivat-corrector.md) | 69 | `result-track:27b082862fe7a0404adeaabcdbc29d03c67f688b2c756bae9397959d678c8f7a` |
| 8 | `theorem` | [jump_continuous_corrector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/jump-continuous-corrector.md) | 79 | `result-track:a54b7ce2b3459cdc4281d3710f8c536cc288fdbd4f0f8dac8614329941ca0a0b` |
| 9 | `theorem` | [jump_jumping_corrector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/jump-jumping-corrector.md) | 85 | `result-track:d95ef7dba9d9c06b65dcaab042e28152d5632ae1ff19bb9edd6ca2147f637cc2` |
| 10 | `theorem` | [storage_endpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/storage-endpoint.md) | 92 | `result-track:06bf483af08e5901518fee59ab07aede191de0dce8bda52d3bcee93982ace079` |
| 11 | `theorem` | [storage_complete_square](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/storage-complete-square.md) | 95 | `result-track:08700794aae03382e6e08ae4cf8b619b4b4e7aae00ee1a1a16494f48fb98408e` |
| 12 | `theorem` | [initialStorage_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/initialstorage-reconstruction.md) | 101 | `result-track:c337595fefa8a8aaae40e094296ae54b68d4afcf0a08db73ab47521876d91edd` |
| 13 | `theorem` | [initialStorage_abs_sub_four](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/initialstorage-abs-sub-four.md) | 107 | `result-track:17846853509d089c3044cf926c4a1d5f6d2c45a7265fa8d49bec1bb5ce4fd694` |
| 14 | `theorem` | [initialStorage_abs_sub_four_linear](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/initialstorage-abs-sub-four-linear.md) | 128 | `result-track:aecd66cb35dac97556c772e55fbf54315fb7475a9df3e50dccf11c30ac81fc4f` |
| 15 | `theorem` | [initialStorage_epsilon](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/initialstorage-epsilon.md) | 136 | `result-track:926a3c4d582925178443875af85854ae13ff6e76ba40b789692aa4eefa9cf7cc` |
| 16 | `theorem` | [obstruction_coefficients](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/obstruction-coefficients.md) | 152 | `result-track:36fff48b4c35beaae6056668a2fa37a5fae60a38f3d9bd8a9dc92e2c8902a57d` |
| 17 | `theorem` | [obstruction_product](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/obstruction-product.md) | 161 | `result-track:4537a8d425bb387a3b4b3ccf079f02e342770e6c4ebd4a86322f5ac666005794` |
| 18 | `def` | [quadraticImpulse](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/quadraticimpulse.md) | 170 | `declaration-track:732a205b51eba44c1050a1dceeb1992d2b750f2cc316a2346ee8daca4f0f60e2` |
| 19 | `def` | [quadraticMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/quadraticmajorant.md) | 174 | `declaration-track:dcc201eed2014cdea6eade851fd885254093afbe121e7f1093ffccfd942e3d21` |
| 20 | `def` | [quadraticPrimitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/quadraticprimitive.md) | 178 | `declaration-track:155a6b5a8d9aac7760f384c428e1745459d311bab2bf3ef37a8f6b16ea174a4b` |
| 21 | `def` | [quadraticConstant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/quadraticconstant.md) | 182 | `declaration-track:b19e577b09649d8be636584b7fddf1a84d717629d079c70bbb0adb0275780ac2` |
| 22 | `theorem` | [quadraticImpulse_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/quadraticimpulse-nonneg.md) | 184 | `result-track:f33d5777ccac3c2ca22fd512e63da8a73fef1171de7c523e4e8a3a175f504c6d` |
| 23 | `theorem` | [quadraticImpulse_le_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/quadraticimpulse-le-log.md) | 189 | `result-track:c1c8c61d00e1e9243b983111254c91be4b002485b6bfe9d240611c44bc78fe35` |
| 24 | `theorem` | [log_atom_le_quadraticMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/log-atom-le-quadraticmajorant.md) | 196 | `result-track:b796f2b07c06470a44d2e9d1aa72f9e0e0d4974d013d2091bbbe7485d442ded6` |
| 25 | `theorem` | [quadraticPrimitive_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/quadraticprimitive-hasderivat.md) | 212 | `result-track:35a5bb82f36f05aebfc77ba027e441485e191e106a1915b91976dd2006ac9f00` |
| 26 | `theorem` | [quadraticPrimitive_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/quadraticprimitive-one.md) | 247 | `result-track:152dc626c0e72aceb7a2d907fadf91a6148ae2080b453a3a8d87e6abd579238e` |
| 27 | `theorem` | [quadraticPrimitive_nonpos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/quadraticprimitive-nonpos.md) | 251 | `result-track:1312f312f086a55ef9a2ce56266daaa4385c8289884075fa7932f07e9131928a` |
| 28 | `theorem` | [quadraticMajorant_continuousOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/quadraticmajorant-continuouson.md) | 260 | `result-track:7c1200a7dc4715f6f192b21f0c564bef3c9bad4511e611f6a3aa6856fac4fbee` |
| 29 | `theorem` | [quadraticMajorant_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/quadraticmajorant-integral.md) | 270 | `result-track:474b10b2079a8cbf7eb49f048f56ea07dd1d0c77b8f7d61a5b67ac28010e7b96` |
| 30 | `theorem` | [quadraticMajorant_integral_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/quadraticmajorant-integral-le.md) | 283 | `result-track:3f629405d2f9c233326c39d889154eca1c421780a1ee600e892f775e57cc265a` |
| 31 | `theorem` | [quadraticImpulse_sum_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/quadraticimpulse-sum-le.md) | 290 | `result-track:560612904e1611808b214f2a25be19da423924016e3e4b4e5fa3c6afddf6334c` |
| 32 | `theorem` | [quadraticImpulse_closed_cutoff_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageInspection.lean/declarations/quadraticimpulse-closed-cutoff-le.md) | 332 | `result-track:fc8500fdd14898032a59ed631568b285692d19ba6763569107e7f940cb33db25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c60859c38af45a00140b8e1aec0949e246169d96e54f7eb5c44d27fae6c6376 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bccf80cd93cd426909ab4a17fd2189ee13ee5f599fddd9b4b7368d08e8466964SourceKapitzaSto/Variant8eb6bf3efe1c98a251158641665bb80ad07da780f4abfd13a2f5c29dcc137ae7.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Bccf80cd93cd426909ab4a17fd2189ee13ee5f599fddd9b4b7368d08e8466964SourceKapitzaSto/Variant8eb6bf3efe1c98a251158641665bb80ad07da780f4abfd13a2f5c29dcc137ae7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
