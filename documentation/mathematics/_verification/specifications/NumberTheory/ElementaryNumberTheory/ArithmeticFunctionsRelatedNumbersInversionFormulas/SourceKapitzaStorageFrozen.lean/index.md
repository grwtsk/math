# Verification target: Source Kapitza Storage Frozen

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a4b3bb35534c9452b589858596c9139e4a3b919",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variantd6071e27a0cd4ca441e8c41e7d008dab8f8eb4586bdd8d93a9d1db4060d9f346.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a4b3bb35534c9452b589858596c9139e4a3b919`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variantd6071e27a0cd4ca441e8c41e7d008dab8f8eb4586bdd8d93a9d1db4060d9f346.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variantd6071e27a0cd4ca441e8c41e7d008dab8f8eb4586bdd8d93a9d1db4060d9f346.lean.json)

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
| 1 | `def` | [storage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/storage.md) | 34 | `declaration-track:ef878e18bdd121c8c57231e2ffb6ad785204b614ac0a6bb5c2b47afdc5ec672e` |
| 2 | `def` | [initialStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/initialstorage.md) | 37 | `declaration-track:61005338de1c8d1e4c430b8a223f5fdc25efc1beaf790b00be268449ee1e8df9` |
| 3 | `theorem` | [drift_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/drift-identity.md) | 40 | `result-track:4020614153ff17aa8cef5dfe907c3b9af4d50f75ff143e652392260d39883a60` |
| 4 | `theorem` | [hasDerivAt_storage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/hasderivat-storage.md) | 47 | `result-track:340c90362e02d766ae6c9564782d1e2019f770f2a92661d35a7a7746b5116377` |
| 5 | `theorem` | [hasDerivAt_weight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/hasderivat-weight.md) | 56 | `result-track:398986908c9c692ceb4fd8c2d337186ebf2197a4c58ad284f3f6ac522b071c26` |
| 6 | `theorem` | [corrector_cancellation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/corrector-cancellation.md) | 63 | `result-track:048a79824cd58ffc105f4d7360e0d7b61cd54481bce656e2d65b9509e198d9e3` |
| 7 | `theorem` | [hasDerivAt_corrector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/hasderivat-corrector.md) | 69 | `result-track:e1bd3b83e0d0b522711a6536007a1f3f7b71229c744f5c09725049dcae989d7f` |
| 8 | `theorem` | [jump_continuous_corrector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/jump-continuous-corrector.md) | 79 | `result-track:6ac471313859ecafd294aa451c42f597175c75aa52a77f93d75b7b96906c5432` |
| 9 | `theorem` | [jump_jumping_corrector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/jump-jumping-corrector.md) | 85 | `result-track:4b2ca27ac386b2652ae1994ee2318f52bc2e7cc65d07e335994009a89b073677` |
| 10 | `theorem` | [storage_endpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/storage-endpoint.md) | 92 | `result-track:0572f557e4d14c7ce2ac7a52d595fcb992ad001ff216d6eda353fa8ad708ecd4` |
| 11 | `theorem` | [storage_complete_square](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/storage-complete-square.md) | 95 | `result-track:3263f6e8f7a621ee8fb3c88d4e6f5b92763c44ab138e94246e72eb7cc6e4951e` |
| 12 | `theorem` | [initialStorage_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/initialstorage-reconstruction.md) | 101 | `result-track:9e76af51b4acdb57b24dbacc7efc3126d9d730dc7d38c55639ec94bfe226c18c` |
| 13 | `theorem` | [initialStorage_abs_sub_four](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/initialstorage-abs-sub-four.md) | 107 | `result-track:e3c52eb81a22267791fe82030dba596d924a0434fe3f098070e8900af8d02e4f` |
| 14 | `theorem` | [initialStorage_abs_sub_four_linear](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/initialstorage-abs-sub-four-linear.md) | 128 | `result-track:2df26abe0fc047844f2d17d56721f05449f1762c1374818dff6d3e1050ff12cd` |
| 15 | `theorem` | [initialStorage_epsilon](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/initialstorage-epsilon.md) | 136 | `result-track:f9b0d6ea6d03b1c1e9009476351685fd82a32e965b32b298ee3cd1ebea14a719` |
| 16 | `theorem` | [obstruction_coefficients](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/obstruction-coefficients.md) | 152 | `result-track:7ba1fedd4fb9b5ecc766a0d807bf63a81cf222c85557b20a865187eafe2b2aba` |
| 17 | `theorem` | [obstruction_product](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/obstruction-product.md) | 161 | `result-track:7ed0b58d53d387947a3ccbe3db7d4a227502fe71ab6699fe16522d3aa12b83e3` |
| 18 | `def` | [quadraticImpulse](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/quadraticimpulse.md) | 170 | `declaration-track:00947ad2d9ec0411eb23b91aa63a3d1901a37f1cca6d85c6ac673953692bcb38` |
| 19 | `def` | [quadraticMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/quadraticmajorant.md) | 174 | `declaration-track:6f0f3155134d4031cfbe7e0111bafba4ee30726c048f8a56e8e6b9ad9933daf8` |
| 20 | `def` | [quadraticPrimitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/quadraticprimitive.md) | 178 | `declaration-track:cadebfa298fa779f77a91b59d697b4087f2062737f3a3ffbc82bafc171e3b99b` |
| 21 | `def` | [quadraticConstant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/quadraticconstant.md) | 182 | `declaration-track:d6b58967bf667990a15c0bb6fd4f73693b612e292a85a254103c6da45ba1125c` |
| 22 | `theorem` | [quadraticImpulse_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/quadraticimpulse-nonneg.md) | 184 | `result-track:1f84b23192a5d705e31b8993b75c35ad3b000f7a37ef68c3f109d8aed3519b7b` |
| 23 | `theorem` | [quadraticImpulse_le_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/quadraticimpulse-le-log.md) | 189 | `result-track:8657a47a5d1bd163a4bf309096d490186c40d4aec88aa21b2da1c90c11c1f25d` |
| 24 | `theorem` | [log_atom_le_quadraticMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/log-atom-le-quadraticmajorant.md) | 196 | `result-track:2788ac4e7a03e3f03d1aa289b975ebe45cadfcad3abd2c109916783f4c4f1ad2` |
| 25 | `theorem` | [quadraticPrimitive_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/quadraticprimitive-hasderivat.md) | 212 | `result-track:84c6ad5c764f1000f4ac57616d3721a491629a2969d1529b68b7d5c8d4b09135` |
| 26 | `theorem` | [quadraticPrimitive_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/quadraticprimitive-one.md) | 244 | `result-track:abe4f6376b16227567890bf081a3874070aec49c8be1f4f7748aee148599b49b` |
| 27 | `theorem` | [quadraticPrimitive_nonpos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaStorageFrozen.lean/declarations/quadraticprimitive-nonpos.md) | 248 | `result-track:5b74fbe56cee966e511426a830ef357ac29ecc6c69f800b03b65c33a698d9ccc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e27aa52cef3fb01b67a8c161fcf03f40a37fca95fca97a943c078751c25bf0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variantd6071e27a0cd4ca441e8c41e7d008dab8f8eb4586bdd8d93a9d1db4060d9f346.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variantd6071e27a0cd4ca441e8c41e7d008dab8f8eb4586bdd8d93a9d1db4060d9f346.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
