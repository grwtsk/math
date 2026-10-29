# Verification target: Ring Theory Kaehler

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a05652a6c7cd213e3bea2b18708536e3d79a385",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a05652a6c7cd213e3bea2b18708536e3d79a385`.

Source path: `GRWTSK/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.ToSquareZero` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Cotangent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [KaehlerDifferential.ideal](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-ideal.md) | 47 | `declaration-track:e93b6ee3dcd333e0f48eabb6a7b3402f82ad18ceee0005623319418377bc2b5c` |
| 2 | `theorem` | [KaehlerDifferential.one_smul_sub_smul_one_mem_ideal](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-one-smul-sub-smul-one-mem-ideal.md) | 53 | `result-track:2e8001fdd39d2adbf59155f7154272244a2678fb892c4c1daea06f4b7109ef32` |
| 3 | `def` | [Derivation.tensorProductTo](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/derivation-tensorproductto.md) | 62 | `declaration-track:85ff24eb1bde61d519f4f03e246bcf5f5ac1d1e1d2cc40c9820d34e91818d379` |
| 4 | `theorem` | [Derivation.tensorProductTo_tmul](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/derivation-tensorproductto-tmul.md) | 66 | `result-track:88af897e1d3d03d3cbef8141f670e555eaa24b985085363872b5a93b851e2b2d` |
| 5 | `theorem` | [Derivation.tensorProductTo_mul](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/derivation-tensorproductto-mul.md) | 70 | `result-track:0e4e1e8314fbdf90880d9399d355e54298492f5d439f53c7fbdd375158bbcff9` |
| 6 | `theorem` | [KaehlerDifferential.submodule_span_range_eq_ideal](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-submodule-span-range-eq-ideal.md) | 97 | `result-track:ef399af7df91263c4d3a2247bb55fa4fb9e99ee52ec2b2d095453526f3c678c5` |
| 7 | `theorem` | [KaehlerDifferential.span_range_eq_ideal](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-span-range-eq-ideal.md) | 123 | `result-track:9663249c299b4072071480b5a04885b33568ce499911ac1778f20d7fa6c798aa` |
| 8 | `def` | [KaehlerDifferential](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential.md) | 144 | `declaration-track:dd3dadea9911f7732a5abf31065da4be07bd01e0a0997a0a33057f24734a8482` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/instance-source-edition-2.md) | 148 | `declaration-track:371ee7707172459a6d7be51331fb236eedf0ca106041d40c4eb7fb25b31e6d00` |
| 10 | `instance` | [KaehlerDifferential.module](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-module.md) | 152 | `declaration-track:9907c2c34768bd4f7f6ffaea9d280a8d67b7647b3714fbf406941d3ce09d9d7e` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/instance-source-edition-3.md) | 158 | `declaration-track:f5664cb19df8f5236f9e668e998cf5a7908478ef9d71aa98afbd389fbfffe563` |
| 12 | `instance` | [KaehlerDifferential.module'](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-module-source-edition-2.md) | 160 | `declaration-track:efe6d23b677da67b00f71df27f8153309432cab0adb947d69bee964f440a139a` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/instance.md) | 166 | `declaration-track:008325f971b9609b5755a84733cd8d62ae84d002504f24e9fbbe52b6d48166c5` |
| 14 | `instance` | [KaehlerDifferential.isScalarTower_of_tower](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-isscalartower-of-tower.md) | 169 | `declaration-track:b29ef8d1995844c841447ff53a0e943be543e619061437d0f3e2e4755e7f5e0b` |
| 15 | `instance` | [KaehlerDifferential.isScalarTower'](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-isscalartower.md) | 177 | `declaration-track:beb670549438e2c6bf858c827c105e11f3fb9065d1eb187ebe19cefaaec02242` |
| 16 | `def` | [KaehlerDifferential.fromIdeal](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-fromideal.md) | 182 | `declaration-track:b00cf9910f1e9c2d30dc10abb6f6e786fbb0e912e7556d965adde4ceba2b7512` |
| 17 | `def` | [KaehlerDifferential.DLinearMap](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-dlinearmap.md) | 187 | `declaration-track:8324c1589f15bd17a1629be26716f1b1a5146bac8e50c3597cc554439f607b37` |
| 18 | `theorem` | [KaehlerDifferential.DLinearMap_apply](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-dlinearmap-apply.md) | 197 | `result-track:2e467a3d5119dbdd12ea14fdaa4747eb25bea1a83ec295cf9b87ca62184b8647` |
| 19 | `def` | [KaehlerDifferential.D](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-d.md) | 205 | `declaration-track:8bdfdffe117598479f7b38468536fb62b84f5a2c979851bf4adf15d7af1cac7e` |
| 20 | `theorem` | [KaehlerDifferential.D_apply](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-d-apply.md) | 225 | `result-track:da461bbaa7ef54f67af0bc51ff9bbc179b815ad071fe09be8c1b573577b768c6` |
| 21 | `theorem` | [KaehlerDifferential.span_range_derivation](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-span-range-derivation.md) | 232 | `result-track:a293ec37399f83e3e93b7f10aaabc4bd6c4eb27db97414c4df9a66a3fe7403fc` |
| 22 | `def` | [Derivation.liftKaehlerDifferential](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/derivation-liftkaehlerdifferential.md) | 257 | `declaration-track:07c513c012adce35ecae5eb2f79dcaf15011187fa2cdda6842a22be3b76ac677` |
| 23 | `theorem` | [Derivation.liftKaehlerDifferential_apply](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/derivation-liftkaehlerdifferential-apply.md) | 272 | `result-track:2ed65ff636db7a25051452db77690cf56e08d04947de3d11da5f6879d9f28fa3` |
| 24 | `theorem` | [Derivation.liftKaehlerDifferential_comp](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/derivation-liftkaehlerdifferential-comp.md) | 277 | `result-track:8d0833f28d878a0d17d06ec041bea01e0c922a8fc387d9df47c64e12926bf3d6` |
| 25 | `theorem` | [Derivation.liftKaehlerDifferential_comp_D](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/derivation-liftkaehlerdifferential-comp-d.md) | 287 | `result-track:c9dd3f3b1f850ab83a3afa97774988439d3427c08aec06002986d6f151ca8516` |
| 26 | `theorem` | [Derivation.liftKaehlerDifferential_unique](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/derivation-liftkaehlerdifferential-unique.md) | 297 | `result-track:e8bcd2123d08d1a989cde538e81fa37567657699e558b273793e46eb6f233694` |
| 27 | `theorem` | [Derivation.liftKaehlerDifferential_D](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/derivation-liftkaehlerdifferential-d.md) | 313 | `result-track:6dbac9db8abbebffb259d9d5df0e3c49e903972d5c6b6d5ef61ea48863cb9148` |
| 28 | `theorem` | [KaehlerDifferential.D_tensorProductTo](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-d-tensorproductto.md) | 322 | `result-track:2ae662238de7c2dd79275299e22fadcab9adaa8c41c5a5ecfc7983047c02000b` |
| 29 | `theorem` | [KaehlerDifferential.tensorProductTo_surjective](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-tensorproductto-surjective.md) | 332 | `result-track:3587f4376cb02ce3b0a995b1837dda853376a9b5cf8884a38180e3dc2144a7ed` |
| 30 | `def` | [KaehlerDifferential.linearMapEquivDerivation](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-linearmapequivderivation.md) | 340 | `declaration-track:0c6ba3d882c4c91d1eab2c77d5172cd9ecdfabc7a210ae45745a26ffd902e6a6` |
| 31 | `def` | [KaehlerDifferential.quotientCotangentIdealRingEquiv](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-quotientcotangentidealringequiv.md) | 349 | `declaration-track:fac967aba283d74a44b72bfb9f5844f624017e8b39da90dee997899f3f70915d` |
| 32 | `def` | [KaehlerDifferential.quotientCotangentIdeal](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-quotientcotangentideal.md) | 362 | `declaration-track:bf56d2ec216396d08e82bfbbe14eb6de00cfa383fe9c0d1e7807f5056d7f6ab7` |
| 33 | `theorem` | [KaehlerDifferential.End_equiv_aux](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-end-equiv-aux.md) | 369 | `result-track:833bcc960c56c2eb3e5cc3ddc065dcf99c07bc1a6d111369995c2434b109fb68` |
| 34 | `def` | [KaehlerDifferential.endEquivDerivation'](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-endequivderivation.md) | 400 | `declaration-track:2fc2d674d7f4fbce3ca3cb796879e7531823ed91557b19dfe9a7de0be11c395e` |
| 35 | `def` | [KaehlerDifferential.endEquivAuxEquiv](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-endequivauxequiv.md) | 407 | `declaration-track:2b59cf4dad5f0528a68565dd6d08461225dfd06b6a8e52b92e07cf4d9871582a` |
| 36 | `def` | [KaehlerDifferential.endEquiv](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-endequiv.md) | 422 | `declaration-track:e3a168800a3d68c18563f99dc8ab5bb4b9f43b52a34d0d18b394031f4e3482a1` |
| 37 | `def` | [KaehlerDifferential.kerTotal](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-kertotal.md) | 448 | `declaration-track:ca79ca85f2f4d75a87cb71dfd7566dd3524e81a51296e4a57e6be756c6ad60e2` |
| 38 | `theorem` | [KaehlerDifferential.kerTotal_mkQ_single_add](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-kertotal-mkq-single-add.md) | 460 | `result-track:f70855399c2e70660f833b0d0e055739e22fd943c2855a4d9a5c5caac7e4f35f` |
| 39 | `theorem` | [KaehlerDifferential.kerTotal_mkQ_single_mul](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-kertotal-mkq-single-mul.md) | 467 | `result-track:da5d239cf9a202103fadb49a8cd62cc4a672d68ac0b81f01b494d001796d8668` |
| 40 | `theorem` | [KaehlerDifferential.kerTotal_mkQ_single_algebraMap](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-kertotal-mkq-single-algebramap.md) | 476 | `result-track:d84a1d1edb08118626d74e8581e31f0ef8b2feb034710c36f5ee037c1c4ca5ce` |
| 41 | `theorem` | [KaehlerDifferential.kerTotal_mkQ_single_algebraMap_one](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-kertotal-mkq-single-algebramap-one.md) | 481 | `result-track:ab01110b4824833d6e6054f3bb7d792f1fc0c071854221eede81f25a61924e7c` |
| 42 | `theorem` | [KaehlerDifferential.kerTotal_mkQ_single_smul](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-kertotal-mkq-single-smul.md) | 485 | `result-track:a03e6a2250adc7d546a26cb0edb010973328face6e2c7c9ad3d08eb9b0e30188` |
| 43 | `def` | [KaehlerDifferential.derivationQuotKerTotal](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-derivationquotkertotal.md) | 492 | `declaration-track:1400ce26a9c1c82872d5dac18db680c364ef741c2fd0d830cb1169b444977c52` |
| 44 | `theorem` | [KaehlerDifferential.derivationQuotKerTotal_apply](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-derivationquotkertotal-apply.md) | 503 | `result-track:a22f424a6d1ae64834ed7f2ae828b32cfd23924c628ee857f20fccddd1698ae0` |
| 45 | `theorem` | [KaehlerDifferential.derivationQuotKerTotal_lift_comp_total](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-derivationquotkertotal-lift-comp-total.md) | 508 | `result-track:bd8b701dde6c05965ed311e1f363c99f0921ae2b60187d3f46f8173afb8fc51d` |
| 46 | `theorem` | [KaehlerDifferential.kerTotal_eq](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-kertotal-eq.md) | 518 | `result-track:1f6a35658fe64b691df91c8001cc11bd45de1cc88a61842f96ae4c6d16f6e994` |
| 47 | `theorem` | [KaehlerDifferential.total_surjective](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-total-surjective.md) | 529 | `result-track:c934acd5fd7a3ffa215d8249fe7da2c6aa368e5e68ceb5d76cdbf44f5944c24e` |
| 48 | `def` | [KaehlerDifferential.quotKerTotalEquiv](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-quotkertotalequiv.md) | 537 | `declaration-track:5f669e1a573ffde0ff4f29da3142821d0bd0717dc700cff7377031c35bfeeb42` |
| 49 | `theorem` | [KaehlerDifferential.quotKerTotalEquiv_symm_comp_D](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-quotkertotalequiv-symm-comp-d.md) | 556 | `result-track:7a3129e67ef4d029026e7aa7b2a552cc8641866d071c5e1171c88c95a895b09a` |
| 50 | `macro` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/macro.md) | 569 | `declaration-track:2988fa4add35c6a7ef29264163a9b9f3d450bcc8c5ea09d4883d76a1a79f11fa` |
| 51 | `theorem` | [KaehlerDifferential.kerTotal_map](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-kertotal-map.md) | 574 | `result-track:ec0e8f7cb1d17e14e39a6f651fc7f21a7405abffca7c4ac2bae85f17eaf350bd` |
| 52 | `def` | [Derivation.compAlgebraMap](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/derivation-compalgebramap.md) | 614 | `declaration-track:a37bd328481664749e2515eb18c522a25272945b07869dcf89bca950ca6167a5` |
| 53 | `def` | [KaehlerDifferential.map](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-map.md) | 629 | `declaration-track:2d798321534a740adbbe907400c1237a4209816138212b468b577afc2c9c2935` |
| 54 | `theorem` | [KaehlerDifferential.map_compDer](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-map-compder.md) | 634 | `result-track:b606af4c36f368bafe0216ea1e7f24f16a11f9a48ab69c5a98bb83617e6c311d` |
| 55 | `theorem` | [KaehlerDifferential.map_D](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-map-d.md) | 640 | `result-track:bb6142de9ce5241bda338225739a8088b4100b24d8cd542caa91dfd1dc6b6de9` |
| 56 | `theorem` | [KaehlerDifferential.map_surjective_of_surjective](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-map-surjective-of-surjective.md) | 649 | `result-track:895246eb9599051687204b9b5a598440b41428d070dea3c6be80da6e9e295cde` |
| 57 | `def` | [KaehlerDifferential.mapBaseChange](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-mapbasechange.md) | 663 | `declaration-track:0afe96f018c96286b86df34b956b3977cba80570f8d83ef2e7d45365a3d0c839` |
| 58 | `theorem` | [KaehlerDifferential.mapBaseChange_tmul](../../../../CommutativeAlgebra/RingTheoryKaehler.lean/declarations/kaehlerdifferential-mapbasechange-tmul.md) | 668 | `result-track:cc870548924b35db5374e87fe0d09b3c7d24df2a3f11905964160d831eb4fc6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fb6973c24e8f2481a43071533e273d126586d198f4e492c6283f8abcd728470 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean","GRWTSK/_verification/specifications/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
