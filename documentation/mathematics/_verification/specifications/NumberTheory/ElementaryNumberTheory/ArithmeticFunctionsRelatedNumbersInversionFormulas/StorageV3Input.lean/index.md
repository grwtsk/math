# Verification target: Storage V3 Input

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1c80c910ae3d280b2e5450787e3e6d32334ea90",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variant548f8355eb170da5999c8b6e2803906f6b06ed4e5851ee05eb5b8308226a1247.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1c80c910ae3d280b2e5450787e3e6d32334ea90`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variant548f8355eb170da5999c8b6e2803906f6b06ed4e5851ee05eb5b8308226a1247.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variant548f8355eb170da5999c8b6e2803906f6b06ed4e5851ee05eb5b8308226a1247.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtStorage` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [translationStorage_le_two_norm_sq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/translationstorage-le-two-norm-sq.md) | 29 | `result-track:b9f09ff0c167ee6c448ab803f795fdee97ade09a5b336b79623b2c436d0ca173` |
| 2 | `theorem` | [higherStorage_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higherstorage-summable.md) | 37 | `result-track:0a18f2d03f4b3630c58ed9bf428d040d3ecf1ef5653c8e57d38b204f2a85e7c7` |
| 3 | `def` | [higherStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higherstorage.md) | 46 | `declaration-track:09364ee8f0eb51468b170b03c5dcacf5550a2c67739898972402f35b279bd13f` |
| 4 | `theorem` | [higherStorage_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higherstorage-nonneg.md) | 49 | `result-track:26d38e17e81aca100e00473c7c59d10337fa0027ea3335d683a7b4bb6fdb5059` |
| 5 | `theorem` | [higherStorage_le_two_mass_norm_sq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higherstorage-le-two-mass-norm-sq.md) | 52 | `result-track:2cb0d34134ba79fa3bbed077a94b1636b185b33c1f9d9b0760383c20f7d2514c` |
| 6 | `theorem` | [higherCorrelation_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/highercorrelation-summable.md) | 63 | `result-track:e7000e4e2ee6d74d55b999578e436322684c4a442e410823cfd7ce7a1cd229c6` |
| 7 | `def` | [higherCorrelation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/highercorrelation.md) | 72 | `declaration-track:1254dd311c2e34df04cc0cc6779ff5e850d86a6d2fcfec544a36280130bf1229` |
| 8 | `theorem` | [higher_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higher-reconstruction.md) | 77 | `result-track:3aa149db9656478dedf63a299ec4e437dfa92608a50ea8e1fd47b0c10f6d0c2d` |
| 9 | `def` | [higherSourceStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/highersourcestorage.md) | 91 | `declaration-track:b08831dc4fcf70f76fa42b34b6ed35dc61b508c5bfde46d0f7b0333fff840b59` |
| 10 | `theorem` | [higherSourceStorage_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/highersourcestorage-nonneg.md) | 93 | `result-track:8afa4240acf5b25d011073ae4c5b95ae3bfae3d135bb26a0afc9b354dfffeba9` |
| 11 | `theorem` | [higherSourceStorage_le_two_baseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/highersourcestorage-le-two-baseline.md) | 96 | `result-track:dfc1a561ed8b54472be4e16f82887c90f8ba5aecd920d46958a0e976b45d7cbf` |
| 12 | `def` | [higherAtomCoordinates](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higheratomcoordinates.md) | 103 | `declaration-track:dc0b36b56791f3d25fa98c433699bbf193bfbcd2f6ab1df9c9a6f41cd7b2244d` |
| 13 | `theorem` | [higherAtomCoordinates_injective](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higheratomcoordinates-injective.md) | 106 | `result-track:a784a641343da506d89abd78c758226933509756c94ba0c8509eba2d9abbc66c` |
| 14 | `theorem` | [prime_of_mem](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/prime-of-mem.md) | 115 | `result-track:937b81ac215c7c8bab20a5abd85bbf01c75f30b18a45429cd4ba054833b50305` |
| 15 | `theorem` | [exponent_of_mem](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/exponent-of-mem.md) | 119 | `result-track:3719ef69b72cbe5dafb476b42bb9db55d82ba0aad8d795752c28c2ea6573f296` |
| 16 | `def` | [higherInventoryIndex](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higherinventoryindex.md) | 124 | `declaration-track:d25d3962fb81fcbd6f57245b3b2aa7f401baa5287b52d61936f9fba5944bb569` |
| 17 | `def` | [higherAtomInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higheratominventory.md) | 129 | `declaration-track:8d41f5199e4970843f6512859fac3da1af89109bc7b9904ac7ebec891b50fc38` |
| 18 | `theorem` | [higherInventoryIndex_coordinates](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higherinventoryindex-coordinates.md) | 133 | `result-track:97e7273e137466a6dcf0535c9b2e7e5ce22d24086c022134b1f28481748c89c2` |
| 19 | `theorem` | [higherCoordinates_mem_inventory_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/highercoordinates-mem-inventory-iff.md) | 142 | `result-track:24a6c84eef68860bce56fa86344c0831a57ba5d985080f62a759b2ae6dece777` |
| 20 | `theorem` | [mem_higherAtomInventory_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/mem-higheratominventory-iff.md) | 167 | `result-track:8a5944cd2f7a4c1729cf8ec790b03ba24fc9f76c25bdee17124d852f8bc5f00a` |
| 21 | `theorem` | [higher_source_coefficient_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higher-source-coefficient-eq.md) | 183 | `result-track:8f4efb4e3f6419df03507e52cafdb1705a48618e5bc11ea6d2eafcb02031629d` |
| 22 | `theorem` | [higher_source_coefficient_zero_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higher-source-coefficient-zero-outside.md) | 193 | `result-track:25e75fe04eaf527ace4238422aba4388bf6de8865d6ef3677b341e668d48036d` |
| 23 | `theorem` | [higherPrimePowerMoment_eq_atom_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higherprimepowermoment-eq-atom-sum.md) | 202 | `result-track:6d460920e83e41f47789d81239b0f70453142888e763e2ca8cffc9a1ecddec17` |
| 24 | `theorem` | [higherPrimePowerMoment_eq_infinite_correlation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higherprimepowermoment-eq-infinite-correlation.md) | 227 | `result-track:2393e28725fece7028373bc6e608907bd62ea9615a5f6dc9a4ce93962f98de16` |
| 25 | `theorem` | [higherPrimePowerMoment_add_storage_eq_baseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higherprimepowermoment-add-storage-eq-baseline.md) | 235 | `result-track:6fbe1a3c5cc9ecef7ecb199c10cd6e1b9cf7631334b8dabd5566f5c1530dc247` |
| 26 | `theorem` | [higher_storage_atom_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higher-storage-atom-outside.md) | 243 | `result-track:51aaa402d7c3f83971eb9e48fb4e642924102d07d74ab445c888183bb0e1ea6d` |
| 27 | `def` | [higherVisibleBaseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/highervisiblebaseline.md) | 255 | `declaration-track:fe5d0988aa38b6869a013cd263f8c0cd539e514e3ad7ba900de002a1f93ca8f1` |
| 28 | `def` | [higherVisibleStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/highervisiblestorage.md) | 259 | `declaration-track:50c928cd8e01503fa5f1edb97a4c1746997871373bcd0b5a090e28b9a70754bf` |
| 29 | `theorem` | [higherVisibleBaseline_le_baseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/highervisiblebaseline-le-baseline.md) | 263 | `result-track:132d05869299eb1a19c1367937d0f227ebf81d2bd1892d4b6a773df611e1ca0b` |
| 30 | `theorem` | [higherVisibleStorage_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/highervisiblestorage-nonneg.md) | 267 | `result-track:382747f8c568acfd7475efefbd07ae1c95ba005c3eb0a322b1db95ef34d1b465` |
| 31 | `theorem` | [higherMoment_eq_visible_baseline_sub_storage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/highermoment-eq-visible-baseline-sub-storage.md) | 271 | `result-track:0213e321520650f77f00ae03b5074bb9389c40d0c5d3647ab1d78100ea7c7aa8` |
| 32 | `theorem` | [higherSourceStorage_padding](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/highersourcestorage-padding.md) | 282 | `result-track:9b81d2d5ffcc70888666652691c15e1e23c36b3406eeed3d7cedb7ff061fd767` |
| 33 | `theorem` | [residual_firstPrime_storage_balance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/residual-firstprime-storage-balance.md) | 290 | `result-track:771a0fc4436c0cb2ca22dc008f80d0b49cd9683c6a84a53fb563f7b55b6e4238` |
| 34 | `theorem` | [higher_storage_atom_of_support](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higher-storage-atom-of-support.md) | 299 | `result-track:0c23e4c97abb17fc2a57148a6d1b615f61cbdb544bdea7e1fa4d5d55a188397e` |
| 35 | `theorem` | [higher_two_cube_touching_fixture](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higher-two-cube-touching-fixture.md) | 309 | `result-track:89e1a55f42fa46d9ac4c9cbf9b499ee21c92d397ad58c48e66e6d415f7091c42` |
| 36 | `theorem` | [higher_two_cube_omitted_fixture](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/StorageV3Input.lean/declarations/higher-two-cube-omitted-fixture.md) | 347 | `result-track:d2470cc7b04b55310aa2234e3f7b99967d86c78a63c44f715670265b0641ba42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9fb9abbd073c8061224e6b019a78d8a5ee06776c895a9beba19e659a7ebfd706 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variant548f8355eb170da5999c8b6e2803906f6b06ed4e5851ee05eb5b8308226a1247.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variant548f8355eb170da5999c8b6e2803906f6b06ed4e5851ee05eb5b8308226a1247.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
