# Verification target: Data Polynomial Div Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdc1185195afec228ebf4e7148c738f4053f2e4a",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Div/Variantdc7fb152cb4fc858224e1aed6135113773c11d7c2189bc505b8be7c0a5912437.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdc1185195afec228ebf4e7148c738f4053f2e4a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Div/Variantdc7fb152cb4fc858224e1aed6135113773c11d7c2189bc505b8be7c0a5912437.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Div/Variantdc7fb152cb4fc858224e1aed6135113773c11d7c2189bc505b8be7c0a5912437.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Inductions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Monic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Multiplicity` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [X_dvd_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/x-dvd-iff.md) | 46 | `result-track:96d0eb932f0c378bc26a13a70a13a0da97206e5ee3b6086536b5505a37ef869a` |
| 2 | `theorem` | [X_pow_dvd_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/x-pow-dvd-iff.md) | 52 | `result-track:fe83bd2f3cb156a6927ad63065a71786acc1cd35b745afa0239ec5e07cbd200b` |
| 3 | `theorem` | [multiplicity_finite_of_degree_pos_of_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/multiplicity-finite-of-degree-pos-of-monic.md) | 73 | `result-track:0e1eed5145eead50186c75db6557f08b1535b7a7c306ac1f28c9c22562d2f86b` |
| 4 | `theorem` | [div_wf_lemma](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/div-wf-lemma.md) | 104 | `result-track:d3c4e52c272ff1a3fa52ad5526024760b25c6a0ceac91a500b24c8b3c74f1a4e` |
| 5 | `def` | [divModByMonicAux](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/divmodbymonicaux.md) | 120 | `declaration-track:d92095856625ad8f70871c9b2a54d1e24acb089dd10e941ef1b873daf4141d95` |
| 6 | `def` | [divByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/divbymonic.md) | 132 | `declaration-track:b2e855c2c6625c09c8762c4d13eef88152fe1e1f3148d84ead512f5bdc88fe00` |
| 7 | `def` | [modByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/modbymonic.md) | 137 | `declaration-track:a2c8f01fbc2b80d30579f18b1b04c5ab48d5cc3d251bc2c0f415c95c63816ec2` |
| 8 | `theorem` | [degree_modByMonic_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/degree-modbymonic-lt.md) | 147 | `result-track:cd250762550c68ced36bc4a6a6e77e148eed2a3df9198e02615779bb360034ed` |
| 9 | `theorem` | [zero_modByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/zero-modbymonic.md) | 178 | `result-track:9bf23516ba636054e7d3ed3ae86b00a7b13ceebf28d3f719a63a0ec56952475c` |
| 10 | `theorem` | [zero_divByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/zero-divbymonic.md) | 187 | `result-track:c2a7c1bc5cb107b0f7f0f602566e5e5e6967c7204b162f981960232f888b435d` |
| 11 | `theorem` | [modByMonic_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/modbymonic-zero.md) | 196 | `result-track:54fa2b9445aaa98fb5c09b81a3edcc888e61665309e1cfb6b199da4d909df876` |
| 12 | `theorem` | [divByMonic_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/divbymonic-zero.md) | 204 | `result-track:c93d1e3e6d1eacabf75e5c57f8b16816b73dfb4eb50ca16d829a53e06fda95c1` |
| 13 | `theorem` | [divByMonic_eq_of_not_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/divbymonic-eq-of-not-monic.md) | 211 | `result-track:11860fe5501ead58cca2b5769051501f04ffcb690a57023b63f10ae0eb84d999` |
| 14 | `theorem` | [modByMonic_eq_of_not_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/modbymonic-eq-of-not-monic.md) | 215 | `result-track:a997586b512448bf32fa6e6e726f0427abdeaff5f7162ec0a489f7176dae26aa` |
| 15 | `theorem` | [modByMonic_eq_self_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/modbymonic-eq-self-iff.md) | 219 | `result-track:2f2a67a9c5d7506548b56e228381bc2756785e3edc616c0505e24acc078ade38` |
| 16 | `theorem` | [degree_modByMonic_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/degree-modbymonic-le.md) | 225 | `result-track:53fada2c5ca69d5334fb8399ca22449870844e610c6db68c3b497addff75f167` |
| 17 | `theorem` | [modByMonic_eq_sub_mul_div](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/modbymonic-eq-sub-mul-div.md) | 236 | `result-track:02ab4937682e5bb9ca552e6a1540f1cb849ede2db8fb9580380a3fbfa9ea60f0` |
| 18 | `theorem` | [modByMonic_add_div](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/modbymonic-add-div.md) | 257 | `result-track:e4b575f47c82f9352bac8126168f1632728353c8195ddaea5c416c7af712a850` |
| 19 | `theorem` | [divByMonic_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/divbymonic-eq-zero-iff.md) | 261 | `result-track:2cf357d7c095901880263b50255b85eae8ab98c3dbdb936eeb4b69dae29c7332` |
| 20 | `theorem` | [degree_add_divByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/degree-add-divbymonic.md) | 270 | `result-track:f31df3a0d8e3f4c3f140e4e264d515c968ec6abb4780062deb967e83dc070533` |
| 21 | `theorem` | [degree_divByMonic_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/degree-divbymonic-le.md) | 289 | `result-track:351ba9af0ed870ef85db85a3613d294fceb88d6689813d61d19857c71909660a` |
| 22 | `theorem` | [degree_divByMonic_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/degree-divbymonic-lt.md) | 304 | `result-track:3285e647dda259bc3e902010600775b9b3860ed6d86958aeb2dfefd8d99ef243` |
| 23 | `theorem` | [natDegree_divByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/natdegree-divbymonic.md) | 320 | `result-track:d8c847c44ce8a713abab585fb9b344ceffcff82ed27283431af7b9e743bcdd66` |
| 24 | `theorem` | [div_modByMonic_unique](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/div-modbymonic-unique.md) | 341 | `result-track:efc9eac079ad3b9f39782d055967072392b310e9f3f988f62fef0ba6d92184a5` |
| 25 | `theorem` | [map_mod_divByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/map-mod-divbymonic.md) | 365 | `result-track:45ba2cef84f8f9dc974ba02aa24cfdeddfcaaa3eb817494fd7f6cf181d8465c7` |
| 26 | `theorem` | [map_divByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/map-divbymonic.md) | 382 | `result-track:64fdf496036013c602c15a648639d9f70c100a1385fc93126408f14db1382ee2` |
| 27 | `theorem` | [map_modByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/map-modbymonic.md) | 387 | `result-track:c431504029d1138fbab02c7d46bccba3703feaa3a8ecfdf95b1dd9e30ad01527` |
| 28 | `theorem` | [dvd_iff_modByMonic_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/dvd-iff-modbymonic-eq-zero.md) | 392 | `result-track:f49443aa165a56567543e1ef6992e7935df109f2d79c62d9963bc9b6826727a1` |
| 29 | `theorem` | [map_dvd_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/map-dvd-map.md) | 409 | `result-track:c21d1777ba1012ca4da8dcbedf19c053b6a1f1b16115dfe507672017df9cb679` |
| 30 | `theorem` | [modByMonic_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/modbymonic-one.md) | 419 | `result-track:829c60cfd4beacb5112e58c9d513ea9114076d1ce266771774888416b01ea9f4` |
| 31 | `theorem` | [divByMonic_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/divbymonic-one.md) | 424 | `result-track:2b130f466d0f6b092e93750163a2b60b368d20bf7ba2bb93929fed803e0fc236` |
| 32 | `theorem` | [modByMonic_X_sub_C_eq_C_eval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/modbymonic-x-sub-c-eq-c-eval.md) | 429 | `result-track:3e3f6d465f0cfd914b68032756af6ea1c83074fabd73322ec41ad53b0e255abf` |
| 33 | `theorem` | [mul_divByMonic_eq_iff_isRoot](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/mul-divbymonic-eq-iff-isroot.md) | 446 | `result-track:bde2f5bbc11f1355cb5b73014b93c6d5f93ffe97b873433cf7e1fedcb75eb4d0` |
| 34 | `theorem` | [dvd_iff_isRoot](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/dvd-iff-isroot.md) | 455 | `result-track:c270306eeaed605c3050c74b8c2e7b21060bb6a70fe1f279549fc332598489ec` |
| 35 | `theorem` | [X_sub_C_dvd_sub_C_eval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/x-sub-c-dvd-sub-c-eval.md) | 462 | `result-track:dff3055b5d5cc5cccf336704a2dbae43562c279d8d63af156111440719837f77` |
| 36 | `theorem` | [mem_span_C_X_sub_C_X_sub_C_iff_eval_eval_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/mem-span-c-x-sub-c-x-sub-c-iff-eval-eval-eq-zero.md) | 467 | `result-track:12181511afe9f20c83223225f06ee4e4f3c4e6f355fd506b5ae143eda2567421` |
| 37 | `theorem` | [modByMonic_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/modbymonic-x.md) | 479 | `result-track:e7248fc24087971175a8abe4817abc6af20b900c53b0257215890c580986d0ce` |
| 38 | `theorem` | [eval₂_modByMonic_eq_self_of_root](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/eval-modbymonic-eq-self-of-root.md) | 484 | `result-track:8591157eaad1f183bc31065a951ce78c349ffbb151a991d9e630f900df232572` |
| 39 | `theorem` | [sum_modByMonic_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/sum-modbymonic-coeff.md) | 489 | `result-track:d24e5c0b933342da4400934e9d7c67389f231703f0a7f0275216d3e77aaa513b` |
| 40 | `theorem` | [sub_dvd_eval_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/sub-dvd-eval-sub.md) | 497 | `result-track:8e0d300c1527460271ea9b09bf2be324d184448d200a99c3e8966602a5d5ceb1` |
| 41 | `theorem` | [mul_div_mod_by_monic_cancel_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/mul-div-mod-by-monic-cancel-left.md) | 503 | `result-track:c4e0958208a3a47c7ea4d6f3168e2fb6241deb76e239c85d465fd98e94b6d5fa` |
| 42 | `theorem` | [not_isField](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/not-isfield.md) | 513 | `result-track:fadef6c301027e5ed7d674e4044f383d0ff334e61db191379b32de1800128ba1` |
| 43 | `theorem` | [ker_evalRingHom](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/ker-evalringhom.md) | 527 | `result-track:496cdbb0edd51d28fd6967b3d744461a1f295bed7aca50e47b421658d636ff81` |
| 44 | `def` | [decidableDvdMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/decidabledvdmonic.md) | 538 | `declaration-track:21a8aaba06463970a53066e485a1291f5dd810abca1c0a98e33b907eb5d8b303` |
| 45 | `theorem` | [multiplicity_X_sub_C_finite](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/multiplicity-x-sub-c-finite.md) | 542 | `result-track:c755261f3e5037ac9d3e6a8f81003839d63225958bc3ea7460a24ccd9408d173` |
| 46 | `def` | [rootMultiplicity](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/rootmultiplicity.md) | 554 | `declaration-track:5d39012502eabf6c8a0db4bbb0b665125d9e76147c1244ac8ff64f49d7b58cf7` |
| 47 | `theorem` | [rootMultiplicity_eq_nat_find_of_nonzero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/rootmultiplicity-eq-nat-find-of-nonzero.md) | 566 | `result-track:3b00692ef1622d0674b590a53c6f83836383646eb1edb14b093d5c42e5ab6de7` |
| 48 | `theorem` | [rootMultiplicity_eq_multiplicity](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/rootmultiplicity-eq-multiplicity.md) | 572 | `result-track:58be488a7cbba805edb7b3a4eb142285e21ecd4f6f6331cfd7e254f0e723bfad` |
| 49 | `theorem` | [rootMultiplicity_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/rootmultiplicity-zero.md) | 579 | `result-track:d46e454ac452a0f31c664f0bd111d82677af17d49a6ead1744bfba8761d1a541` |
| 50 | `theorem` | [rootMultiplicity_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/rootmultiplicity-eq-zero-iff.md) | 584 | `result-track:b9524c851705b34e1ee5a0b1881064346b36452beb0f054bee9ff330f8b81c41` |
| 51 | `theorem` | [rootMultiplicity_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/rootmultiplicity-eq-zero.md) | 590 | `result-track:984a0098de4ecabb5dd8f28ab8deca0a5caa3d0cc5f21e3eee1e8d513f50c9e6` |
| 52 | `theorem` | [rootMultiplicity_pos'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/rootmultiplicity-pos-source-edition-2.md) | 595 | `result-track:dcd4e30d05d0cc50e2ceb03d214627c5907e7e1c34cd2be4c75f2f506a1d5f72` |
| 53 | `theorem` | [rootMultiplicity_pos](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/rootmultiplicity-pos.md) | 599 | `result-track:944e2476ac4d849860f8646d95339b216485ff1afa6e69a3c65ac5d5e8a098fb` |
| 54 | `theorem` | [rootMultiplicity_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/rootmultiplicity-c.md) | 605 | `result-track:dd1f3102a38ae40e6ec6e20848cce1f895773d2e4a36f5bf4659dfc385324ab3` |
| 55 | `theorem` | [pow_rootMultiplicity_dvd](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/pow-rootmultiplicity-dvd.md) | 610 | `result-track:6838e6abad3691a59cf8a7bcbcfb3ccfe5a771d13bd9c657f035073aa3c0a17e` |
| 56 | `theorem` | [divByMonic_mul_pow_rootMultiplicity_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/divbymonic-mul-pow-rootmultiplicity-eq.md) | 616 | `result-track:ee6340d6326202985faa75afd87a216120fe44d125594316ff301f72080c7869` |
| 57 | `theorem` | [eval_divByMonic_pow_rootMultiplicity_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDivNamespaced.lean/declarations/eval-divbymonic-pow-rootmultiplicity-ne-zero.md) | 625 | `result-track:8a042cb84ccf32f581f7ebc47b5ddc090e831a73db973965164889ee09f5f4ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93acac05cd3e64689bd3d62fb461d48871174751c8a73db35e892192c80c1f94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Div/Variantdc7fb152cb4fc858224e1aed6135113773c11d7c2189bc505b8be7c0a5912437.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Div/Variantdc7fb152cb4fc858224e1aed6135113773c11d7c2189bc505b8be7c0a5912437.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
