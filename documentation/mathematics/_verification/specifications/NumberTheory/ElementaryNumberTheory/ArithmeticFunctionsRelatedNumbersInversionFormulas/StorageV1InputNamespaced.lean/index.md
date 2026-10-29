# Verification target: Storage V1 Input Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e41eae77f9f92f4b2f3208f84dbab1264445a6e9",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant2c4432e51d0050e5278d7536ef83759463dab957b10dcbd0e5d7f0e9dd0ddbbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e41eae77f9f92f4b2f3208f84dbab1264445a6e9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant2c4432e51d0050e5278d7536ef83759463dab957b10dcbd0e5d7f0e9dd0ddbbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant2c4432e51d0050e5278d7536ef83759463dab957b10dcbd0e5d7f0e9dd0ddbbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtStorage` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [translationStorage_le_two_norm_sq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/translationstorage-le-two-norm-sq.md) | 36 | `result-track:436c32fe02e0d50850acae05f923ef1f11f27d2ac1a36711637b2a602210c1a6` |
| 2 | `theorem` | [higherStorage_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higherstorage-summable.md) | 44 | `result-track:16df242c02377f40cb858fdee8c118dd25aaf33d03543cdf5f940b94dc91d168` |
| 3 | `def` | [higherStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higherstorage.md) | 53 | `declaration-track:d488cac02b00c9d1f010a9a8727fe743ac349030d73240e94cb6c3239072a942` |
| 4 | `theorem` | [higherStorage_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higherstorage-nonneg.md) | 56 | `result-track:c224c6afb8a56fb659f51248196fed8e9a7047eba260da28f79dd6f7493e0a9b` |
| 5 | `theorem` | [higherStorage_le_two_mass_norm_sq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higherstorage-le-two-mass-norm-sq.md) | 59 | `result-track:e4493690cb28e3b2e24759f0bd01eff9bd632b26f2db54f1330298db5212b9e3` |
| 6 | `theorem` | [higherCorrelation_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/highercorrelation-summable.md) | 70 | `result-track:b5481b13f2a2450010ebfe9ac223aecff813fe6d238d1204c373c39180433c9c` |
| 7 | `def` | [higherCorrelation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/highercorrelation.md) | 79 | `declaration-track:85fc96758a16b73dd3e39f107ffb902531352f31ed3296278966868bb498ef67` |
| 8 | `theorem` | [higher_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higher-reconstruction.md) | 84 | `result-track:ceb571e4ad46eca5a5c03098720a8a5c1abfd124a90bec1488ea481115a966e9` |
| 9 | `def` | [higherSourceStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/highersourcestorage.md) | 98 | `declaration-track:0b5f0add37aae1d9dca2f9b76b8f32a77c38b6b5ec662b6a32879ecd4fe748cb` |
| 10 | `theorem` | [higherSourceStorage_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/highersourcestorage-nonneg.md) | 100 | `result-track:2b25265c268d19ac87f26f5a2d47eb19ffc0428f34690b43288595d56d300ea7` |
| 11 | `theorem` | [higherSourceStorage_le_two_baseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/highersourcestorage-le-two-baseline.md) | 103 | `result-track:e7b0d973e7eeba1977c3632a7bff227489bdac928763e0e28b7ace7f1c2712db` |
| 12 | `def` | [higherAtomCoordinates](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higheratomcoordinates.md) | 110 | `declaration-track:54c703aa8d5967a3413d70e6551396492850c072cf2fba7cdaf8ba7b8e6f8c0b` |
| 13 | `theorem` | [higherAtomCoordinates_injective](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higheratomcoordinates-injective.md) | 113 | `result-track:5a60dc9785fe720caaf925afc5fe8180e0178b46e0da38fa6fa5c4c102d55614` |
| 14 | `theorem` | [prime_of_mem](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/prime-of-mem.md) | 122 | `result-track:d4a3be818e879f08fe4d9893b19cd3279ae83f5bbb765352d48891467e6143d2` |
| 15 | `theorem` | [exponent_of_mem](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/exponent-of-mem.md) | 126 | `result-track:df864249350406b4acc870b83d52b396c1ae53f6cc83525f14778275104ce8c3` |
| 16 | `def` | [higherInventoryIndex](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higherinventoryindex.md) | 131 | `declaration-track:0a2d55e9cc500986e1ccb3bd8a2acaf60037fd7706b6c98107f45096b01680d2` |
| 17 | `def` | [higherAtomInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higheratominventory.md) | 136 | `declaration-track:7010a21469c054aceab3d5729f3fb221881e500007048b79712b4005cc46f950` |
| 18 | `theorem` | [higherInventoryIndex_coordinates](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higherinventoryindex-coordinates.md) | 140 | `result-track:b5d7bddfb230b3200e993436467e1b1f05905141757f44574f253dd73a63c9d9` |
| 19 | `theorem` | [higherCoordinates_mem_inventory_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/highercoordinates-mem-inventory-iff.md) | 149 | `result-track:58ae0cd7a9a2b83813e030d284b4faa170ae8d792506e4407e25081defbadf0b` |
| 20 | `theorem` | [mem_higherAtomInventory_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/mem-higheratominventory-iff.md) | 174 | `result-track:dc4fc66174dc459ea1ddd2d0cd9017bd6e6fdc99249965cda2b81a70584e3624` |
| 21 | `theorem` | [higher_source_coefficient_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higher-source-coefficient-eq.md) | 190 | `result-track:3e7315b7ab3bdc7d9d1b47c0c277054acdc985ff9a5b5ebb66b35bc85f44ac94` |
| 22 | `theorem` | [higher_source_coefficient_zero_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higher-source-coefficient-zero-outside.md) | 200 | `result-track:d854b788d274e921b6aba524b99cea582b50eaf4dac28df889b9f4bf07db90d0` |
| 23 | `theorem` | [higherPrimePowerMoment_eq_atom_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higherprimepowermoment-eq-atom-sum.md) | 209 | `result-track:8f340fa51e9c5de7fce420da7a0fde1a85624798c890861bd211fb5f09c09e31` |
| 24 | `theorem` | [higherPrimePowerMoment_eq_infinite_correlation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higherprimepowermoment-eq-infinite-correlation.md) | 234 | `result-track:5ec9b5995a22fb643be9ebaa5dd6548aba2c501ad6d23beffde7161b054beadd` |
| 25 | `theorem` | [higherPrimePowerMoment_add_storage_eq_baseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higherprimepowermoment-add-storage-eq-baseline.md) | 242 | `result-track:c2964632d0fe028e1e05612bf4c1fba924b419054de10ff18e32870b978f2216` |
| 26 | `theorem` | [higher_storage_atom_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/higher-storage-atom-outside.md) | 250 | `result-track:bb9b325668535ea65872e76f511871445792d0ec0666d8b716524f9c7ea770ee` |
| 27 | `def` | [higherVisibleBaseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/highervisiblebaseline.md) | 262 | `declaration-track:d8e7ada9ea00570985d1949cadd27a74d8e38ef5a935e70f9fe4138a674c281e` |
| 28 | `def` | [higherVisibleStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/highervisiblestorage.md) | 266 | `declaration-track:220a678f2e21bc449c92f36857683def1c8a0b71ca40ab5b59f955fe16875bb5` |
| 29 | `theorem` | [higherVisibleBaseline_le_baseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/highervisiblebaseline-le-baseline.md) | 270 | `result-track:2822c09158b27d7f1b4e0dde1e05ab3be0e0a619ac5fa37207e025fe2784d012` |
| 30 | `theorem` | [higherVisibleStorage_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/highervisiblestorage-nonneg.md) | 274 | `result-track:dd9f317bdccd0f18fb8a35968b5150a05c10ee1bd433febd10d329c7b2f99e1b` |
| 31 | `theorem` | [higherMoment_eq_visible_baseline_sub_storage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/highermoment-eq-visible-baseline-sub-storage.md) | 278 | `result-track:46297cb7c1f6cb0115468925fdc802383d48db78d9a099eb00ad2bb2e48c6253` |
| 32 | `theorem` | [higherSourceStorage_padding](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/highersourcestorage-padding.md) | 289 | `result-track:7a23dd086e93542c3b4b97692933f57611057b3a1e121ab0df54608687952b43` |
| 33 | `theorem` | [residual_firstPrime_storage_balance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV1InputNamespaced.lean/declarations/residual-firstprime-storage-balance.md) | 296 | `result-track:6ea69af1f53aec0b03a783727f89301cd7caaa9e783fe3ce143a2342037387d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4e37ee559e1f5a0fdfcc7486bf2a5ea007c0379cf33386e0761a1d28036b88e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant2c4432e51d0050e5278d7536ef83759463dab957b10dcbd0e5d7f0e9dd0ddbbd.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant2c4432e51d0050e5278d7536ef83759463dab957b10dcbd0e5d7f0e9dd0ddbbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
