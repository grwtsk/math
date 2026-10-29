# Verification target: Ring With Abs With Abs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50f2b172adce54f3c9259c53592b314127e80b8b",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variantb58e829725fb984dc4272c617afa7a0f64b9ea907afdd80322e6170de6ce69b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50f2b172adce54f3c9259c53592b314127e80b8b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variantb58e829725fb984dc4272c617afa7a0f64b9ea907afdd80322e6170de6ce69b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variantb58e829725fb984dc4272c617afa7a0f64b9ea907afdd80322e6170de6ce69b9.lean.json)

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
| 1 | `structure` | [WithAbs](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/withabs.md) | 35 | `declaration-track:c9ff7f0b29f6f0ac5b91b9984d61dd8ca59d0fa8ee0617a2f460d18c2a4a884e` |
| 2 | `def` | [WithAbs.delabToAbs](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/withabs-delabtoabs.md) | 47 | `declaration-track:9df7b593552ae479fd62ed4babdc6f0295b5c1b911dcb7578886a25df3e48628` |
| 3 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-12.md) | 57 | `declaration-track:ba8cebbeb11dde507521b7c7b8be1b9bf44121b3f2b04de9b35d4b76f10a1426` |
| 4 | `lemma` | [ofAbs_toAbs](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/ofabs-toabs.md) | 60 | `result-track:0bd3c10f33a65880a64d18517328760231541190e455dc2047d7a07e1492fac1` |
| 5 | `lemma` | [toAbs_ofAbs](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/toabs-ofabs.md) | 61 | `result-track:09ce77fc81c2ef0cb9891941319f3e42ad11ad78c6ba38f5a31595b9215224d3` |
| 6 | `lemma` | [ofAbs_surjective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/ofabs-surjective.md) | 63 | `result-track:a444bc72ac0bfb28fdf02629333eafbc4dd5230151eb3fcacfe0857ea06ac51f` |
| 7 | `lemma` | [toAbs_surjective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/toabs-surjective.md) | 66 | `result-track:8b62afedd6eb8eebae4d22934a8ee4e69fb03f053892ad59398bfe05a6116ac3` |
| 8 | `lemma` | [ofAbs_injective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/ofabs-injective.md) | 69 | `result-track:5e42f6137dcdcd37fb89ae0566e14a44d36e1cbdd4aae9d931f1c2ba6bbee1af` |
| 9 | `lemma` | [toAbs_injective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/toabs-injective.md) | 72 | `result-track:e4b3a8cef3f8b5129c1f6fcbbd74c318750fd5d0dc10ed149522339d058777d8` |
| 10 | `lemma` | [ofAbs_bijective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/ofabs-bijective.md) | 75 | `result-track:0a3d609446917325355b7da229db2422164ab91db49e02d5367a1106ddd712ef` |
| 11 | `lemma` | [toAbs_bijective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/toabs-bijective.md) | 78 | `result-track:4122fafa2dbfe0af6bdc6bc64354588fbd624889a6f0d3fcc65606cccfaa9daf` |
| 12 | `lemma` | [toAbs_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/toabs-zero.md) | 81 | `result-track:322ce0825b8765c38ff51dbdca8aa7825c68304c835c8db94f4bca4091a2c354` |
| 13 | `lemma` | [ofAbs_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/ofabs-zero.md) | 82 | `result-track:b36452cc84de06591b2ae678a4fc6e5770443fe568f92df058a1acaf804c5c48` |
| 14 | `lemma` | [toAbs_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/toabs-one.md) | 84 | `result-track:789c9d9309c4990f2449424ab585059c2bea751badf641e71d39e73224b21428` |
| 15 | `lemma` | [ofAbs_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/ofabs-one.md) | 85 | `result-track:30a5d435eef9be0e2e20c53d8b0f8f4801d6bcf2bb3ea77ac86daa27a6b150ad` |
| 16 | `lemma` | [toAbs_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/toabs-add.md) | 87 | `result-track:1b6c699710169842b78fc70ad62383e1964b0fad89d1f992f877e7dd7dbc59fb` |
| 17 | `lemma` | [ofAbs_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/ofabs-add.md) | 88 | `result-track:74d1b271a217ce5d9409de62b1798983103f8d9495173bdacecf8dc480b36878` |
| 18 | `lemma` | [toAbs_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/toabs-mul.md) | 90 | `result-track:930f853e114b1df2bf0dfe85c8adaaede27d02a307b08da3cce3031fbb2def10` |
| 19 | `lemma` | [ofAbs_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/ofabs-mul.md) | 91 | `result-track:56c64bac4b71b9e17d3f94839a6747069f7a46edbe1efcbe233bd39bcba85778` |
| 20 | `lemma` | [toAbs_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/toabs-eq-zero.md) | 93 | `result-track:3f615ed0e5f717affb02574ca10f258957ee31131cccb8ccc997171da615cd3f` |
| 21 | `lemma` | [ofAbs_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/ofabs-eq-zero.md) | 94 | `result-track:fa8f537b926ab22464de3cb7c6d67a0c09162349116c06ad68bda962a4739d11` |
| 22 | `lemma` | [toAbs_pow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/toabs-pow.md) | 96 | `result-track:28bde566ac4c6e0e629712507e332238ac56b206a4e1885a6eede92d646cb40e` |
| 23 | `lemma` | [ofAbs_pow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/ofabs-pow.md) | 97 | `result-track:933e3ab4a9f1955baad6a7c02e613a58d8d9852fa1d5f063a63ba0938a7c232f` |
| 24 | `def` | [equiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/equiv.md) | 101 | `declaration-track:cc2498e72edccba243c6c5b6b4278550558450cf177c6498d5bf4a373904e977` |
| 25 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-10.md) | 107 | `declaration-track:9bf669d2d765a3e124749815c451df579e52e6eea29aa4cdbf706274d07c99c2` |
| 26 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-13.md) | 108 | `declaration-track:baf3ffe69850ff4b392e80135edf7131fdc4c5b305e34780c77ebc4c04d032fd` |
| 27 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-17.md) | 109 | `declaration-track:def27cf68c2a005b6ee1ae4d78863177489fa4dc4b34d56fbf38d4358484f96e` |
| 28 | `def` | [map](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/map.md) | 115 | `declaration-track:0e37d5dc65b65f69208d66d00775e382f625a81536828f439c5a43fa75424cfa` |
| 29 | `theorem` | [map_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/map-id.md) | 117 | `result-track:dd6d83d39a2a488c59d8c04cc562c61c586e13fcced30a62c92f509a6db7e05d` |
| 30 | `theorem` | [map_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/map-comp.md) | 118 | `result-track:82603f7ba5dd3df9c2bcde6bd0265a5628b0daf832f74c00394d6eb643e3cdb7` |
| 31 | `theorem` | [map_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/map-apply.md) | 119 | `result-track:d13be70410489c82add966a4003a30e326a68aadac95e28bc69cba5b0e9b1a09` |
| 32 | `def` | [congr](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/congr.md) | 124 | `declaration-track:52200ef2a5db2292a8c7f5eb54bbb8d80e4f3a7e67be273faa3677f921a3391b` |
| 33 | `theorem` | [congr_refl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/congr-refl.md) | 131 | `result-track:e6e0956c1968cfc7c1a02caa25d9c874433bd89327bfd00b5a95d97ad07b15c0` |
| 34 | `theorem` | [congr_trans](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/congr-trans.md) | 132 | `result-track:015304beafb59f050a32e3c267833a2ae5fc8a42b78cf73cf81d4fe2de789bac` |
| 35 | `theorem` | [congr_symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/congr-symm.md) | 133 | `result-track:c1d988c6894fd5064f701bebd3f6d5a67bd097b4b217b58dc450e6eea2751486` |
| 36 | `theorem` | [congr_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/congr-apply.md) | 134 | `result-track:1295d674b680cb8b75a52c728e0a5bb6df5b5b9a12b6de94ddcfc813a58c1bf2` |
| 37 | `theorem` | [congr_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/congr-symm-apply.md) | 135 | `result-track:d073e1e79d2684b60a05ab11bfc0a891b234d23a4e90f5ec545d1f07093df453` |
| 38 | `def` | [equivWithAbs](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/equivwithabs.md) | 141 | `declaration-track:f036e3006ce4da9f16f8f423dd3fc32c4d2da5917e7dfcb760da2270a367d76e` |
| 39 | `theorem` | [equivWithAbs_symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/equivwithabs-symm.md) | 145 | `result-track:8195b4fdf57aaaee9cf07b373b092e34a7f996cc87d4179b63925f5a570011f4` |
| 40 | `theorem` | [equiv_equivWithAbs_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/equiv-equivwithabs-symm-apply.md) | 150 | `result-track:c23242c47236f24468a042ab530c6bc21355b949970769b25b05aa5fa0174b64` |
| 41 | `theorem` | [equivWithAbs_equiv_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/equivwithabs-equiv-symm-apply.md) | 154 | `result-track:ad28aa781ff1d0c72590540893b3677bed34ac695c9753a0d5de4172a4e83d22` |
| 42 | `theorem` | [equivWithAbs_symm_equiv_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/equivwithabs-symm-equiv-symm-apply.md) | 158 | `result-track:0e1a9d65f1205c61f1e81ab61097489de18e0195fd99dc6baa09c5ba7f765bfa` |
| 43 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-4.md) | 167 | `declaration-track:45349117b1b57cf36624a0cce59a46099c2e39b8fb6db44fe0c975fe3590551a` |
| 44 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-2.md) | 175 | `declaration-track:3cc855e59175cdf8c584f7fe5d7add48b64cd0c7534cb25e6a5132e726461d56` |
| 45 | `instance` | [normedRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/normedring.md) | 177 | `declaration-track:93324a7383d2d9ad41e36ba1ad24d321c7add856346ca53eea8ccb5e41929e12` |
| 46 | `lemma` | [norm_eq_apply_ofAbs](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/norm-eq-apply-ofabs.md) | 181 | `result-track:a7bb68e56859e30fd11693a71745c1e8949b9a0f9eb16287d3e161fccf617a44` |
| 47 | `lemma` | [norm_toAbs_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/norm-toabs-eq.md) | 182 | `result-track:c9bd2431bb28cf6dea6ca163ad659beb74fbddba5917d8960ef6950ee4be9f54` |
| 48 | `lemma` | [toAbs_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/toabs-sub.md) | 189 | `result-track:0e4c008c9a5a6aece8a9d9295dfd0ea6a84d921bd9ab9c9df1499c059cd1cfc6` |
| 49 | `lemma` | [ofAbs_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/ofabs-sub.md) | 190 | `result-track:6476ab3f48fe1d42e5484893253cfae104a4a9e203a03d7e0c5c842e6cdc41a3` |
| 50 | `lemma` | [toAbs_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/toabs-neg.md) | 192 | `result-track:450f9f06e47234a4a7786b336e353fc1e717be774d8cb03ed9af27422b0b060a` |
| 51 | `lemma` | [ofAbs_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/ofabs-neg.md) | 193 | `result-track:95c1a252b0b7443813e96b47febcbaa3c525e35afa320ed1c7a03c3612578e73` |
| 52 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-11.md) | 201 | `declaration-track:a72657bb0c8a5f355a795fa49e2425132708da1c9cffff0dd4e04f50d23e62fe` |
| 53 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-14.md) | 209 | `declaration-track:c2d0081e5659209cd81335a7baad869ce5f82c3576ec470fedf8cc9784578173` |
| 54 | `theorem` | [smul_left_def](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/smul-left-def.md) | 212 | `result-track:a39f361e805b7b96778fdd6c5a58644746f6077af24bcd6b6cc96503576616bb` |
| 55 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-7.md) | 215 | `declaration-track:77aa18107e803b1df303c836ea010bad9aab25e06c2a193370e457dee99580b4` |
| 56 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance.md) | 218 | `declaration-track:1f95c9e9493b54cd777c19c9adfefa530d5d76259fe5e384b442749ad0d9b70e` |
| 57 | `theorem` | [smul_right_def](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/smul-right-def.md) | 220 | `result-track:cfcb16cca62c795938fd59a9fe539a04eac4b203471d18b7aa5d6742b2e145dc` |
| 58 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-15.md) | 223 | `declaration-track:d4aa8712213cbc0046f13ed0e982f038ab3c1ce440204e5d9a9a084a8f992e0f` |
| 59 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-8.md) | 228 | `declaration-track:93a1464a999c2c005c26b63db8598a5c820a61da129e51ba31369dd1769229c0` |
| 60 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-16.md) | 232 | `declaration-track:dd3ecf92e7dc970ef80a321a78fedd34f6b3214bc3a40e84c953552b00e3b11a` |
| 61 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-9.md) | 235 | `declaration-track:962c928ecd3e93ba979f80c69a6ddc75d8fcda2d5f1a97531432c25d27f5fc27` |
| 62 | `instance` | [moduleLeft](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/moduleleft.md) | 239 | `declaration-track:a4bb5c4996703e982280e29bacd96225cfa17ed351972cae90907072c0b57894` |
| 63 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-3.md) | 244 | `declaration-track:3e17c35febab948d56310442becf74d1f98765128e80da4dc747b39f350451e8` |
| 64 | `def` | [linearEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/linearequiv.md) | 254 | `declaration-track:616b79c46d395ef50d260bc35202ee650bcf0fc3af930e0621735f3454311f69` |
| 65 | `theorem` | [linearEquiv_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/linearequiv-apply.md) | 258 | `result-track:bd4407dc5d5188bb23b66047e22cea1284b5cd56f301aa0b39604499ccd46c47` |
| 66 | `theorem` | [linearEquiv_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/linearequiv-symm-apply.md) | 259 | `result-track:1d4f04095af7ab9d5085c0103ddec83a4f9da45b504d730a3232a5c3cf0b06a9` |
| 67 | `instance` | [algebraLeft](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/algebraleft.md) | 268 | `declaration-track:a1f5c62fc33b9af70bcd001f0b5d4fca2b052e9efc9d91ca5b86677b8c1c9cc4` |
| 68 | `theorem` | [algebraMap_left_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/algebramap-left-apply.md) | 271 | `result-track:6e6b4afdc05070c6f3ee9f4b1c5056e38d6c3ce9bf4297d52a1a8f2d67fe9883` |
| 69 | `theorem` | [algebraMap_left_injective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/algebramap-left-injective.md) | 274 | `result-track:b3ef11f8459d4e2f4189b286b34c73d2a5efc51d8cc65c4489e9772a075480ee` |
| 70 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-6.md) | 279 | `declaration-track:748580b202938caaa0811ffee5ba9c99a89f3f9daff975e8ebba76e65344815b` |
| 71 | `theorem` | [algebraMap_right_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/algebramap-right-apply.md) | 282 | `result-track:c9b4971622c9d619f269c616178d790485a33189fdb1abcac7283f1b3d4bb86a` |
| 72 | `theorem` | [algebraMap_right_injective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/algebramap-right-injective.md) | 285 | `result-track:ea3017034ee65b2349e70c79c876235b50758a9ce9d8ab2f1a40e1daa9dcd9bf` |
| 73 | `theorem` | [ofAbs_algebraMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/ofabs-algebramap.md) | 289 | `result-track:d231b1ef3e2431be072593658ad23dd5f0a39ccea676139adb9543a95dba2ffb` |
| 74 | `def` | [algEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/algequiv.md) | 298 | `declaration-track:00726c3cd2149116dbd105df75a10adf59802a403d51bd0811c93b0f957fc54b` |
| 75 | `theorem` | [algEquiv_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/algequiv-apply.md) | 300 | `result-track:f3982c00cf61296464543f7b813c4e6b19a8adc2ca6f4c64ad2692ea6ebe5d3e` |
| 76 | `theorem` | [algEquiv_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/algequiv-symm-apply.md) | 302 | `result-track:f3325cd0c48ef3f0ce3ecccd959f1a74b533079533b71424b55984e4339a1373` |
| 77 | `def` | [under](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/under.md) | 317 | `declaration-track:33cf2814d84b806d3f7354072e9b05d87971b557def5698988d6d0f87ab3ddb4` |
| 78 | `theorem` | [under_def](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/under-def.md) | 320 | `result-track:b9a18f0938d8ec1ec9b5488e889ca544479911e351c8b0d05fd79708c1e86d1f` |
| 79 | `class` | [LiesOver](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/liesover.md) | 328 | `declaration-track:ff9915cfa955e9bca890c0b0cb0344fe6c9c5f42f098afa98008f41d8acea7dc` |
| 80 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingWithAbsWithAbsPublic.lean/declarations/instance-source-edition-5.md) | 333 | `declaration-track:62faa10e0d8995514826fcf847d00e252bec8ad08392a8988a475560244d929a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e58ae46694023c39688fd24f3383feecf0a1a5d1cb59cd8449978b13373083a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variantb58e829725fb984dc4272c617afa7a0f64b9ea907afdd80322e6170de6ce69b9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variantb58e829725fb984dc4272c617afa7a0f64b9ea907afdd80322e6170de6ce69b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
