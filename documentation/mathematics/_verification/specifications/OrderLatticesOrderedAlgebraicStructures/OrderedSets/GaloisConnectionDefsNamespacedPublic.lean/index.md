# Verification target: Galois Connection Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19191c45cc3f509b840d1f8323f87da1dbe0efed",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant9ca7c4ff1dffda3b7d3348a9e27b2307c2f5a20871c51f87d33a52ec70747fa2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19191c45cc3f509b840d1f8323f87da1dbe0efed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant9ca7c4ff1dffda3b7d3348a9e27b2307c2f5a20871c51f87d33a52ec70747fa2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant9ca7c4ff1dffda3b7d3348a9e27b2307c2f5a20871c51f87d33a52ec70747fa2.lean.json)

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
| 1 | `def` | [GaloisConnection](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/galoisconnection.md) | 48 | `declaration-track:9d6a97c8017692621d71a1601f459ebd15fa6d00c077f6bab6e5f4ad5594f2cb` |
| 2 | `theorem` | [monotone_intro](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/monotone-intro.md) | 63 | `result-track:758f8d9b1d9c5cabc61e19e539b166c186c8d2ac3b851585f9cf67e47e5caea1` |
| 3 | `theorem` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/dual.md) | 68 | `result-track:a9db9bdb2dccc7a17f9648a62a3a0515f08923f03e4fc70d55d47d9e27020ebd` |
| 4 | `theorem` | [le_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/le-iff-le.md) | 77 | `result-track:6f70dc65e7921d7e84c3eac76f2be04c6075e1bd6bd6ee47f0a8bd6cbc0baa6d` |
| 5 | `theorem` | [l_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/l-le.md) | 81 | `result-track:e79db667635d5ec194c117480f8db8f32304894ddd1534f2516c4b181cdb5259` |
| 6 | `theorem` | [le_u_l](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/le-u-l.md) | 85 | `result-track:d1aef96a13f9f566bb1cbaccbfaf1096b75b0f443882df9c9c5f2a789f1af14f` |
| 7 | `theorem` | [monotone_u](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/monotone-u.md) | 89 | `result-track:6a354cc30e0832585d8b10aed2182e7d70075213f41ab64a1ce9c87bce61499c` |
| 8 | `theorem` | [monotone_l_comp_u](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/monotone-l-comp-u.md) | 92 | `result-track:298cfd15ecaff394e1430bfd371925c93e2b906c0a7e4043508392c36cc31f63` |
| 9 | `theorem` | [le_u_l_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/le-u-l-trans.md) | 99 | `result-track:c6f8a6fd81e81fa98c0599738bff058b93b24a1ed7b082302d2286bcccfe3743` |
| 10 | `theorem` | [u_l_u_eq_u](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/u-l-u-eq-u.md) | 110 | `result-track:3dd081029289549d507e87878b5257d9be8766d71f2efaffb5c794bf5a7ad9e0` |
| 11 | `theorem` | [u_l_u_eq_u'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/u-l-u-eq-u-source-edition-2.md) | 114 | `result-track:f95f9d714d01eae19329bfd1eabe268221f99319e8b7f91c5a7554b2811dfad7` |
| 12 | `theorem` | [u_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/u-unique.md) | 118 | `result-track:7d3d7ff024040af90b6c86149acb95e0a98bc656507b938b4961859e5a989d8d` |
| 13 | `theorem` | [exists_eq_u](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/exists-eq-u.md) | 124 | `result-track:2fb8a5f91d4a3220f473352575490e1383c9311a5bfacd78d099bb357beaf397` |
| 14 | `theorem` | [u_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/u-eq.md) | 128 | `result-track:e01521957441c7f185e8d16ed4ae725b257b9024d4c6c49511ca91d289ab5fe0` |
| 15 | `theorem` | [u_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/u-eq-top.md) | 142 | `result-track:17b41a2159d6ded08541d8c0eb380857b317328c6dfc00ab6199724a2a340ad5` |
| 16 | `theorem` | [u_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/u-top.md) | 146 | `result-track:dcd7310042d876d1ee05586c44957ce02cd835b3ec9145cf1f35f8874342305f` |
| 17 | `theorem` | [u_l_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/u-l-top.md) | 150 | `result-track:262dbe8d48eeffd962a019f8b476ab30d7e0fa6a46bcee9f1933b2ac4aa29470` |
| 18 | `theorem` | [lt_iff_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/lt-iff-lt.md) | 160 | `result-track:749444d6183ddde2bc205e8c9895ad0df9d2bd49cdb38cebdfd124af9348754d` |
| 19 | `theorem` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/id.md) | 168 | `result-track:f2ab230d9e40a946ddea68c2b06030b5ea3b3f120d6c89025003e3244892de07` |
| 20 | `theorem` | [compose](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/compose.md) | 171 | `result-track:82634655d916c1dde03f6d30516ae9c29da2c02461a7e625fee4350d7a9dad9b` |
| 21 | `theorem` | [dfun](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/dfun.md) | 175 | `result-track:2f8bf26e558009dc5c9eb265c8fac89722a65bf888db3a9a0de42294db3fdc16` |
| 22 | `theorem` | [l_comm_of_u_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/l-comm-of-u-comm.md) | 183 | `result-track:b788d63d3bcdf0eee35d81e6f47cc681e5fb24170241dc20beb65794de68b29c` |
| 23 | `theorem` | [u_comm_of_l_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/u-comm-of-l-comm.md) | 191 | `result-track:64da058d8cccf9c0fbd4c8e30b84cdb4d98f58454223054d83d6db6033341f50` |
| 24 | `theorem` | [l_comm_iff_u_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/l-comm-iff-u-comm.md) | 199 | `result-track:56631cbfe944c0350372ffac9782027071365ae3b7f02cf3927764dc9e804a10` |
| 25 | `structure` | [GaloisInsertion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/galoisinsertion.md) | 212 | `declaration-track:eb6e6f18adb19cca14cb8ec3664fb90ff7b00379c859fd608c83a497327bd315` |
| 26 | `structure` | [GaloisCoinsertion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/galoiscoinsertion.md) | 226 | `declaration-track:104fcd8e4839d135371d3a3fed5a24780c8fe5a254b08c04ec4961c9491dceb2` |
| 27 | `def` | [GaloisInsertion.monotoneIntro](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/galoisinsertion-monotoneintro.md) | 239 | `declaration-track:18620005d690dd8b61b78f63f941e372c97f058c168117b34e05249d7e1b257e` |
| 28 | `def` | [GaloisConnection.toGaloisInsertion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/galoisconnection-togaloisinsertion.md) | 250 | `declaration-track:a19ebd8f763ae810a94aad15fda49451d66023ed22ebd0d980f6faf64be37fcd` |
| 29 | `def` | [GaloisConnection.liftOrderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/galoisconnection-liftorderbot.md) | 259 | `declaration-track:78f6b9ed85f6d38737b150a99e52d13994752765d619625920bbbb77c924e834` |
| 30 | `theorem` | [l_u_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/l-u-eq.md) | 270 | `result-track:3516c08d5db1135b504b1e99c51a21579314b75c19fcc75b268755de9f79356f` |
| 31 | `theorem` | [leftInverse_l_u](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/leftinverse-l-u.md) | 274 | `result-track:2d437fbc999726abe84eb8335d8c5a9927a501cf89edece8823ffc61d00d7f3f` |
| 32 | `theorem` | [l_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/l-top.md) | 282 | `result-track:d54267f540aee570fe9e9e3dcd4762662393e594f80e372c02b90991b3486f7a` |
| 33 | `theorem` | [l_surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/l-surjective.md) | 287 | `result-track:393c9fb85fba064faa79ad79287209af6c9e7073e5d72a5f3e2599b7f8efd373` |
| 34 | `theorem` | [u_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/u-injective.md) | 291 | `result-track:6f29d87b5782ff9aa5278f6bab544a3365c2180a32476679405490328a06fb11` |
| 35 | `theorem` | [u_le_u_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/u-le-u-iff.md) | 295 | `result-track:3a3534816451c98cb05140bf6cd8a7c00a838c5b4cdbb67452975c161aba81e6` |
| 36 | `theorem` | [strictMono_u](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/strictmono-u.md) | 299 | `result-track:0a13a97af9d2c95aa8db2f3f408bf167d893614a2a34e5bd2b690b27b8a2f97c` |
| 37 | `def` | [GaloisCoinsertion.dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/galoiscoinsertion-dual.md) | 308 | `declaration-track:6e682a3542231bc47e84d353df4ed6bd086c6d5abed6ddfd1ea7407d96d5e20e` |
| 38 | `def` | [GaloisCoinsertion.ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionDefsNamespacedPublic.lean/declarations/galoiscoinsertion-ofdual.md) | 316 | `declaration-track:47aa7557fa285e1fbce8e6853c19184e88d5d4f967d68a094fe9dfbcfef915c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=454fcd9e6e849482fc3cbcaae6792fc9433112651c25cd79dd90c6d6b4e4019a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant9ca7c4ff1dffda3b7d3348a9e27b2307c2f5a20871c51f87d33a52ec70747fa2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant9ca7c4ff1dffda3b7d3348a9e27b2307c2f5a20871c51f87d33a52ec70747fa2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
