# Verification target: Storage V2 Input Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e18646cc55144670e7dbc1d2409488220df9aabc",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV2Input/Variant3d756a596f96a4627b0e41d2e8a94a158bd818d250413c78864ccce241b774e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e18646cc55144670e7dbc1d2409488220df9aabc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV2Input/Variant3d756a596f96a4627b0e41d2e8a94a158bd818d250413c78864ccce241b774e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV2Input/Variant3d756a596f96a4627b0e41d2e8a94a158bd818d250413c78864ccce241b774e3.lean.json)

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
| 1 | `theorem` | [translationStorage_le_two_norm_sq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/translationstorage-le-two-norm-sq.md) | 37 | `result-track:16c78363965c2a8dba3e825ad85dfa5bd73e6be4ae39d35e9be59fbb265d5a2d` |
| 2 | `theorem` | [higherStorage_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higherstorage-summable.md) | 45 | `result-track:987ec03c5c97a035e7675fd99000d429ce20123d2283cbdcf3b55797f62b1dc9` |
| 3 | `def` | [higherStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higherstorage.md) | 54 | `declaration-track:cdb23378e404bb67b470afc9e8e81d62c4fd1db1599a90d16e6ec3d319bf7099` |
| 4 | `theorem` | [higherStorage_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higherstorage-nonneg.md) | 57 | `result-track:0d21674553eb2b912d594d45f13e5f6b08efe583599f0736a8cb83aad340addd` |
| 5 | `theorem` | [higherStorage_le_two_mass_norm_sq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higherstorage-le-two-mass-norm-sq.md) | 60 | `result-track:f01049f2224f0f96f618b993705e36fe748d93b8fc97da5ec55c5aed053b5ad7` |
| 6 | `theorem` | [higherCorrelation_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/highercorrelation-summable.md) | 71 | `result-track:4b28d6ae027dfe23a0a824d502083450977e9664e49f23a278200e2bf0d74603` |
| 7 | `def` | [higherCorrelation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/highercorrelation.md) | 80 | `declaration-track:9caebaac9d468bd88cf025976a4e7ab14d845383e7fd2fcbc1c4608da20913f6` |
| 8 | `theorem` | [higher_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higher-reconstruction.md) | 85 | `result-track:f3ba7ca7f94317ffa7c3fe1361e0fade7f4a11fe98abea1fa0e9a69d8ce6b29c` |
| 9 | `def` | [higherSourceStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/highersourcestorage.md) | 99 | `declaration-track:f90fdc43751a647bd7c9d323311bd4d36ec38fa21b112e1d996f8cf20c431033` |
| 10 | `theorem` | [higherSourceStorage_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/highersourcestorage-nonneg.md) | 101 | `result-track:383cc18dad149bc1d934d8aab7aa0e032d9da2f4fc0e7537d78ce2ddc263f147` |
| 11 | `theorem` | [higherSourceStorage_le_two_baseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/highersourcestorage-le-two-baseline.md) | 104 | `result-track:7ccd3e2918051ca2afbaaabbec3d133515dc9fd705e7893b23ce58f36292687a` |
| 12 | `def` | [higherAtomCoordinates](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higheratomcoordinates.md) | 111 | `declaration-track:d99ef238c1ddb8037be5953e8fde03195b1a0753e8d3cee2a8bb1f22a859f718` |
| 13 | `theorem` | [higherAtomCoordinates_injective](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higheratomcoordinates-injective.md) | 114 | `result-track:0f47c46631334ae2d7df6a61e68995aa34129504e90fe32db422774720b8f563` |
| 14 | `theorem` | [prime_of_mem](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/prime-of-mem.md) | 123 | `result-track:43af0701adbbcff6cd4b7919ef9f22f532ddb1f92cb9627efffc19d4b735f10d` |
| 15 | `theorem` | [exponent_of_mem](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/exponent-of-mem.md) | 127 | `result-track:6ae7ab2e0733693c164de8d92981c6db345a0c5860900781db57cc75e1136c60` |
| 16 | `def` | [higherInventoryIndex](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higherinventoryindex.md) | 132 | `declaration-track:c12c2d6d67d793f8b256fc797d5c2a9ab60de19ab83709cb0e5cd3f1871ed9d2` |
| 17 | `def` | [higherAtomInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higheratominventory.md) | 137 | `declaration-track:05891af3feddd27a785a3c07c777c17ff49624ea46d243f9a3e85ac321011976` |
| 18 | `theorem` | [higherInventoryIndex_coordinates](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higherinventoryindex-coordinates.md) | 141 | `result-track:3bf960e774054cea2961d66edafcaf19b02c47c143d41a23f4f68a2e228080fb` |
| 19 | `theorem` | [higherCoordinates_mem_inventory_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/highercoordinates-mem-inventory-iff.md) | 150 | `result-track:c0e8e6d11726ecfe34f68dc1b43e13e7d03247680337e9ce7bb14f9872dfaade` |
| 20 | `theorem` | [mem_higherAtomInventory_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/mem-higheratominventory-iff.md) | 175 | `result-track:351cdc7926c5413c903f42012ad8183f4d7299d4739d900d07edf7359bcad85f` |
| 21 | `theorem` | [higher_source_coefficient_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higher-source-coefficient-eq.md) | 191 | `result-track:5ad127129f8eb0df95eee9e692b171e252d99d0dc722fc945f89d182f9dd61a9` |
| 22 | `theorem` | [higher_source_coefficient_zero_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higher-source-coefficient-zero-outside.md) | 201 | `result-track:c107dc38d849f3e1d82e1acc922b68013acf0fe6c7c9eae1073f3b41ab21e21d` |
| 23 | `theorem` | [higherPrimePowerMoment_eq_atom_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higherprimepowermoment-eq-atom-sum.md) | 210 | `result-track:fe10c17196804ed657ddf1e3c512270d13233b49941af809562270ee02ada8bc` |
| 24 | `theorem` | [higherPrimePowerMoment_eq_infinite_correlation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higherprimepowermoment-eq-infinite-correlation.md) | 235 | `result-track:49c3ab253e353f38160dcd58a758cdfdb9e0c9cf5147e4f33a9186c311017c69` |
| 25 | `theorem` | [higherPrimePowerMoment_add_storage_eq_baseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higherprimepowermoment-add-storage-eq-baseline.md) | 243 | `result-track:9d2e43042d3ea114aa99b82f2c410c4bd0aa2e3cb1842497f6534f1819fc175b` |
| 26 | `theorem` | [higher_storage_atom_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/higher-storage-atom-outside.md) | 251 | `result-track:8f06da04a3d107bc115b3c0be0a2dd1f313ca975406846cad67a191145e9d884` |
| 27 | `def` | [higherVisibleBaseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/highervisiblebaseline.md) | 263 | `declaration-track:40ee5be06c2e93939eef995c49e8e9dd03a711e180c7286f1e7bd3e9bbcce3e4` |
| 28 | `def` | [higherVisibleStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/highervisiblestorage.md) | 267 | `declaration-track:bd909dc3b24fd45c17314c38011ac5e10b228aa55385eb0a9d9d8a2a8e8a579a` |
| 29 | `theorem` | [higherVisibleBaseline_le_baseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/highervisiblebaseline-le-baseline.md) | 271 | `result-track:320ca9fb95e9c6dc552973e84e353f74284cec4ab3bcdce4505949652334c5e4` |
| 30 | `theorem` | [higherVisibleStorage_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/highervisiblestorage-nonneg.md) | 275 | `result-track:a46c5b4158014efff7bf33af4b40576c6b490761cae9d1f94006d3e369d8c2a6` |
| 31 | `theorem` | [higherMoment_eq_visible_baseline_sub_storage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/highermoment-eq-visible-baseline-sub-storage.md) | 279 | `result-track:37048557d8e0b03b500635ee0f645b5d45ed3febca319302028d914bae175e2f` |
| 32 | `theorem` | [higherSourceStorage_padding](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/highersourcestorage-padding.md) | 290 | `result-track:273bca03e87180d481f7dbd623fd95a9073d955aa71ceb31930f3cad7c7834b6` |
| 33 | `theorem` | [residual_firstPrime_storage_balance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV2InputNamespaced.lean/declarations/residual-firstprime-storage-balance.md) | 298 | `result-track:691a24785e84d912b8eb8cee3d078f7bbf3bce1575df1f615b99b14d8d99447f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2429e837603ec3bc174f6fd3a73192eac6920ce93a087a5b871eee8917287ab2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV2Input/Variant3d756a596f96a4627b0e41d2e8a94a158bd818d250413c78864ccce241b774e3.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV2Input/Variant3d756a596f96a4627b0e41d2e8a94a158bd818d250413c78864ccce241b774e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
