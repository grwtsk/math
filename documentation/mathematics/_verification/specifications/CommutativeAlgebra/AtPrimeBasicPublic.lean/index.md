# Verification target: At Prime Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7eebc43c1d7f01f6484aae60c4c7433c8b48c39a",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7eebc43c1d7f01f6484aae60c4c7433c8b48c39a`.

Source path: `GRWTSK/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsLocalization.AtPrime](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/islocalization-atprime.md) | 52 | `declaration-track:a116038ad95bfa47c24e6f3a2e205cbf937c845a4154944faf1275d971c08455` |
| 2 | `abbrev` | [Localization.AtPrime](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/localization-atprime.md) | 57 | `declaration-track:15b6ec18634fb645f434c4eba7f1880769b1536f89d97433c462898e43d90f6c` |
| 3 | `theorem` | [AtPrime.nontrivial](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/atprime-nontrivial.md) | 62 | `result-track:780c24586198fed95585e2078960baeea303b6bcc39768012c1a04f0d1672916` |
| 4 | `theorem` | [AtPrime.isLocalRing](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/atprime-islocalring.md) | 69 | `result-track:01430ac8e04ce218bba2fd154041fbf9e746963e08becf72e8029ec5397499d0` |
| 5 | `instance` | [isDomain_of_local_atPrime](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/isdomain-of-local-atprime.md) | 98 | `declaration-track:210f8de115d44e957fc70f7ab78c38d34683b785389874d1da72b842e33e5805` |
| 6 | `instance` | [AtPrime.isLocalRing](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/atprime-islocalring-source-edition-2.md) | 107 | `declaration-track:aa23c4c28852c29ca2e1b485ff1a878f2e172c710b065c349cc79c615d549211` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/instance-source-edition-3.md) | 110 | `declaration-track:9bdd15f5f97bea253cdd10a620df76a826fa608f8edaa9ceed9b818a1989600a` |
| 8 | `theorem` | [_root_.IsLocalization.AtPrime.faithfulSMul](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/root-islocalization-atprime-faithfulsmul.md) | 116 | `result-track:6daca3ee00065832ee8e0e5583adda9cb3d40609475db12619b72ff90b6cab12` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/instance-source-edition-2.md) | 122 | `declaration-track:8efd72241b444f660c08374e4dbb3ac8e3e0df4926920b67d3babb238ebae378` |
| 10 | `theorem` | [isDomain_of_atPrime](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/isdomain-of-atprime.md) | 134 | `result-track:590f10079c5f81c33d4729f90ea0b11b6a6ef39d4ce7c42be46fe6bdff564bde` |
| 11 | `def` | [orderIsoOfPrime](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/orderisoofprime.md) | 145 | `declaration-track:e8e9e8bc4d0e078f8ba6d1c7fc2df70a9033f7a85f3f522b7b19bbeb094cfabc` |
| 12 | `def` | [primeSpectrumOrderIso](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/primespectrumorderiso.md) | 152 | `declaration-track:fcbdbe9aefab729fb3036beb21db56bb7c0ab6cc10cf5ab47eed4e86c8b3f9ec` |
| 13 | `theorem` | [isUnit_to_map_iff](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/isunit-to-map-iff.md) | 156 | `result-track:fbffa0c4259aef65a779b6f3fe5a34bc0bcfd4c35b10ea25b90ba442a34ce97c` |
| 14 | `theorem` | [to_map_mem_maximal_iff](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/to-map-mem-maximal-iff.md) | 164 | `result-track:8bc42ad4b721586a9c82fe7b141054566e19f64108c497efa3fa6c938d3c5692` |
| 15 | `theorem` | [under_maximalIdeal](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/under-maximalideal.md) | 170 | `result-track:8fbb1df4529c9b98db11b0280f1396b593a7d87d7a27771e40b5a608c5769c94` |
| 16 | `instance` | [liesOver_maximalIdeal](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/liesover-maximalideal.md) | 176 | `declaration-track:0b3a63c2fa74bcef2091e5132d832e8814ed69004bd9a1bb2ba359dbe0330c9e` |
| 17 | `theorem` | [isUnit_mk'_iff](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/isunit-mk-iff.md) | 180 | `result-track:ae7d6b873bc871557ba501e129a76d48ac85fa151aabe7844d84f6b2a1c0c1a9` |
| 18 | `theorem` | [mk'_mem_maximal_iff](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/mk-mem-maximal-iff.md) | 184 | `result-track:8a8d69794eae2b8ae2f101722836b81bb5326e800337f3a48c81caa672dd3f28` |
| 19 | `theorem` | [AtPrime.under_maximalIdeal](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/atprime-under-maximalideal.md) | 202 | `result-track:15b23d8653633b061f3c2188f2820d2db3f0acf38cab9dba223257d9d09999c7` |
| 20 | `theorem` | [AtPrime.map_eq_maximalIdeal](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/atprime-map-eq-maximalideal.md) | 210 | `result-track:facc0741214de704c0f618ceca80a35051db5c29fdafe75d79b340df44df4ed3` |
| 21 | `lemma` | [AtPrime.eq_maximalIdeal_iff_under_eq](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/atprime-eq-maximalideal-iff-under-eq.md) | 216 | `result-track:1574b65844fc0910a8a51c5087ba45aa7ca4849c7d75362a22f741ff3bb6990b` |
| 22 | `theorem` | [le_comap_primeCompl_iff](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/le-comap-primecompl-iff.md) | 225 | `result-track:ebebb066a6989dcdb682eec281d5bf029e045d82adab988598de4e2170977791` |
| 23 | `def` | [localRingHom](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/localringhom.md) | 240 | `declaration-track:209a040c7fa30bddac2844f8bb87bb82565e09248c31e53ca1322da6777b4fe6` |
| 24 | `theorem` | [localRingHom_to_map](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/localringhom-to-map.md) | 245 | `result-track:ac6c9eaa27179b0698f9fba679ef0ee4710648a91ce676be44553c2356d4e3d3` |
| 25 | `theorem` | [localRingHom_mk'](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/localringhom-mk.md) | 250 | `result-track:ad2f4b07105e1b6b479d3416eecfb2755abef9523e0259cdcd4f1fdd073759e0` |
| 26 | `theorem` | [localRingHom_mk](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/localringhom-mk-source-edition-2.md) | 258 | `result-track:c79d52a42d0d32a70d0d7a68a2f87dc2080092bb1d2c556c4ac7386048b09e55` |
| 27 | `theorem` | [isLocalHom_localRingHom](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/islocalhom-localringhom.md) | 264 | `result-track:251c3f9ec2b01aa54c2eeb8a120879edb5fc41c56d8c6e0481002860f04b6bda` |
| 28 | `theorem` | [localRingHom_unique](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/localringhom-unique.md) | 272 | `result-track:5570ec65535cf836121941ecdc35d2400ac48e2170da8f6df0ceda028045b2e2` |
| 29 | `theorem` | [localRingHom_id](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/localringhom-id.md) | 278 | `result-track:fc0b1f8630116c338d9d2a937ef6e69a8e4784af4b2e62623aa1fa1d09f65b1a` |
| 30 | `theorem` | [localRingHom_comp](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/localringhom-comp.md) | 282 | `result-track:1ba8e66fe70ae681f3e9d7130abd429aee7a80108de5a65f1a0dfde9eb7f6143` |
| 31 | `def` | [localRingEquiv](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/localringequiv.md) | 291 | `declaration-track:30d0c83ee00d5ded1ee69dbf15153b9ea818a93f4d9b7a88ecbd2ad10d0d213a` |
| 32 | `def` | [localAlgHom](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/localalghom.md) | 304 | `declaration-track:12db3682da2d371bb334c8d744fcbad9faf6c89d27358111fc536e6160ed7a99` |
| 33 | `lemma` | [localAlgHom_apply](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/localalghom-apply.md) | 313 | `result-track:f2994bc6b472fc3779d2f40b4619c48114d29e0ed04426cb630d57ab8cb05003` |
| 34 | `def` | [localAlgEquiv](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/localalgequiv-source-edition-2.md) | 322 | `declaration-track:8df3f96e1e22b2d76e13282fd702ccdda68a26fbc2393c57e9c465d7a33893b7` |
| 35 | `lemma` | [localRingHom_bijective_of_saturated_inf_eq_top](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/localringhom-bijective-of-saturated-inf-eq-top.md) | 328 | `result-track:78e6ad457cd83409abe07e5da67367e673931fbafac7814a54bc8247632aa2c1` |
| 36 | `def` | [algebraOfLiesOver](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/algebraofliesover.md) | 364 | `declaration-track:a5e48aee0fb66fb9353ebb6209ea17d6ef2c97ce3e17b46339adba90807afadd` |
| 37 | `abbrev` | [IsLiesOverAlgebra](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/isliesoveralgebra.md) | 373 | `declaration-track:d0f677c2c27eb1132b96756c0defb381424114442937b7dd1de7be3cff6ec355` |
| 38 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/instance-source-edition-5.md) | 377 | `declaration-track:e877dfde86c4b6a8a90b37db6770c91ce0b57ffa50c071b5ebced7e25a486068` |
| 39 | `theorem` | [algebraMap_eq](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/algebramap-eq.md) | 385 | `result-track:6578bce9d9e432c1c98fbee1fee9e8193ee7d318294f0b214ba0f69dc4211241` |
| 40 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/instance-source-edition-4.md) | 396 | `declaration-track:b5e130ccf09be61a56aa356b749ac25215ef7d5a6a0b105815f1b06511725084` |
| 41 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/instance.md) | 402 | `declaration-track:34abc57727b319205f100249c448915e36b36699494a3c1ed4c11d44bd141f80` |
| 42 | `abbrev` | [mapPiEvalRingHom](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/mappievalringhom.md) | 420 | `declaration-track:ccca3131dee9a6c2747e8a5b7cf558e4296dd937c4ed2098d45a78fa0ebf9522` |
| 43 | `theorem` | [mapPiEvalRingHom_bijective](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/mappievalringhom-bijective.md) | 424 | `result-track:5f232d8493659edd6c3209682a51f55f3102b1cc0c19c1115fa12dcf72506981` |
| 44 | `theorem` | [mapPiEvalRingHom_comp_algebraMap](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/mappievalringhom-comp-algebramap.md) | 427 | `result-track:5746e9339adad8c17d71a3a16d48a91e376721499a588465d0983ea13dfffdc4` |
| 45 | `theorem` | [mapPiEvalRingHom_algebraMap_apply](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/mappievalringhom-algebramap-apply.md) | 431 | `result-track:955957d38ba00206a33c4bc2e740cee5d36107b4cad0652a0fd80b74a2cf6c65` |
| 46 | `def` | [localAlgHom'](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/localalghom-source-edition-2.md) | 453 | `declaration-track:d87418c9ec4703eaf96b1b2f055cc1a68e60691bd78639c191e3105cbfbb71af` |
| 47 | `def` | [localAlgEquiv'](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/localalgequiv.md) | 464 | `declaration-track:391a5b1e09f676101ed6fa8afb0ec64a82ec9c53820ea9374534ee0843288a85` |
| 48 | `lemma` | [Ideal.isPrime_map_of_isLocalizationAtPrime](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/ideal-isprime-map-of-islocalizationatprime.md) | 477 | `result-track:3b7482f54bb33f1fe48c333df0d8a31a3ef24efad6ab724178218c40ec6154be` |
| 49 | `lemma` | [Ideal.under_map_of_isLocalizationAtPrime](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/ideal-under-map-of-islocalizationatprime.md) | 483 | `result-track:fea49cfa09dfa79345cb83f8b209bd29c902fdd5675b304435ff2613f575b978` |
| 50 | `lemma` | [IsLocalization.subsingleton_primeSpectrum_of_mem_minimalPrimes](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/islocalization-subsingleton-primespectrum-of-mem-minimalprimes.md) | 489 | `result-track:349560f524244f9066ffb4e4dd87a683e02caa342fdf8c1d19bd67adf15de1c0` |
| 51 | `lemma` | [IsLocalization.liesOver_of_isPrime_of_disjoint](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/islocalization-liesover-of-isprime-of-disjoint.md) | 502 | `result-track:aee855a9f119ec0aa5961ecb501203788cd1261c4271024a3487712d326d6fbe` |
| 52 | `theorem` | [isPrime_map_of_liesOver](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/isprime-map-of-liesover.md) | 529 | `result-track:e259e93e61d3e6a22161bc6c4e38fb41e20057cf04bb02e783e90e3f1315105d` |
| 53 | `theorem` | [map_eq_maximalIdeal](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/map-eq-maximalideal.md) | 532 | `result-track:469c9174b84bf79c270ff46eb8372e52d7408f0721a6756cba66a4aeccdabecd` |
| 54 | `instance` | [isMaximal_map](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/ismaximal-map.md) | 536 | `declaration-track:e2d635a65cd2c7b1edd71b2b59d1c996922b0ee5dbce6b39de187263abf82399` |
| 55 | `theorem` | [under_map_of_isMaximal](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/under-map-of-ismaximal.md) | 540 | `result-track:e2fa677d2f87851a03c9b505bd48debe375a7bfcc512483a5d94ebefdccc31c8` |
| 56 | `lemma` | [under_maximalIdeal_pow](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/under-maximalideal-pow.md) | 546 | `result-track:4a23e584743ca356133704470cbe71096a23338c2a5057cfd2af660dce84d853` |
| 57 | `def` | [equivQuotMaximalIdeal](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/equivquotmaximalideal.md) | 568 | `declaration-track:2e6e912205287843f9eb3eee12187fa09dea28d0d9cab2797a24c45ccfc0e3dd` |
| 58 | `theorem` | [equivQuotMaximalIdeal_apply_mk](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/equivquotmaximalideal-apply-mk.md) | 593 | `result-track:6420a5248bfc4014c1dc34b9fafc6d2df2f439ab6a08b971cd0d687f72020d5a` |
| 59 | `theorem` | [equivQuotMaximalIdeal_symm_apply_mk](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/equivquotmaximalideal-symm-apply-mk.md) | 598 | `result-track:91321396eaa171ef91a47ad52990dc4a5f177b56bacecd431a6d4322bfcf474b` |
| 60 | `def` | [equivQuotMaximalIdealPow](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/equivquotmaximalidealpow.md) | 614 | `declaration-track:643be1794e957b410e6df7d4e4f736a71a511142df42bbddd4b870037b08be7f` |
| 61 | `theorem` | [equivQuotMaximalIdealPow_apply_mk](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/equivquotmaximalidealpow-apply-mk.md) | 631 | `result-track:4a9140a499c1d8c13ff66963c0fc29b4d4b75a7f0594db367af9fe12dadbe1a0` |
| 62 | `theorem` | [equivQuotMaximalIdealPow_symm_apply_mk_mul](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/equivquotmaximalidealpow-symm-apply-mk-mul.md) | 638 | `result-track:93791b97d9450799055a8d638b6431de84fc19358e53f49e98642c3b008ffbff` |
| 63 | `lemma` | [under_map_eq_map](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/under-map-eq-map.md) | 650 | `result-track:bc210582908ca3a87268b8dae4891b3089c2771de8627ebca79999573bd6503e` |
| 64 | `def` | [equivQuotientMapMaximalIdeal](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/equivquotientmapmaximalideal.md) | 687 | `declaration-track:75e59d47e3b7cb07a51a64c81056911cc4ad541b0bc498dc6742639cf2050b49` |
| 65 | `lemma` | [map_eq_top_of_not_le](../../../../CommutativeAlgebra/AtPrimeBasicPublic.lean/declarations/map-eq-top-of-not-le.md) | 723 | `result-track:dd65d3e0a8604484a583488fc3ec79c35e5d11eafe3a8161bf808e858fc90d71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f457e5c3aad95248e4e90e810f4bec6a9bb0d6e9faed1612c555358711e1a3c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
