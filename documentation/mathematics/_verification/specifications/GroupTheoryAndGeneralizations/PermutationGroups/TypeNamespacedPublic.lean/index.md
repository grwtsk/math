# Verification target: Type Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af97715d678218318df33e17c0ede8dad02f2b0f",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Type/Variant99ae810694815e86e4b44895f39b175b7e29ce02c2c67169b96f40cc437add4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af97715d678218318df33e17c0ede8dad02f2b0f`.

Source path: `GRWTSK/Algebra/GroupTheory/Type/Variant99ae810694815e86e4b44895f39b175b7e29ce02c2c67169b96f40cc437add4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Type/Variant99ae810694815e86e4b44895f39b175b7e29ce02c2c67169b96f40cc437add4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-source-edition-2.md) | 61 | `declaration-track:405e8540b2dc2067d03f63931fe779b4346344507e8bb18f230470f743981f10` |
| 2 | `theorem` | [cycleType_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-def.md) | 64 | `result-track:18027f7100a4b0093f70a21d6eea38ab3fdebc9f7d9f9ddbf8e23ff5889d4296` |
| 3 | `theorem` | [cycleType_eq'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-eq.md) | 68 | `result-track:814c348e6d2cd0c9d7a3930915135c61e04426e8382ef68a8402e8ef884f287b` |
| 4 | `theorem` | [cycleType_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-eq-source-edition-2.md) | 77 | `result-track:82f5bd62f52d7eb624dafae8b4b19e84eee3880ad228e5c9c0388409fb830016` |
| 5 | `theorem` | [CycleType.count_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-count-def.md) | 87 | `result-track:39017fd8e556f2a49991020db63246eeb859ad16db3167cd919ec9bf1475c6c3` |
| 6 | `theorem` | [cycleType_eq_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-eq-zero.md) | 101 | `result-track:4ac01e65e0411895c833b5e42a7a4aaf8bea14c04636746231ad3d3c936d3d1a` |
| 7 | `theorem` | [cycleType_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-one.md) | 105 | `result-track:1fdb500ae3f4dd8324d528bc7fb86a279acc3c38d6e019b7a578ca087ef2e7fc` |
| 8 | `theorem` | [card_cycleType_eq_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/card-cycletype-eq-zero.md) | 107 | `result-track:afa339e273fdb54d70594269b7ae7d25e047a0d6bb65c6878d258c246f25ea18` |
| 9 | `theorem` | [card_cycleType_pos](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/card-cycletype-pos.md) | 110 | `result-track:1c46ff102fbec38a591efec70c142264b05d02406a068adcc659eb9804806f0e` |
| 10 | `theorem` | [two_le_of_mem_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/two-le-of-mem-cycletype.md) | 113 | `result-track:23c851e691d56ba92abb9b86829bfb4e97c30414d4b973b73ec1c0116d7ca780` |
| 11 | `theorem` | [one_lt_of_mem_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/one-lt-of-mem-cycletype.md) | 119 | `result-track:4b72fd34562be2f46ccda3e4915ee91498c265c83b45010e0cec1fee3cdf96a6` |
| 12 | `theorem` | [IsCycle.cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/iscycle-cycletype.md) | 122 | `result-track:0344e81ff750ffc14f5b88c34855052c6e076e68e1f7cf9d8f793e61f4c33261` |
| 13 | `theorem` | [card_cycleType_eq_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/card-cycletype-eq-one.md) | 126 | `result-track:21d451b97c14e099f595aad1487851df383a460e336964d9f78be95f78e26925` |
| 14 | `theorem` | [Disjoint.cycleType_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/disjoint-cycletype-mul.md) | 132 | `result-track:81ee548c4dc150dde62fa543fd539205683ef2b995dd95f18afc3370128909f6` |
| 15 | `theorem` | [cycleType_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-inv.md) | 139 | `result-track:9b9c0d2e62d49c35cd6400487eff83b39a2d6db8e4f5b80d9a3063fe3156d664` |
| 16 | `theorem` | [cycleType_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-conj.md) | 147 | `result-track:d0960a56ddfbbe052b10a997da4830c4964f28f6c7953f3a919f5c40421316e2` |
| 17 | `theorem` | [sum_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/sum-cycletype.md) | 154 | `result-track:0b27dcf5a8b045f6ad7e51032181ff20207c97fa7a6a5454f272d247cdc4738b` |
| 18 | `theorem` | [sum_cycleType_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/sum-cycletype-le.md) | 160 | `result-track:dc9302732bcaf98df71622b91078a9afd37330f5bc79395d383642e5fa4c8bfb` |
| 19 | `theorem` | [card_fixedPoints](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/card-fixedpoints.md) | 163 | `result-track:beb86bcf0a974520ad710a630146295cd792e04355be4570d0e76909f35cae2d` |
| 20 | `theorem` | [sign_of_cycleType'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/sign-of-cycletype.md) | 168 | `result-track:17a365b0094d493f963fdbf35e0a7fa790848f1b6d944fecb752864307b43638` |
| 21 | `theorem` | [sign_of_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/sign-of-cycletype-source-edition-2.md) | 175 | `result-track:ea5596e6cdb2050a11775941cd504d82de4a22e3445ea5dd042954e9979f0943` |
| 22 | `theorem` | [lcm_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/lcm-cycletype.md) | 185 | `result-track:25fd1f61170728544cd90f961afdec50b2888bebfb1053ea06973cb69726f121` |
| 23 | `theorem` | [dvd_of_mem_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/dvd-of-mem-cycletype.md) | 191 | `result-track:6fc43dc60037d8fce36abea6bc4301c664f67a7a65a521e8b39465252b9adcb2` |
| 24 | `theorem` | [orderOf_cycleOf_dvd_orderOf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/orderof-cycleof-dvd-orderof.md) | 195 | `result-track:4d1f189c5fa4bf3262d5569e6e1b542be8705acb01561ee791a264de30aee28c` |
| 25 | `theorem` | [two_dvd_card_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/two-dvd-card-support.md) | 205 | `result-track:18f21dc6920e5afd525b2f63025a5f800e7d4e8ce8811a60c1b0c2ffd425be20` |
| 26 | `theorem` | [cycleType_prime_order](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-prime-order.md) | 213 | `result-track:85c6e163e43caa561deace311d81e3e094bf3a92a7e625c59eba63ddccd7b4d0` |
| 27 | `theorem` | [pow_prime_eq_one_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/pow-prime-eq-one-iff.md) | 222 | `result-track:e4d7a1a090577b9ac3a453aab4725aa56910807f09eede1fc946e8c17a2abc48` |
| 28 | `theorem` | [cycleType_of_pow_prime_eq_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-of-pow-prime-eq-one.md) | 230 | `result-track:333241d8b0ed16306b9ea2370f04311ed504df9a08f8025ae63cc06bc3403562` |
| 29 | `theorem` | [isCycle_of_prime_order](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/iscycle-of-prime-order-source-edition-3.md) | 234 | `result-track:e757c9aa3b5948561e8dd8bc04b735f29343151190ae1b36f06ded66ec26c989` |
| 30 | `theorem` | [cycleType_le_of_mem_cycleFactorsFinset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-le-of-mem-cyclefactorsfinset.md) | 241 | `result-track:22a82d5ea49a5c6ca7f9eaa919b8b4638ceabae1687314f720dc868edbd81546` |
| 31 | `theorem` | [Disjoint.cycleType_noncommProd](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/disjoint-cycletype-noncommprod.md) | 248 | `result-track:2d57567e2e64ce0b2503b86a9977051c82555f3bcb7fec6b26f0a03d95ae5391` |
| 32 | `theorem` | [cycleType_mul_inv_mem_cycleFactorsFinset_eq_sub](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-mul-inv-mem-cyclefactorsfinset-eq-sub.md) | 267 | `result-track:1624c58171c13c038531e70646793c483bb78b0bdadb47690e16927d57350b91` |
| 33 | `theorem` | [isConj_of_cycleType_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/isconj-of-cycletype-eq.md) | 274 | `result-track:322d1ce3fef12d528bccd1b45e8ba459a2aa052d79b455efad995b43cbbcdbe2` |
| 34 | `theorem` | [isConj_iff_cycleType_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/isconj-iff-cycletype-eq.md) | 301 | `result-track:2935c3f34cb3f44d2ab62a89065489b1221a8fb16c8cf49b326c4db2725a5744` |
| 35 | `theorem` | [cycleType_extendDomain](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-extenddomain.md) | 307 | `result-track:cd2225311113d4a0983ebaada1c68365c862c28657e9c788de1d3fedb8e0e847` |
| 36 | `theorem` | [cycleType_ofSubtype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-ofsubtype.md) | 317 | `result-track:976f0e80bc205934353d55856ee4f1e9c9e20dd28099e21f2fe7a626737427d7` |
| 37 | `theorem` | [mem_cycleType_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/mem-cycletype-iff.md) | 322 | `result-track:e2a5687b12dbc3d43880f5780109a63361ea94a33928515b81f606bc32599d00` |
| 38 | `theorem` | [le_card_support_of_mem_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/le-card-support-of-mem-cycletype.md) | 336 | `result-track:d2a336f47377959934ffe026972f77189201c7200f79234948d1ec0ad48249f5` |
| 39 | `theorem` | [cycleType_of_card_le_mem_cycleType_add_two](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-of-card-le-mem-cycletype-add-two.md) | 340 | `result-track:cf4862268a35570ae8e23cfdfd4c271a234a4400df902a5d5da966846a4f19cb` |
| 40 | `theorem` | [sign_of_cycleType_eq_replicate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/sign-of-cycletype-eq-replicate.md) | 348 | `result-track:389fb5e09a7677fd4a6e4c8683ad9312af8cb7a11690eddcb12d39b2832b9cd8` |
| 41 | `theorem` | [sign_of_pow_two_eq_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/sign-of-pow-two-eq-one.md) | 360 | `result-track:61717a1cac720b0d3430df794ecb536c8df2cfaf4286ca1dc16c979ef110e96d` |
| 42 | `theorem` | [card_compl_support_modEq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/card-compl-support-modeq.md) | 367 | `result-track:e5d643da559041f7258e279ee13a62448322be39e7bc70cf81e0b85370e83500` |
| 43 | `theorem` | [card_fixedPoints_modEq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/card-fixedpoints-modeq.md) | 381 | `result-track:7a0f53a94ff968db06492dbd3450d2f8864ec93f8923ccad1211d9bc3094e174` |
| 44 | `theorem` | [exists_fixed_point_of_prime](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/exists-fixed-point-of-prime-source-edition-2.md) | 396 | `result-track:6ca7e5ba692c0bf51d9e053593c56513a6534779c04e8e5c8d4a13603978ea76` |
| 45 | `theorem` | [exists_fixed_point_of_prime'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/exists-fixed-point-of-prime.md) | 404 | `result-track:1fa8953bd4b5dbcd9442f65d654801535863938b73998d7447bbcb80f2a7643b` |
| 46 | `theorem` | [isCycle_of_prime_order'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/iscycle-of-prime-order.md) | 414 | `result-track:5f27b1e590653971f6fa7682bbea715dc5feb706f099a7b98310f448b75b350b` |
| 47 | `theorem` | [isCycle_of_prime_order''](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/iscycle-of-prime-order-source-edition-2.md) | 418 | `result-track:cb115727e2669dea167f30fdc4cc716f08862059d53f6af2d6ff39d5a8ecce6a` |
| 48 | `def` | [vectorsProdEqOne](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/vectorsprodeqone.md) | 429 | `declaration-track:66c80bc2f69b9f9e961af25a5f52589efa7aaaca8b6dbc1bfa97976c82aa9cef` |
| 49 | `theorem` | [mem_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/mem-iff.md) | 434 | `result-track:66267377751e0e0381cfbfac13a404560377b597955aac2318aad22441764088` |
| 50 | `theorem` | [zero_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/zero-eq.md) | 437 | `result-track:8e2c891fb2598f71bcb5076a7bd1c818bbe8d68a5d5887d30f4b0fb3cb9de470` |
| 51 | `theorem` | [one_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/one-eq.md) | 440 | `result-track:7dbbb3ac4983a32ed9dfbedd72b496699ec065bd724c5c444e8f2af66e537a21` |
| 52 | `instance` | [zeroUnique](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/zerounique.md) | 445 | `declaration-track:4b38babbdf68fb0a79ed586c921e9cd04cff8e00556c6da458d69fa81e993ca2` |
| 53 | `instance` | [oneUnique](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/oneunique.md) | 449 | `declaration-track:b68fd3ef2202ccb64fd21001efc5bebed426e95c6b6b5540b0937d84cbc4c7cd` |
| 54 | `def` | [vectorEquiv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/vectorequiv.md) | 456 | `declaration-track:219f70a51d761a1c83f57a9fceae633884a31e235d204a65595dda5eecc1b6df` |
| 55 | `def` | [equivVector](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/equivvector.md) | 471 | `declaration-track:1be6837d0d3b0b9b47e165ede4f6b5558e647afb72862f9c8cc2af7f62e8ac86` |
| 56 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/instance.md) | 475 | `declaration-track:66f44182bc0d68d58cae8e94575c37672cc0278e2430c72354d528f4afae55f7` |
| 57 | `theorem` | [card](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/card.md) | 478 | `result-track:4f4f6474681b2049bcea32ee068d4e80c2c0986eb8271385eefe7fcd7b29034b` |
| 58 | `def` | [rotate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/rotate.md) | 485 | `declaration-track:050cd498c41e95794b80642b0fef47e22ce605e101799e1a8174cf9ecd3b5fe8` |
| 59 | `theorem` | [rotate_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/rotate-zero.md) | 488 | `result-track:c1d62694f41b2cf8ce3f86e04dacda8f50e52a8f3fe98e02ccd8f2fe2f780386` |
| 60 | `theorem` | [rotate_rotate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/rotate-rotate.md) | 491 | `result-track:29fdbef73f816f025596eb1eb0ed87c3efcdb9358f73775e3e006167d79a5e24` |
| 61 | `theorem` | [rotate_length](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/rotate-length.md) | 494 | `result-track:b2fd909117e33587368f4c94db35f6f0cc18d3228a9741403615ce4a913edd82` |
| 62 | `theorem` | [Type Namespaced Public](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/exists-prime-orderof-dvd-card-source-line-502-occurrence-2.md) | 502 | `result-track:e20353c301d7dc352bbaa422f4d348dcef6f0bb88d2b6cd6c62c54755d6a666d` |
| 63 | `theorem` | [Type Namespaced Public](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/exists-prime-addorderof-dvd-card.md) | 538 | `result-track:088d400a32892375c4232f144869dd7514daff23442cd597080985fb781725bc` |
| 64 | `theorem` | [Type Namespaced Public](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/exists-prime-orderof-dvd-card.md) | 549 | `result-track:8c458b3a93f4a320e2847576f86c1807788f1f7eb1790c470d2d15a9473aff12` |
| 65 | `theorem` | [subgroup_eq_top_of_swap_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/subgroup-eq-top-of-swap-mem.md) | 557 | `result-track:b70dcc308d6e3430aeab0daebbcf7466473a206969ba6820b5cfcf9f7f839866` |
| 66 | `def` | [partition](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/partition.md) | 575 | `declaration-track:59de88307e49f9fab10bc766a751544d8b5eb87d4be79b51288540a4c0b1e192` |
| 67 | `theorem` | [parts_partition](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/parts-partition.md) | 585 | `result-track:d3fa12152d111a7f0248bc446568b348a9706c058a85c44beea6866f75237c5e` |
| 68 | `theorem` | [filter_parts_partition_eq_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/filter-parts-partition-eq-cycletype.md) | 589 | `result-track:78afc43fb0f5bd875d0c27bcf4c73958a9b277d6205337070065915b1e305714` |
| 69 | `theorem` | [partition_eq_of_isConj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/partition-eq-of-isconj.md) | 596 | `result-track:1c407d16c1f958063f98f832a9f9967e305eeb377cbacc13432cdf98db266d79` |
| 70 | `theorem` | [isSwap_iff_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/isswap-iff-cycletype.md) | 609 | `result-track:815eb06193fe42943cc142586167609110afb5897cce34125cfb28f9e5255db3` |
| 71 | `theorem` | [IsSwap.orderOf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/isswap-orderof.md) | 617 | `result-track:ae441db558c58fb1a7529e3748ee26ff06083e7ba6c350a5aea60699f96c0e19` |
| 72 | `def` | [IsThreeCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/isthreecycle.md) | 629 | `declaration-track:14c17ccdf044962914fc61386eb3e53ddb44880f9664c105a6e7d877d50a780c` |
| 73 | `theorem` | [cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype.md) | 636 | `result-track:2b94104f963ac1b22c00a30ee60b677bf51b15bc378746904b4e049421c11771` |
| 74 | `theorem` | [ne_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/ne-one.md) | 639 | `result-track:52fbb8dc0b3ae570e813ddaf30ea4049b223666cac159d255cad62a0827d0f51` |
| 75 | `theorem` | [card_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/card-support.md) | 643 | `result-track:eb5067c2974cb2e2d15bcc68506f20a0afb6a8a7b262b1c501b3c3822601a878` |
| 76 | `theorem` | [Type Namespaced Public](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/card-support-eq-three-iff.md) | 646 | `result-track:e201bde73381b6e73e29f6de1d162d009b89cbdf251ba7df538470d86c453eda` |
| 77 | `theorem` | [isCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/iscycle.md) | 660 | `result-track:fc76a46c4b1db39a6f89949edddbdf279509f93af3c906d0f6fc0b33119e1a77` |
| 78 | `theorem` | [sign](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/sign.md) | 663 | `result-track:e1a3ef9308c126f302629aedae3e1bc907dd784f93306630576e6d89dc2dee49` |
| 79 | `theorem` | [inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/inv.md) | 667 | `result-track:83d52752403d3c5e066f9da391718e46c886ed73ba6832d7371968854012a4d3` |
| 80 | `theorem` | [inv_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/inv-iff.md) | 671 | `result-track:03d029b4cc5ae89ab36593252738e9ebdf6d7bf5fc62c6c96cad0826afff9b63` |
| 81 | `theorem` | [orderOf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/orderof.md) | 676 | `result-track:7573de28ff47d0d76f50374267ee20d8a203045b9c796dbda424a7fd27870d57` |
| 82 | `theorem` | [isThreeCycle_sq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/isthreecycle-sq.md) | 679 | `result-track:be98ca1b40b9c267cb51491bf88cbea4175aaf1f2fa530481c151c4fac2dc9ba` |
| 83 | `theorem` | [isThreeCycle_swap_mul_swap_same](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/isthreecycle-swap-mul-swap-same.md) | 690 | `result-track:f7306464b9ba27982425c4ef22def96a3f673048bb7efa54e95621ce0ecb3f06` |
| 84 | `theorem` | [IsThreeCycle.support_eq_iff_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/isthreecycle-support-eq-iff-mem-support.md) | 700 | `result-track:23572ea5ec00dd7871a278c804d735bd3e28b7a8bc6941b5df708e040ffd3f13` |
| 85 | `theorem` | [IsThreeCycle.nodup_iff_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/isthreecycle-nodup-iff-mem-support.md) | 725 | `result-track:26b9bc2cd101f580135eb4644386171f07a25a38a394e2ffceb4f5ed2d1860e1` |
| 86 | `theorem` | [IsThreeCycle.eq_swap_mul_swap_iff_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/isthreecycle-eq-swap-mul-swap-iff-mem-support.md) | 736 | `result-track:dbe246e010be88f667b28a217cec4daa20402b6c7cc063cedccfd160ea97c477` |
| 87 | `theorem` | [swap_mul_swap_same_mem_closure_three_cycles](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/swap-mul-swap-same-mem-closure-three-cycles.md) | 765 | `result-track:ba9a63299067e688d3b96996a315e03e796b0d680203096cd1d168cf0ec5f220` |
| 88 | `theorem` | [IsSwap.mul_mem_closure_three_cycles](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/isswap-mul-mem-closure-three-cycles.md) | 772 | `result-track:711fb4d747794653486b22a473e94f07c7301bb94b313170daf20743193e999b` |
| 89 | `theorem` | [cycleType_swap_mul_swap_of_nodup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedPublic.lean/declarations/cycletype-swap-mul-swap-of-nodup.md) | 792 | `result-track:595052c99d03552539a793ebe6523b067c1ce4b08d76e8e567721e0a09d8ac05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb3ec2068948603fd2a79a67bba89f3929c827424fc75cd5f7edb50d80c4a83e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Type/Variant99ae810694815e86e4b44895f39b175b7e29ce02c2c67169b96f40cc437add4c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Type/Variant99ae810694815e86e4b44895f39b175b7e29ce02c2c67169b96f40cc437add4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
