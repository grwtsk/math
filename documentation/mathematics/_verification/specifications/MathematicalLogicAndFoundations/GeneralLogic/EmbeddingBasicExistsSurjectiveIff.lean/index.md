# Verification target: Embedding Basic Exists Surjective Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb4cc279f45e7ece2ef5cfbe1c31dee661441a61",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2de8cff90d4221e901915bf7736f1282ab8007002b8de588e2fbe3d787e28776.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb4cc279f45e7ece2ef5cfbe1c31dee661441a61`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2de8cff90d4221e901915bf7736f1282ab8007002b8de588e2fbe3d787e28776.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2de8cff90d4221e901915bf7736f1282ab8007002b8de588e2fbe3d787e28776.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Option.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.PProd` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Embedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/embedding.md) | 20 | `declaration-track:1ad98160498f5b0d613279653244610cf41e91f7fd16a59ca5c8fc1254595b5c` |
| 2 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/instance-source-edition-3.md) | 29 | `declaration-track:d687440dea67c3dbf223445f8998d8e2ff78045640cf78bd9597bae23bfd9c44` |
| 3 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/instance-source-edition-2.md) | 33 | `declaration-track:9e20a730cf4b08a022a798e330059213d418e9a53e8d477cb5a99752fea154b1` |
| 4 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/instance-source-edition-6.md) | 38 | `declaration-track:fb447737971b5355d2144aa6bb38438212491f95cb840aca33489f644aec8b5e` |
| 5 | `theorem` | [exists_surjective_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/exists-surjective-iff.md) | 40 | `result-track:d35d8a4074c76648f880cff5db65fde7e6bf9c4c0878e89bcf19c001dc2b2e48` |
| 6 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/instance.md) | 45 | `declaration-track:0976b98d22fbd614a74d259270eafa24a762214b3ff971ce7753a62376f65f82` |
| 7 | `def` | [Equiv.toEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/equiv-toembedding.md) | 67 | `declaration-track:b87d43931989d9c61e8ae24f34c3d95678b6a91b1b43577e228348258ce5c020` |
| 8 | `theorem` | [Equiv.coe_toEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/equiv-coe-toembedding.md) | 71 | `result-track:31e40db59418dd469085682a4deab169810b122ab95d2078d7eaae641fc649d7` |
| 9 | `theorem` | [Equiv.toEmbedding_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/equiv-toembedding-apply.md) | 74 | `result-track:b823eda088161afa7e4e92319e544f1e2355414524e3d9f571db08f71948c00b` |
| 10 | `theorem` | [Equiv.toEmbedding_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/equiv-toembedding-injective.md) | 77 | `result-track:160ec2181e8cd238c48e0131e7501353dffd1aea2c0e28109474b893372d88f8` |
| 11 | `instance` | [Equiv.coeEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/equiv-coeembedding.md) | 80 | `declaration-track:4c686c2cf498a1e7ef9d389e62d58d7f903d2eefe9fc17661db9d00bdfa4b77e` |
| 12 | `abbrev` | [Equiv.Perm.coeEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/equiv-perm-coeembedding.md) | 83 | `declaration-track:8946d62a234a75415b31b41ce7c94015c3b0b020d2473514dadf03ea9cea0e09` |
| 13 | `theorem` | [coe_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/coe-injective.md) | 92 | `result-track:5446312c4db2c736be71eaee1df4d8fca86c8f5893ce2c0867c822231d2a7538` |
| 14 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/ext.md) | 96 | `result-track:bdf546aaf8afedb216a8c8fd0b3462500eb8cc074cf854c492225d1d53148b68` |
| 15 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/instance-source-edition-4.md) | 99 | `declaration-track:e23ffb0590919b61a0d162c4f02bd0f66561ca8bc75878419b1603c4df26f48e` |
| 16 | `theorem` | [toFun_eq_coe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/tofun-eq-coe.md) | 104 | `result-track:443b027ff79d1790356cbbb24b4092910974f41d13fc2fe199b30634bccc29f3` |
| 17 | `theorem` | [coeFn_mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/coefn-mk.md) | 108 | `result-track:1d633b435c175c0fcc0bab1a749e45d485151c4eef76a3cd2545dac60f883be5` |
| 18 | `theorem` | [mk_coe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/mk-coe.md) | 112 | `result-track:7420a24a1ed4fd2a1e0657966d5a978500e4452960791ac0d40740e8d027262a` |
| 19 | `theorem` | [injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/injective.md) | 115 | `result-track:ba6118c8617ca865aee1972f867d914e3beb9ef1de19e8bfc40a03d232899867` |
| 20 | `theorem` | [apply_eq_iff_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/apply-eq-iff-eq.md) | 118 | `result-track:61f5c33a60c1c9ecbcf004b2ffbb6bb64aa756565e1a2fa7619cbb95e07989cc` |
| 21 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/refl.md) | 123 | `declaration-track:1effa9b965d8b0a4a3e8c10f8e60593299262ae22808570d058506b4dfb77f85` |
| 22 | `def` | [trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/trans.md) | 128 | `declaration-track:74082daa1c042731a72bed5d662eabf8c9f1325186d21a099a321a3907c6a6fa` |
| 23 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/instance-source-edition-5.md) | 131 | `declaration-track:f87f9734417130adaf1cb2668742121787751c7bb5030d7a1fa70ef523e0e4ba` |
| 24 | `lemma` | [mk_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/mk-id.md) | 133 | `result-track:d0d126c8491bc31a7f2dfef7c4b2485319d8dca4471fdd25a0898aba716e2ee8` |
| 25 | `lemma` | [mk_trans_mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/mk-trans-mk.md) | 135 | `result-track:34fa6aee1bc64c55a9873280476229540d1c3320c196cd6ba98cb82b5bb4c15b` |
| 26 | `theorem` | [equiv_toEmbedding_trans_symm_toEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/equiv-toembedding-trans-symm-toembedding.md) | 139 | `result-track:5fbc9505475147c86ec671a4103ad94fad0082191878df27d360885a8591d209` |
| 27 | `theorem` | [equiv_symm_toEmbedding_trans_toEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/equiv-symm-toembedding-trans-toembedding.md) | 145 | `result-track:176d7e09491e0bee881c63660ac93cae377776925fe650d0666bc7888a807c59` |
| 28 | `def` | [congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/congr.md) | 152 | `declaration-track:cd9abf91195b6c0e51cb0c3dcc8bf9c3fb79b9f48ff248dc4e26f289488c3041` |
| 29 | `def` | [ofSurjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/ofsurjective.md) | 157 | `declaration-track:d3cc0e1dc9d3135f89314b9d55c02869906b603c0c0be7520d1d36a5070eb8e1` |
| 30 | `def` | [equivOfSurjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/equivofsurjective.md) | 161 | `declaration-track:53890c2e770cac407fd134c8b04d292c388ea4521d28e38afecdc7fa171a40ed` |
| 31 | `def` | [ofIsEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/ofisempty.md) | 165 | `declaration-track:348390429067f2ffc0d94a374dd602ee3163bb21981ce2489dd94cd6585cc0e5` |
| 32 | `def` | [setValue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/setvalue.md) | 170 | `declaration-track:ede096708848ec81442c9ce22a8da19d8e8b6861ae7685779046136890f3a37d` |
| 33 | `theorem` | [setValue_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/setvalue-eq.md) | 178 | `result-track:66ed3b0c217cb3da7ee0c1d3febd05814349186ead332ae585bcb2c992d5530a` |
| 34 | `theorem` | [setValue_eq_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/setvalue-eq-iff.md) | 183 | `result-track:01ebedfa77f0ffce0d25578ec4b52a1f8497052f8ddff7e913a8c44d377e7306` |
| 35 | `lemma` | [setValue_eq_of_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/setvalue-eq-of-ne.md) | 187 | `result-track:bcb02feed93924c5ac6e45c3b8ebbe307510c86ae8914e12f7bf7312fe06d182` |
| 36 | `lemma` | [setValue_right_apply_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/setvalue-right-apply-eq.md) | 192 | `result-track:c924f2472f4ac0122fc52997f1853d810c1e79731f08ea70798d818f49dadcd9` |
| 37 | `def` | [some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/some.md) | 198 | `declaration-track:af7a0ba8e8b212fbc2bd127cd83d561c57e4a2e2d1bde6b86741da7af3eaa3f1` |
| 38 | `def` | [optionMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/optionmap.md) | 203 | `declaration-track:8a1e35a1b80fcd370dc1d98083c380e3d707c3fabfa7b723f3137f93ab96dc19` |
| 39 | `def` | [subtype](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/subtype.md) | 207 | `declaration-track:7f366dd3431f10f18ed7543b5b146d85400b0979a4eabc4f37c224f5f0a1316f` |
| 40 | `theorem` | [subtype_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/subtype-apply.md) | 211 | `result-track:ad1aabe8d0a7c610e0fb145ba01d566065c16b19ca86028bc4cf849ba2280b25` |
| 41 | `theorem` | [subtype_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/subtype-injective.md) | 214 | `result-track:5565f10e8112fce79a6d2e39c5437bf6a5d4d2e096339931f0cdefcef3a74ca5` |
| 42 | `theorem` | [coe_subtype](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/coe-subtype.md) | 218 | `result-track:29c334317e58e0f1b35ad6a0800e6bc59465af89e3e35d8b25a620f2130abe80` |
| 43 | `def` | [quotientOut](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/quotientout.md) | 222 | `declaration-track:06e7c9c3400bef3923d1e38405bb8c04cd8379f6cfd3d724dba602b3da42f5d4` |
| 44 | `theorem` | [coe_quotientOut](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/coe-quotientout.md) | 226 | `result-track:cbe1f909481c76a123da4bba3fb21bd25aecf47d1258b6b4f1f340858fa03ba2` |
| 45 | `def` | [punit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/punit.md) | 230 | `declaration-track:d596ca56d68c48039584886fa98bc4ac04235d3f9f89cae53e8b8ffec82e2e65` |
| 46 | `def` | [oneEmbeddingEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/oneembeddingequiv.md) | 236 | `declaration-track:a1a466873db2720ded4c19675c3e2480f27d75652197b32ffd56e87541e48085` |
| 47 | `def` | [sectL](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/sectl.md) | 246 | `declaration-track:9a11be508984c460354e94a88f47d27550c063b352629dd88efe4eb02433ab49` |
| 48 | `def` | [sectR](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/sectr.md) | 251 | `declaration-track:35e7fe2391f4230b29cc757189e1713aa55d2e87b8a34a5a21a1c6ed29f38864` |
| 49 | `def` | [prodMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/prodmap.md) | 260 | `declaration-track:4c75f625e1712ec4a42153849be70eb9aeb03f4a06af06c3e3f0f80bb395751d` |
| 50 | `theorem` | [coe_prodMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/coe-prodmap.md) | 264 | `result-track:790f23bc8d2fbf47afa6b9667c4bf92b04336f7238ff410699ec988b27c28a9b` |
| 51 | `def` | [pprodMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/pprodmap.md) | 270 | `declaration-track:01fc80492271451bfe2e6ddee48bc21a1e9194494b906caa271bd0845953e288` |
| 52 | `def` | [sumMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/summap.md) | 278 | `declaration-track:443176a4ecef73c1df7aa716f0c675e08b7bcdbfb84ea5a5d1af1c0b6bd71584` |
| 53 | `theorem` | [coe_sumMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/coe-summap.md) | 282 | `result-track:07354b9d9ccd467e2220fa7788cc15f3efd473c83c83a32647a8251144d1c3b2` |
| 54 | `def` | [inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/inl.md) | 287 | `declaration-track:fa317419c5ffe5f1dc29e05da75b8f5b268500fbbece380a845e7e40bba5d719` |
| 55 | `def` | [inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/inr.md) | 292 | `declaration-track:2debea53793cd346e89320ae251ad3c2e638b68dd46bd3d7b4ce135e59e91c8e` |
| 56 | `def` | [sigmaMk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/sigmamk.md) | 303 | `declaration-track:423a7b641a5298b7bd253301825580782cf77ee07a198864c1fd5c0c4d5a5c51` |
| 57 | `def` | [sigmaMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/sigmamap.md) | 309 | `declaration-track:ea512d6a8a3a2059ab332a01f832304215cff7b1b628eeb949d841a91aebaf45` |
| 58 | `def` | [piCongrRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/picongrright.md) | 317 | `declaration-track:9d34c2b0ae90d49c231ddec18b1b4ddbc7ac48909753e60c0e4210489fbb7392` |
| 59 | `def` | [arrowCongrRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/arrowcongrright.md) | 322 | `declaration-track:49c0de29d7f370b7c769791603734c691c235ea4c1731ad402af83c084c633a8` |
| 60 | `theorem` | [arrowCongrRight_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/arrowcongrright-apply.md) | 326 | `result-track:ab0303e2cbb7c61f26e35da8e113274458911faeeddf2ba4d8799fea1151ac07` |
| 61 | `def` | [arrowCongrLeft](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/arrowcongrleft.md) | 333 | `declaration-track:f1c032136de1dae8720445061efb3195c7427b961143672865e1a32c7ba03edb` |
| 62 | `def` | [subtypeMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/subtypemap.md) | 339 | `declaration-track:380e737171f3d31cdad64c029d1ac083d63d6d998bf19e6323ccc4b7d6ef1579` |
| 63 | `theorem` | [swap_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/swap-apply.md) | 346 | `result-track:34823d282f8c88c52d125a68def2a70625328d84d23471307942bdc5e39a242c` |
| 64 | `theorem` | [swap_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/swap-comp.md) | 350 | `result-track:2bfae1267466e5abe16ce8d680303e0bf7376f94ad7bf901a469db368c61741b` |
| 65 | `def` | [asEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/asembedding.md) | 365 | `declaration-track:e7c37b3b5bf5c8e0ba19fc5b5356bf3831d71111b8238a42af63a0f704d0f44c` |
| 66 | `def` | [subtypeInjectiveEquivEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/subtypeinjectiveequivembedding.md) | 370 | `declaration-track:cd495ac8e213a9043cacee4870860a2a0c94d687a83b8a57f5c1c56a8e759059` |
| 67 | `def` | [embeddingCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/embeddingcongr.md) | 380 | `declaration-track:3c36312eb8b15d56a77b523ce2251b695f57e6ef25bda7ad71563bfc4bdc16dc` |
| 68 | `theorem` | [embeddingCongr_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/embeddingcongr-refl.md) | 391 | `result-track:55e633cd87ac7a45c024e45981433fc13544e8eff104c62e359b0d69905f1ea5` |
| 69 | `theorem` | [embeddingCongr_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/embeddingcongr-trans.md) | 396 | `result-track:80052bef307c380dba4fc7c6db6fc25dec284b6d06c89186bb4277ea8812d355` |
| 70 | `theorem` | [embeddingCongr_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/embeddingcongr-symm.md) | 403 | `result-track:1de57dc43f11fafe020933562b6aa3a14f1906adac87c85d1a46b07656b05f83` |
| 71 | `theorem` | [embeddingCongr_apply_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/embeddingcongr-apply-trans.md) | 407 | `result-track:bec1e7a33e5810d2bc31abe1e2a1e715daf308e61e0ebb13934ac7bdebd8a487` |
| 72 | `theorem` | [refl_toEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/refl-toembedding.md) | 415 | `result-track:f13e5efb31bacdfa85113961bcc2bea911d4ecc29e0a90646ab35e142e170407` |
| 73 | `theorem` | [trans_toEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/trans-toembedding.md) | 419 | `result-track:1b0337e8fd1106f7b8eca43aedddae94cf6fe4d82dd04bcdb7990e107c48a055` |
| 74 | `def` | [subtypeOrLeftEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/subtypeorleftembedding.md) | 431 | `declaration-track:96cf715d52d632b30904c65695ca8bb37d5244807e7f927db6572fa6ce617ba3` |
| 75 | `theorem` | [subtypeOrLeftEmbedding_apply_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/subtypeorleftembedding-apply-left.md) | 438 | `result-track:9739a1de8557e260bfbd927365d39c9c062aa5d001789642ba49718b12015cb8` |
| 76 | `theorem` | [subtypeOrLeftEmbedding_apply_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/subtypeorleftembedding-apply-right.md) | 443 | `result-track:4a716d0f1e4d0b90c7fb7717a490fd2d55630a5d64c1315fff42bb03af2094b9` |
| 77 | `def` | [Subtype.impEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExistsSurjectiveIff.lean/declarations/subtype-impembedding.md) | 451 | `declaration-track:83006741a09fa89e3f9557b953e569dd29a15912e596f60fea7e0e59e1cdc4fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9eb7138cd0f93a9a4e11ec1aa96e2b0263402c1020a3c723e030a1569771cb39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2de8cff90d4221e901915bf7736f1282ab8007002b8de588e2fbe3d787e28776.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2de8cff90d4221e901915bf7736f1282ab8007002b8de588e2fbe3d787e28776.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
