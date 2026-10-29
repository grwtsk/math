# Verification target: Galois Connection Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f01795df3c5cebd8b5ddbbf273a080c4a1e765df",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0394575d703ae90a1b0745f9728363d01359e6e56a9168d0c3182b9e95dbbbd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f01795df3c5cebd8b5ddbbf273a080c4a1e765df`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0394575d703ae90a1b0745f9728363d01359e6e56a9168d0c3182b9e95dbbbd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0394575d703ae90a1b0745f9728363d01359e6e56a9168d0c3182b9e95dbbbd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Image` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WithBot` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [upperBounds_l_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/upperbounds-l-image.md) | 56 | `result-track:5699ec88ec6e3641be711b3ea8cfad9a4bc9433ba60335e6fcb61867bf48c6a8` |
| 2 | `theorem` | [lowerBounds_u_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/lowerbounds-u-image.md) | 60 | `result-track:9cfc1a57933c34b7bf02d6721a6f0e3de88f243fdffc3656ff57cadafbca1f09` |
| 3 | `theorem` | [bddAbove_l_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/bddabove-l-image.md) | 64 | `result-track:cc6a55dfa66944f6cb7077e375a12182189622f9f5b26a777682ba932fa7bab8` |
| 4 | `theorem` | [bddBelow_u_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/bddbelow-u-image.md) | 67 | `result-track:b5a3de6bcb559347dfd0e998fdc9ca4f7eb03ebe416f3565c66cea10f8215065` |
| 5 | `theorem` | [isLUB_l_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/islub-l-image.md) | 70 | `result-track:18fad5f3ddac86b8a5e5c6998497b9ea634df31e2f3ebbec39b801d7fb7db3d3` |
| 6 | `theorem` | [isGLB_u_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/isglb-u-image.md) | 74 | `result-track:64311d81585395ea8412794c2d1c14f9b8a8f7c9cf9400e6602c425eff413e63` |
| 7 | `theorem` | [isLeast_l](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/isleast-l.md) | 77 | `result-track:c216142fc2beb63a4fb543be1a6e6c1384eea78a8f3a3680280894ad32b80eb5` |
| 8 | `theorem` | [isGreatest_u](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/isgreatest-u.md) | 80 | `result-track:e8567726b382ceafe413b55c51a284a58c9a62a6d20dea40a57b03f34d46c753` |
| 9 | `theorem` | [isGLB_l](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/isglb-l.md) | 83 | `result-track:e94903141e5ab59d4743b7de491aa522e19c14527d4cc8ad0f07290eef66f2e6` |
| 10 | `theorem` | [isLUB_u](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/islub-u.md) | 86 | `result-track:51241e008edd5ca01513d0c3baddd355518641bd30100b6f1401497ff4e0a998` |
| 11 | `theorem` | [l_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/l-sup.md) | 95 | `result-track:4982a21595015d6cea58e2dfa0e049dc43d73f3cd7cd5890121e9af233a9d223` |
| 12 | `theorem` | [u_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/u-inf.md) | 104 | `result-track:f0da24efa0b29c5a43e48032980d818b0f86a278a32b7ba345c45e51c40e63ce` |
| 13 | `theorem` | [l_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/l-isup.md) | 112 | `result-track:02667065892f0b7af49b4a468c26810cf2cfb298d084969f8966e50cf9ec363f` |
| 14 | `theorem` | [l_iSup₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/l-isup-source-edition-2.md) | 118 | `result-track:601d9979c6c3bc093ed4efd279180df3e1f1acc2a865444b33d74797d2e44f9b` |
| 15 | `theorem` | [u_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/u-iinf.md) | 125 | `result-track:8e3abff4eae61a34826be3c6750315efa8ded54938796b4e9639aa3cb3d01937` |
| 16 | `theorem` | [u_iInf₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/u-iinf-source-edition-2.md) | 128 | `result-track:f7265422bdb69030f4ecb0b60af70e9797b6a1bdaddf7cc05dd262f2c02ad7fb` |
| 17 | `theorem` | [l_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/l-ssup.md) | 131 | `result-track:0d929ed5962c719780dd68f5f159893f269b71fa8c2fd64c9fd8b2c86af3ebd4` |
| 18 | `theorem` | [u_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/u-sinf.md) | 134 | `result-track:18ec25e15bda842397ea1610a158928504ac7aaa7fa44ef2f76a90148295baa3` |
| 19 | `theorem` | [compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/compl.md) | 142 | `result-track:9f9e029f58c0bdc06a7542ad09728177a980cb81adcb8c61fc5348bbf2943d2b` |
| 20 | `theorem` | [gc_sSup_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/gc-ssup-iic.md) | 155 | `result-track:940d1a608a3f6d1c591172cfa30abf925617c61799fae178b246c18fab05f1f5` |
| 21 | `theorem` | [gc_Ici_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/gc-ici-sinf.md) | 160 | `result-track:fc62fb5348295d610c0ae929889ad222cd28064beb9f6be268be4e0c4059d05f` |
| 22 | `theorem` | [sSup_image2_eq_sSup_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/ssup-image2-eq-ssup-ssup.md) | 167 | `result-track:2c744155600788591fcf0e90985b01cad50c0e0815bbdb18d5c24d527d8560db` |
| 23 | `theorem` | [sSup_image2_eq_sSup_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/ssup-image2-eq-ssup-sinf.md) | 171 | `result-track:2ae7bdda4b52299c4b9069650170e3ce6e10d52a029158ac43c191d866712d8b` |
| 24 | `theorem` | [sSup_image2_eq_sInf_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/ssup-image2-eq-sinf-ssup.md) | 176 | `result-track:5fab9d3deefffa88254d58a8dbe8ea649a08bb342c68c35e5e7a89d5b3f08f6e` |
| 25 | `theorem` | [sSup_image2_eq_sInf_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/ssup-image2-eq-sinf-sinf.md) | 180 | `result-track:9ead919d3cc3334cee81c9b266a677ea01d17c78a149029e977365e95ff35b50` |
| 26 | `theorem` | [sInf_image2_eq_sInf_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/sinf-image2-eq-sinf-sinf.md) | 185 | `result-track:d9c7bf7914ea644f8e0bcc4aaf83d1e424602122dabade4b2aa74e9cd7fb7398` |
| 27 | `theorem` | [sInf_image2_eq_sInf_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/sinf-image2-eq-sinf-ssup.md) | 189 | `result-track:0ccd50bacae80aa8ce9934791cfe02a63094fafc88ab5c68f4cdf3ef7be3e0f3` |
| 28 | `theorem` | [sInf_image2_eq_sSup_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/sinf-image2-eq-ssup-sinf.md) | 194 | `result-track:07938b1f8a9123b4f2e15088bcd5049f8dac7b16bda034b8172fa7b6f86c48f1` |
| 29 | `theorem` | [sInf_image2_eq_sSup_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/sinf-image2-eq-ssup-ssup.md) | 198 | `result-track:3eb76621214c9d28bdba40abdfed6cd01ed7847fe8d303b527763749b8aba049` |
| 30 | `lemma` | [to_galoisConnection](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/to-galoisconnection.md) | 210 | `result-track:43997f422421e0ca94065a598b22516b491657e45933daf78658afa3ca5be496` |
| 31 | `def` | [toGaloisInsertion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/togaloisinsertion.md) | 214 | `declaration-track:d1e974729c9422e85578b87061cb04e213942caa4544a444d5509255589b1e5e` |
| 32 | `def` | [toGaloisCoinsertion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/togaloiscoinsertion.md) | 221 | `declaration-track:9f1df7895587f92cf4592898ec8ddcd5e14a7ff84720ea8c841f3054555873a5` |
| 33 | `theorem` | [bddAbove_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/bddabove-image.md) | 228 | `result-track:bbd964c63a76ee2e93a679406ab6f120e4a74b4d1359568c00a02fb717ecefa5` |
| 34 | `theorem` | [bddBelow_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/bddbelow-image.md) | 232 | `result-track:19482779cd5728779bf1a3a1bdeaade91a155f5efb33b451c6f39e883af6be48` |
| 35 | `theorem` | [bddAbove_preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/bddabove-preimage.md) | 236 | `result-track:aa7e05286c26c23d0513de443be915201dfd522aa2b3e7ba8cd2caa1fe8af2b6` |
| 36 | `theorem` | [bddBelow_preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/bddbelow-preimage.md) | 240 | `result-track:501f0e1b6bf3c2ea42ac1ab3e5d7bb1647c931aec765ff97025ffd49c3db5aee` |
| 37 | `theorem` | [galoisConnection_mul_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/galoisconnection-mul-div.md) | 247 | `result-track:ddd1deab06437b443d311ddf1881378e98b0c2545cd558df9fcba8b736f26463` |
| 38 | `theorem` | [l_sup_u](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/l-sup-u.md) | 256 | `result-track:53538af4b66fd53d22fc4bee00fc51d695d242e852e006d2a68187bae6fb4da4` |
| 39 | `theorem` | [l_iSup_u](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/l-isup-u.md) | 262 | `result-track:875c7430ba14d26b17c050292a411f06c40253134784d3f791e99cf4694f9376` |
| 40 | `theorem` | [l_biSup_u](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/l-bisup-u.md) | 268 | `result-track:9e2f5da59d7917ba7e90e07fd92a970f16951631314b6ced7ad47e225a0ef1d0` |
| 41 | `theorem` | [l_sSup_u_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/l-ssup-u-image.md) | 272 | `result-track:874a87293f6959e2d791407ca8a01c38098edd0f58982be1b9ca4ad7cfda209f` |
| 42 | `theorem` | [l_inf_u](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/l-inf-u.md) | 275 | `result-track:a3a35380a4a137eac77b090863bed180eae6f150154ecc32e9ef7f7146842d70` |
| 43 | `theorem` | [l_iInf_u](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/l-iinf-u.md) | 281 | `result-track:0f5994f648ccd56fba63fb98dfbbe62c74750b68cc7574124a73e42b3ca57609` |
| 44 | `theorem` | [l_biInf_u](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/l-biinf-u.md) | 287 | `result-track:0b740a5bc52989941f98d7360fcc8347938108bb713d3e9ed10f8d3d8f5e7a9c` |
| 45 | `theorem` | [l_sInf_u_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/l-sinf-u-image.md) | 291 | `result-track:4404b84ade840b5d2218247bae655712c8bc8e617cf9f4b6c036d4ac0c238209` |
| 46 | `theorem` | [l_iInf_of_ul_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/l-iinf-of-ul-eq-self.md) | 294 | `result-track:d1cd3d716de6d56cbe6a42a7a7032d33a61c2a67cdc5348e80606b71fb5a7ce9` |
| 47 | `theorem` | [l_biInf_of_ul_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/l-biinf-of-ul-eq-self.md) | 300 | `result-track:6e478297b946f34bfa55a8cf193929be0ea4a16fdc80b3b3586b5b24fe1b9025` |
| 48 | `theorem` | [isLUB_of_u_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/islub-of-u-image.md) | 306 | `result-track:7cd58bc2c5620d80b32f05e27e3c1782c05fddbc8012f85156508e2709d25ee5` |
| 49 | `theorem` | [isGLB_of_u_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/isglb-of-u-image.md) | 311 | `result-track:e6156a7eb28d2cdb1654c885135fd1e05afac9b13f78ca0f203168ea23018730` |
| 50 | `abbrev` | [liftSemilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/liftsemilatticesup-source-edition-2.md) | 322 | `declaration-track:94bce908d1375af5a337f92b986b759e638432fb826f8edd8d3a52d610be2c7b` |
| 51 | `abbrev` | [liftSemilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/liftsemilatticeinf-source-edition-2.md) | 332 | `declaration-track:e56bd53506e0ea742b81b056edcc9d461a793de9fb0edb37271c05796225c14a` |
| 52 | `abbrev` | [liftLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/liftlattice.md) | 348 | `declaration-track:3172514542b75f964126d5e78c7fc6f9d6409eeb9f920ed03c4ee1db755d8037` |
| 53 | `abbrev` | [liftOrderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/liftordertop.md) | 353 | `declaration-track:2538ee74e50166a3f12977beed335fefb0a0fbfedaeb9146948f63780761ec4a` |
| 54 | `abbrev` | [liftBoundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/liftboundedorder-source-edition-2.md) | 361 | `declaration-track:c3132782694d6649ac8860134fc80f06353fcf180fec0f176cf7878004dc5e85` |
| 55 | `abbrev` | [liftCompleteLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/liftcompletelattice.md) | 366 | `declaration-track:4be11192f86e5cabad75a87299b4cf68b7ea21930dd25e5e173c95214717a069` |
| 56 | `theorem` | [u_inf_l](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/u-inf-l.md) | 386 | `result-track:bb9072c67ca76bc67dfb3967b502eebc083e04a19e3f0dda7fe4d1a5987a4182` |
| 57 | `theorem` | [u_iInf_l](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/u-iinf-l.md) | 390 | `result-track:291520335e575ab1d11438bd815b9d97e4a082e6038a76de04258e076064b5d7` |
| 58 | `theorem` | [u_sInf_l_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/u-sinf-l-image.md) | 394 | `result-track:67339f77803e6d0cd12e69026fd2a78833a3b1c014168e484f11a950e5f93f10` |
| 59 | `theorem` | [u_sup_l](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/u-sup-l.md) | 398 | `result-track:5b1b17b923a57ef64a692a2847bd441f1380a55d0cd6048dbbf44a8a97144f4f` |
| 60 | `theorem` | [u_iSup_l](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/u-isup-l.md) | 402 | `result-track:5bbab8c8f8e5558d0c53d27d48f7748279b9a0dc3486d8de378dde5c07251c60` |
| 61 | `theorem` | [u_biSup_l](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/u-bisup-l.md) | 406 | `result-track:bf8af94321b04bd32bcee6003db51501718fcfb372fbea9580a69f58a9a695b0` |
| 62 | `theorem` | [u_sSup_l_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/u-ssup-l-image.md) | 410 | `result-track:7e326446144f65f9c8f7a42989fe5a565a711325469b7ff7daf607e6b6fb0a15` |
| 63 | `theorem` | [u_iSup_of_lu_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/u-isup-of-lu-eq-self.md) | 414 | `result-track:363ad755e149f9b58d6416bd2cc68521c1115b7db3dbac379b3a3abbfe12c092` |
| 64 | `theorem` | [u_biSup_of_lu_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/u-bisup-of-lu-eq-self.md) | 418 | `result-track:3d28b24968b338c12f34b130c69cef95eb7edb1b6dc822d01ce6d43d975e9a5c` |
| 65 | `theorem` | [isGLB_of_l_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/isglb-of-l-image.md) | 423 | `result-track:428c281cf6c10e2c473b2d0fcd18c71485a76e3ba95470be6be3cbbcd054b7ac` |
| 66 | `theorem` | [isLUB_of_l_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/islub-of-l-image.md) | 427 | `result-track:95b125bd6b089f0ef1f7566cd90e628fb83aea458e9eb364cdd818117473abe9` |
| 67 | `abbrev` | [liftSemilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/liftsemilatticeinf.md) | 437 | `declaration-track:ac1a28aecb26014e8159b8f68243017a1d4b60b1bd7fba9e9953089f5ee26411` |
| 68 | `abbrev` | [liftSemilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/liftsemilatticesup.md) | 449 | `declaration-track:54a5d405f343c0c83a1aa1ba869108a2fce0c90043aa62351da980e1e3b49246` |
| 69 | `abbrev` | [liftLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/liftlattice-source-edition-2.md) | 464 | `declaration-track:7a2fac57bc7500bf55e02ae0fcf1854babd49d7ecb63eb031de839388c04ea1d` |
| 70 | `abbrev` | [liftOrderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/liftorderbot.md) | 469 | `declaration-track:9504fa3e273daf8229b8b15924221f4c6944c6bbe2f136bd89ccc3e5fd170683` |
| 71 | `abbrev` | [liftBoundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/liftboundedorder.md) | 474 | `declaration-track:45e935e601f426613eb07d5aaa8e7f9b774928fcbeaaa56d6376c4552ccc98b1` |
| 72 | `abbrev` | [liftCompleteLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/liftcompletelattice-source-edition-2.md) | 480 | `declaration-track:ae28e63c104f32083b9b084819a86249a521a45b9cdcbe95b8f78e11feb2b0b9` |
| 73 | `def` | [gi_sSup_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/gi-ssup-iic.md) | 490 | `declaration-track:447bf232f64fedd702fd9a1aaaa0a67a5b70112603457408a140871a4e2189a9` |
| 74 | `def` | [gci_Ici_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/gci-ici-sinf.md) | 495 | `declaration-track:36970534b7725069ed7a8f6c6c25934d0dd7145c8dd0be6c4b2b84418aded578` |
| 75 | `def` | [WithBot.giUnbotDBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GaloisConnectionBasic.lean/declarations/withbot-giunbotdbot.md) | 501 | `declaration-track:659cc96b46c6eeb248dfe0c1a78a0258af99b00929bc33dbcf3642a1a147ba4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=855879b9c5297bd951edde5923eb2206475c9bc1eac6f446ebf3cd6adff2c25b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0394575d703ae90a1b0745f9728363d01359e6e56a9168d0c3182b9e95dbbbd3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0394575d703ae90a1b0745f9728363d01359e6e56a9168d0c3182b9e95dbbbd3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
