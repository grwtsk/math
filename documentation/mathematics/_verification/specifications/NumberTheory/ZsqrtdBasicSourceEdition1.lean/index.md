# Verification target: Zsqrtd Basic Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a21c9684a38a5b2db5fffdebb43d58394c4c2387",
  "lexical_observation_count": 148,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant4959c06236bd0d312087a9118c6720e42a86122f06657ec0c95278ca8f1f7307.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/index.md) · [Full source](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a21c9684a38a5b2db5fffdebb43d58394c4c2387`.

Source path: `GRWTSK/Algebra/Basic/Variant4959c06236bd0d312087a9118c6720e42a86122f06657ec0c95278ca8f1f7307.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant4959c06236bd0d312087a9118c6720e42a86122f06657ec0c95278ca8f1f7307.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Associated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Unitary` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Int` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Zsqrtd](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/zsqrtd.md) | 29 | `declaration-track:d69652af0e8a9abd0cf5a43eceb819e709cd398c4020924081a81149eb54f67e` |
| 2 | `def` | [ofInt](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/ofint.md) | 45 | `declaration-track:587e479f098cce4c36631f5fd06dcefd792caea0cf39b78291a02822a215f647` |
| 3 | `theorem` | [ofInt_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/ofint-re.md) | 48 | `result-track:16486e7f8db32cbf3074bd9ff0c4fd00534ea4a727af488e8e926de46bdebbb4` |
| 4 | `theorem` | [ofInt_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/ofint-im.md) | 51 | `result-track:0e53a21d2e3c2418a53e115b6b240b9e0e0336aa119be66ebd2a2d85c89f15c9` |
| 5 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-5.md) | 55 | `declaration-track:3484562dc703f6ba9d6996179d7fd62363b6309cbb41c125c7f2cef2641b9c6b` |
| 6 | `theorem` | [zero_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/zero-re.md) | 59 | `result-track:d98266b8422478ac3c9ed3e7c37e80ceb001e3588b65f65fcda3ba1a19d05ce3` |
| 7 | `theorem` | [zero_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/zero-im.md) | 63 | `result-track:4ec6e4fee0d07d13ca3239f963a378a3aeb1e29120e79214b0cfa8b361a37cfb` |
| 8 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-3.md) | 66 | `declaration-track:230a39c2fe3ca5519fcce47d2a498b4a5cd743fbbca0d09a0901844ba6bb951e` |
| 9 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-20.md) | 70 | `declaration-track:ccb4941d1cf2049b6bb18fafc8c492cb91a30c4aad06b0a26a046607c28b01b7` |
| 10 | `theorem` | [one_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/one-re.md) | 74 | `result-track:8504365e994ea91f197ee8c8d288021b78372619ed15f00aaa518c2a8838b2c4` |
| 11 | `theorem` | [one_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/one-im.md) | 78 | `result-track:8a8bc71aaefb810b64476a313e416ba69c278f24ac65aa6c3a317b884aae3854` |
| 12 | `def` | [sqrtd](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/sqrtd.md) | 82 | `declaration-track:023b18224d5ec4eafa634f3c8ef59f80807a5b556d6e62ad054096fa2becfade` |
| 13 | `theorem` | [sqrtd_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/sqrtd-re.md) | 86 | `result-track:c9b68bac63105bd30ada0813c91fe4649f884598350e27dd7de531c3933b4f37` |
| 14 | `theorem` | [sqrtd_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/sqrtd-im.md) | 90 | `result-track:30a5fe96fdc068d1ebb006bc2bd7bc4396ae243b9677667543789a8657cfbda9` |
| 15 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-4.md) | 94 | `declaration-track:325413d914843c9876ad51ee81dab59504e061b96f6bbcf88b9c7c4130adb5d3` |
| 16 | `theorem` | [add_def](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/add-def.md) | 98 | `result-track:cd03d879c035e569f38c53460c955fb2c27bfd136f9df3f63400121397580e56` |
| 17 | `theorem` | [add_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/add-re.md) | 102 | `result-track:ca65263119803c5a77619e3eaf6ec68a7a2715c5e0c1bc531d34e6e63e32b4c6` |
| 18 | `theorem` | [add_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/add-im.md) | 106 | `result-track:9aef02f4ea8ff0c74a0387faf70f897e91545b46a1af75c85489c6984d547f36` |
| 19 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-26.md) | 110 | `declaration-track:fd6d68802e1fb54a2db2d82f0573f52abe6d50399a708bb038d965e95fd08ff9` |
| 20 | `theorem` | [neg_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/neg-re.md) | 114 | `result-track:1dac931648b4adf612e9a817cd81a645ec9051236a4030aa090eea12e9b8ae57` |
| 21 | `theorem` | [neg_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/neg-im.md) | 118 | `result-track:5221bfb83b9c9a007e4d6650f018c3deb3d19255903cb99227ddc3cb4d23b291` |
| 22 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-22.md) | 122 | `declaration-track:e43df76b74b6f4b907d7f9a424afc9b82d4ab73b7405e79d39d48977c9952d57` |
| 23 | `theorem` | [mul_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/mul-re.md) | 126 | `result-track:0e8cd26922a4e29edbe9fec34e2b375ea42c5d7725ff4fe30f6aa98044808307` |
| 24 | `theorem` | [mul_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/mul-im.md) | 130 | `result-track:5be5b2fbdf99fff13ba35d5e714276f40aae34bb44b2e9ddef64c3dd34564f42` |
| 25 | `instance` | [addCommGroup](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/addcommgroup.md) | 133 | `declaration-track:5ee81cab32a24742e6a40ef7736a16431f5f5665a6c64daca73b1e0759f7149e` |
| 26 | `theorem` | [sub_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/sub-re.md) | 151 | `result-track:7e9816dd21f0149a490055c7814d7983928e04c6346e671d1212e1d585026afb` |
| 27 | `theorem` | [sub_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/sub-im.md) | 155 | `result-track:4a02bffeee9a0e949659e9193d76e858d32b0b339eda3b52d357600b7a921ea9` |
| 28 | `instance` | [addGroupWithOne](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/addgroupwithone.md) | 158 | `declaration-track:842dc81c74a2d8d123084fadfb2479a6ef08ed76471129c63f3661569f5908a7` |
| 29 | `instance` | [commRing](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/commring.md) | 164 | `declaration-track:cc5f05017a6c7b6ddcc1262d37df87ede9e1883ac72b81686e359aec23e180c4` |
| 30 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-14.md) | 183 | `declaration-track:81eaa9f2303782d9dad7c8a0e25f2fc13ca2569c05eac088cabeea1d7de6c493` |
| 31 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-16.md) | 185 | `declaration-track:95272fe33f03a47622ff2e77970f6b97caa58ff389693b0f853059751b07d2b0` |
| 32 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-6.md) | 187 | `declaration-track:3e9739ae34c92c1167e00f6cd5e708879d93b9e154af340cfcab43815a41a43f` |
| 33 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-11.md) | 189 | `declaration-track:6ffc17626ef500c7b38c98a40e8111d0b570f6608fe898a39935f99ef9c61c7b` |
| 34 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-12.md) | 191 | `declaration-track:71988b6b56170f63d54a26ce0aa0c386a97c7e54f5606ecc9d342f0f3f7cfb67` |
| 35 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-25.md) | 193 | `declaration-track:fc5dec8f42aef7e937fb655ae7b72b71e76b26c209143a693ab13fff5f2b4852` |
| 36 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-21.md) | 195 | `declaration-track:d4c896d0f36a04d4ac3fe6422d3cc58a3dd92e21954b2ef7f27857dda9431f37` |
| 37 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-2.md) | 197 | `declaration-track:137381ebd8314d8e976326a81de4179eca3efcc85fcb89fff9936b54dbab90e3` |
| 38 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-23.md) | 199 | `declaration-track:e47f207d5902231f106f59d6dcde3b36ef96a3455936aa14e6b76cb723640b7c` |
| 39 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-13.md) | 201 | `declaration-track:7fb118ab2de0d5b9ce5d47d71e86405b930d4f1415ae41b57dc810f35bbd1fc7` |
| 40 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-24.md) | 203 | `declaration-track:e6c94a720c5127225dd61562806adcc6b139cf8d6a3836c0fb4597bac1cb87df` |
| 41 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-18.md) | 206 | `declaration-track:9f1ecf9b1f521b5a98a5ba96799ba2839ac2080e2f2c0d7048fa50d85fed5a90` |
| 42 | `theorem` | [star_mk](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/star-mk.md) | 210 | `result-track:cf8abd559c6eb3d7f558873c618eb308916a540620bbbac65eb3a727225a4cf5` |
| 43 | `theorem` | [star_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/star-re.md) | 214 | `result-track:2830ddcc7f0d956df216cae23bc153443c14b9b9a06f3df3e6de1de2e70d5ee8` |
| 44 | `theorem` | [star_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/star-im.md) | 218 | `result-track:ca059bde8e74c1e01c2f777f1f7f8108df52b77d6db020ad2c01e46448fdb72d` |
| 45 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-27.md) | 221 | `declaration-track:fe66bcb7535aa61775b54d0443a258ad56c3a40d1810d040aecbc6d7b003ad9a` |
| 46 | `instance` | [nontrivial](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nontrivial.md) | 227 | `declaration-track:d7f3ace17f613ac80c84ead3b2dd271ba0376fd2ff651c248d8b3313e500856e` |
| 47 | `theorem` | [natCast_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/natcast-re.md) | 231 | `result-track:3d08d9b6d9f38dc0e25f735bbe4668ee066e4dec2c64122756048832f3ee6f74` |
| 48 | `theorem` | [ofNat_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/ofnat-re.md) | 235 | `result-track:866e696ed4d96ef836c6da517bf2832afd8cc47fd29865424cce6c76c742abf0` |
| 49 | `theorem` | [natCast_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/natcast-im.md) | 239 | `result-track:6875c83c8a27c3d82c0305a0fedb5afda187459374aa26599f7d50ab392eae50` |
| 50 | `theorem` | [ofNat_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/ofnat-im.md) | 243 | `result-track:b9341667abf27f92c85bbb88bbecb2e891bdc78fdcf1e5eb92b96bbd1677ec03` |
| 51 | `theorem` | [natCast_val](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/natcast-val.md) | 246 | `result-track:b95e636aea7872d27af67d5324191dff710098ebae4bc33d1934aef0f1502c41` |
| 52 | `theorem` | [intCast_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/intcast-re.md) | 250 | `result-track:3544815c0b5fd8295efe926aaea7ed62d220118acbc81c982a02420f41a3fc64` |
| 53 | `theorem` | [intCast_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/intcast-im.md) | 253 | `result-track:6d2e59e7e2ccbdeca8f3a3e4f4260f964c77939fadf0f2a28b35216dcffda650` |
| 54 | `theorem` | [intCast_val](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/intcast-val.md) | 255 | `result-track:2973a3445a8325c4ff475611d6a32ca2952450e20adc3f0b133e8be3ef130226` |
| 55 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-15.md) | 257 | `declaration-track:90a7f666a2f2536ac072e1d8d7b43b3bdedc697879b638cf75671b329af57cf4` |
| 56 | `theorem` | [ofInt_eq_intCast](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/ofint-eq-intcast.md) | 260 | `result-track:5a977d6e567e68aa0c16a6a9e6840a7478587f180f74458a7363f34f0eb23c87` |
| 57 | `theorem` | [nsmul_val](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nsmul-val.md) | 263 | `result-track:27aacb6f216e9dabc4742d99fd30149db5f22a8ec2c563925df1ad16e7786155` |
| 58 | `theorem` | [smul_val](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/smul-val.md) | 266 | `result-track:5021990985d50bae7a79de327f98fd139189c7c71cd84ff5302f09ac98e57bc5` |
| 59 | `theorem` | [smul_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/smul-re.md) | 268 | `result-track:97eac313a8072c08cce16940c80062368e0d6576a62ea7f5dafc05a1d94ea213` |
| 60 | `theorem` | [smul_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/smul-im.md) | 270 | `result-track:8f20c34a910f585570cb666a95c025bfd79eb8d842ace82fac8831e49ae958e3` |
| 61 | `theorem` | [muld_val](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/muld-val.md) | 273 | `result-track:a34b96eace054f8a88e937416f63574fa5de0091b06a8634c9cd7e9220c9e733` |
| 62 | `theorem` | [dmuld](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/dmuld.md) | 276 | `result-track:6348f03326b83fc2e6bf741e37e3c7c7bfda4143de96b5190b97cc0e92646b7e` |
| 63 | `theorem` | [smuld_val](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/smuld-val.md) | 279 | `result-track:dd54ddf854d32d2e23e7afe09f03e5f078ac8dae78ddb49f5fbbc4c9bcee8adc` |
| 64 | `theorem` | [decompose](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/decompose.md) | 281 | `result-track:71c0d1ecc1d383d282485d9d29182e56751b2ebcf73b86c6b76fc718697e7e6e` |
| 65 | `theorem` | [mul_star](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/mul-star.md) | 283 | `result-track:e1d67d8a0f0cab0c39456de6b03d0b764496ec98f07d9253502d20df336a5b83` |
| 66 | `theorem` | [intCast_dvd](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/intcast-dvd.md) | 286 | `result-track:9001466c81af5337f123337feb8e5a27d2be409ed914c31eb0d7faeedf5d8a0e` |
| 67 | `theorem` | [intCast_dvd_intCast](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/intcast-dvd-intcast.md) | 297 | `result-track:6dfc64abc676c0edeb217b7e5cd529f7ace76b22bd1af735a785b98cd925d36f` |
| 68 | `theorem` | [eq_of_smul_eq_smul_left](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/eq-of-smul-eq-smul-left.md) | 305 | `result-track:ec42cef5b373234c2837d523ad03821ae3a59616ebe1331bd0a9714b6da4d29e` |
| 69 | `theorem` | [gcd_eq_zero_iff](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/gcd-eq-zero-iff.md) | 312 | `result-track:be964abf34e812221b42cdf7b4ae343dd8ba62d7bd438683f7508cbc33cab445` |
| 70 | `theorem` | [gcd_pos_iff](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/gcd-pos-iff.md) | 315 | `result-track:8bcd746db96346dd6542ca9b8d58c0eaa75981e73cc7365d28db448cf3b4f415` |
| 71 | `theorem` | [isCoprime_of_dvd_isCoprime](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/iscoprime-of-dvd-iscoprime.md) | 318 | `result-track:325866a9653d331532a083fead50b388018ea7843ede65c803b73dca800c3c73` |
| 72 | `theorem` | [exists_coprime_of_gcd_pos](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/exists-coprime-of-gcd-pos.md) | 336 | `result-track:594c8819b8da7130d0781b116014aaf171fa3b27c4755c806040b6116179c88c` |
| 73 | `def` | [SqLe](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/sqle.md) | 347 | `declaration-track:b23bc99434c58915efdb8a5127aa011b70656a65e00e367d27b1510445b472e9` |
| 74 | `theorem` | [sqLe_of_le](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/sqle-of-le.md) | 350 | `result-track:9c9f72d97540a92742b887b3db1781e16d1590d88dda67766c109c6b5fde7da4` |
| 75 | `theorem` | [sqLe_add_mixed](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/sqle-add-mixed.md) | 356 | `result-track:60e3e80aec412debbd9d7b1862bccc671bf87326038c115658f5084604bf1a6a` |
| 76 | `theorem` | [sqLe_add](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/sqle-add.md) | 361 | `result-track:642506b0385878fabae805d6c3a010e87cc1fd24d4a5c39b5af8ede6577d5dbb` |
| 77 | `theorem` | [sqLe_cancel](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/sqle-cancel.md) | 367 | `result-track:552ae6793df6f09e8d2fcf3223c4700cbeb5f915812a9938ecafc1324639610f` |
| 78 | `theorem` | [sqLe_smul](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/sqle-smul.md) | 379 | `result-track:f6f416ca1d3a2f496274922ec436ddfb7fa24f85a999ceba3d546a206ef98f02` |
| 79 | `theorem` | [sqLe_mul](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/sqle-mul.md) | 382 | `result-track:7e3cd577b65af8618019898333181709ba24d92dbf71cbfed2039538e16fa2d7` |
| 80 | `def` | [Nonnegg](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonnegg.md) | 400 | `declaration-track:c0dcbf35f2c812de1c154f4e895a131082ca2e51e15c993353ed2ffc7806d482` |
| 81 | `theorem` | [nonnegg_comm](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonnegg-comm.md) | 406 | `result-track:9071796ac7ca93c9c3e34ecff9461769d99d61a5124b5d8168840b158852bf1f` |
| 82 | `theorem` | [nonnegg_neg_pos](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonnegg-neg-pos.md) | 409 | `result-track:c60eb4281eb60fd92d0399aad804df92c6a0e69b1ecabbeb8727f66ee506792f` |
| 83 | `theorem` | [nonnegg_pos_neg](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonnegg-pos-neg.md) | 413 | `result-track:fb8af5fe76d6f2c3a96407c9306abcec47b87cd40debd75ec8bb402969b794b9` |
| 84 | `theorem` | [nonnegg_cases_right](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonnegg-cases-right.md) | 417 | `result-track:90a611fc3875a3276063d751d8c0a565372bff7a25661d0949c27c1575631e0b` |
| 85 | `theorem` | [nonnegg_cases_left](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonnegg-cases-left.md) | 422 | `result-track:552eb1cdfc5bb2831a9dfb0451ede7ffb031756d536533545ff3768a81b981b3` |
| 86 | `def` | [norm](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm.md) | 429 | `declaration-track:71d7ca5ea48fe0ff4dc8b850d45a868dcb9255c8fc068a5ef43f346c573ed12c` |
| 87 | `theorem` | [norm_def](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-def.md) | 432 | `result-track:94800ed60c83eb64869dbe78a35778a62f10170300e9a3fb53a0af044eb2760e` |
| 88 | `theorem` | [norm_zero](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-zero.md) | 436 | `result-track:2d0cef244c2a77091cb33e711a0c1e6f998e28fefe6ae2b820be6a68b5d1bd9d` |
| 89 | `theorem` | [norm_one](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-one.md) | 439 | `result-track:7c639e99cbae465a0307cf7a6ebbc850f541f00ec431755ec53414f7875008af` |
| 90 | `theorem` | [norm_intCast](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-intcast.md) | 442 | `result-track:714c7def742691ca842fcdb38853b4bbabfa6844f99f0730a4125caaf8518273` |
| 91 | `theorem` | [norm_natCast](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-natcast.md) | 445 | `result-track:b94f8a3f92bd50a61c8b47141f2edb1b93975d0e71d93381e92fcbfa272e056c` |
| 92 | `theorem` | [norm_mul](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-mul.md) | 449 | `result-track:c87f2d6ae0c951e03294ee3135f5fa706ebaa163a63fc2fabf2dcf21c4c6e62f` |
| 93 | `def` | [normMonoidHom](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/normmonoidhom.md) | 454 | `declaration-track:fe358bdb29136650637c0153a108934925b042d8a36b699190d36d9f63787ee3` |
| 94 | `theorem` | [norm_eq_mul_conj](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-eq-mul-conj.md) | 459 | `result-track:064a85d2ca5deae42b74d77f87986a14de876ce5fb380d09da217c659d6c890a` |
| 95 | `theorem` | [norm_neg](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-neg.md) | 463 | `result-track:f228b5dfe962ec4f5b2bbd9cff855ee8f5e6138fcc31cef18323a471c827551e` |
| 96 | `theorem` | [norm_conj](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-conj.md) | 467 | `result-track:1319d08e95f5942c76b705e02682b9a8da2adff7bb81da662e2b94461e837c87` |
| 97 | `theorem` | [norm_nonneg](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-nonneg.md) | 470 | `result-track:306f7b64ca5be31357e90db74cf27eb20bcac3955aa9d755eb948cf7516d5aaa` |
| 98 | `theorem` | [norm_eq_one_iff](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-eq-one-iff-source-edition-2.md) | 476 | `result-track:da89b414b11d8ef92be85f64a6cd17d46174688fbd4e645da2f9dea1087cb7cc` |
| 99 | `theorem` | [isUnit_iff_norm_isUnit](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/isunit-iff-norm-isunit.md) | 495 | `result-track:26e29b57495b8cf706e699bfb8e6a58fe66b448157c14a73e47e2297b9d6033a` |
| 100 | `theorem` | [norm_eq_one_iff'](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-eq-one-iff.md) | 498 | `result-track:5b110649e4a3437317859ed06fb48ed708f71ed5a5ac507dacc6c1ec09588457` |
| 101 | `theorem` | [norm_eq_zero_iff](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-eq-zero-iff.md) | 501 | `result-track:45a882d277a887861737c55401cfc2b11241f9f523570d09ab43bb87515e89f3` |
| 102 | `theorem` | [norm_eq_of_associated](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-eq-of-associated.md) | 515 | `result-track:cba2f30b46e71ea126864d21f8ca7572a501e81ce911577e634230c1daf0b3fb` |
| 103 | `def` | [Nonneg](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonneg.md) | 529 | `declaration-track:fd33a80c80f0675da45ee73dffde2525443fe766bfd55a7843e3348d4b029399` |
| 104 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-19.md) | 532 | `declaration-track:cc2e602c987cc2c12e6df2543548351691d3ffc166a60d355dcd5f02a4db4f1c` |
| 105 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-10.md) | 535 | `declaration-track:6c3c5a850a9f778995cff184a39d95e5c7b80875c6ce4e4b1956df9a45de0a35` |
| 106 | `instance` | [decidableNonnegg](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/decidablenonnegg.md) | 538 | `declaration-track:2f7d137cbd9f9d29457ae4ba2e4b594ad29beaf5b44dd5401efefde3f30ac9ee` |
| 107 | `instance` | [decidableNonneg](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/decidablenonneg.md) | 541 | `declaration-track:a3fb33ff6ad806b6b77630f4c6fed0856e9db32f6b914c6e25f1c01fb0b947de` |
| 108 | `instance` | [decidableLE](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/decidablele.md) | 544 | `declaration-track:fe29268b36f3481a7ab28f50aab392015a88d2a93c2bd87d66a857e13c2bb0cc` |
| 109 | `theorem` | [nonneg_cases](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonneg-cases.md) | 547 | `result-track:1f390e941597c964a95a529adb288e51ab3d22ec0214a6d3ef17761571e6af0e` |
| 110 | `theorem` | [nonneg_add_lem](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonneg-add-lem.md) | 554 | `result-track:12541a44516c18702157fdc2c440c53a5aa065c67ce83f60299754204a9980ee` |
| 111 | `theorem` | [Nonneg.add](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonneg-add.md) | 575 | `result-track:6f0b8269b00b2b65738a97e6d28d46ba6f0234a3cec6673d657ab3fd7a2ab030` |
| 112 | `theorem` | [nonneg_iff_zero_le](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonneg-iff-zero-le.md) | 608 | `result-track:32b57a935677a54280655c2a787cfba2676f46c0bfd12da4e4fd0eb0e473b26a` |
| 113 | `theorem` | [le_of_le_le](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/le-of-le-le.md) | 611 | `result-track:36c4a5c7e40244d79eb52216b02d2a754a99a11411ca4fad34702fb073b5bd34` |
| 114 | `theorem` | [nonneg_total](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonneg-total.md) | 617 | `result-track:9067e25065e2e2d62f2fe8e8fcef6d407fce1d36e932dc3e7015d6cd1575501b` |
| 115 | `theorem` | [le_total](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/le-total.md) | 625 | `result-track:9eece29223e52d4cade74bf7a9bdc9d2b1362b8c7503a3b2e0479d9382b024a8` |
| 116 | `instance` | [preorder](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/preorder.md) | 629 | `declaration-track:f765f4d0e6810e8ce340cd3ce609f5672f9f150202eeeed9bf7d8a2747d3b642` |
| 117 | `theorem` | [le_arch](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/le-arch.md) | 637 | `result-track:76a223cec5f79f4dba102e01f055bfc701f124fd5b2d4c323866c9874f9efe7f` |
| 118 | `theorem` | [add_le_add_left](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/add-le-add-left.md) | 654 | `result-track:23f13c5dfbc8de4474cda2b04027cd74c5317664cde41b1ccf05ba41fa6be43b` |
| 119 | `theorem` | [le_of_add_le_add_left](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/le-of-add-le-add-left.md) | 657 | `result-track:d1f5be09d246310658f70934648179175e37e5bf95b1abf797d11e53e469aaab` |
| 120 | `theorem` | [add_lt_add_left](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/add-lt-add-left.md) | 660 | `result-track:f0e47aaf99a06be57dc7cba8ad7f7b2d4f8d04cfada85363f4f02fd51d578e95` |
| 121 | `theorem` | [nonneg_smul](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonneg-smul.md) | 663 | `result-track:efb726d4b582083c0bfef77025807065267efe50b5d813853015a0fbfe90d0b3` |
| 122 | `theorem` | [nonneg_muld](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonneg-muld.md) | 673 | `result-track:2f69e913846b961bc63482c8996fed440564043ec95ffdb2a8d67ca3dd1a882e` |
| 123 | `theorem` | [nonneg_mul_lem](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonneg-mul-lem.md) | 685 | `result-track:de1e18b721aa03f81fc63c6a7d865737bcc8d237da8ee1275c03ad6ff4cc2f6a` |
| 124 | `theorem` | [nonneg_mul](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonneg-mul.md) | 691 | `result-track:43947922e7c94f28fc3e9b8c43c23cd04fe0f7956d1298f577ba40cfeebdb9b8` |
| 125 | `theorem` | [mul_nonneg](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/mul-nonneg.md) | 728 | `result-track:43d8adafd966affa9e268b58a59b4d8a479f06487d98f248520e758729d34a4b` |
| 126 | `theorem` | [not_sqLe_succ](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/not-sqle-succ.md) | 732 | `result-track:d0251c11577feb701cfdcc6f3ce11d2d3c247d5ce73d053afef489183f9c93fb` |
| 127 | `class` | [Nonsquare](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonsquare.md) | 739 | `declaration-track:13a4ac4683dac577e4a641acb64105c5e397299c2cb791ad978d905a0d198618` |
| 128 | `theorem` | [Nonsquare.ns](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonsquare-ns.md) | 742 | `result-track:f12f6a583c76ceacf5c660a44ff9b46dc08dd3b69aa903ac26be2e1a2ed3c324` |
| 129 | `theorem` | [d_pos](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/d-pos.md) | 746 | `result-track:892c4dd25520027dbcd3d9733e6d1708e904034db97159e76b1911932f520d79` |
| 130 | `theorem` | [divides_sq_eq_zero](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/divides-sq-eq-zero.md) | 749 | `result-track:05ab8245362f95bca20e5bbaa3a6917384ea8fec983ee587ba7726dee097213c` |
| 131 | `theorem` | [divides_sq_eq_zero_z](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/divides-sq-eq-zero-z.md) | 772 | `result-track:5ed536ba3a84addbc6d27877b2d0978cb24ccaa0aeb0034239b7a0aaa9576a1b` |
| 132 | `theorem` | [not_divides_sq](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/not-divides-sq.md) | 778 | `result-track:2c3283cdddbe2314fba9856d8566db28b757c7b2afbbbc8693a96e61631b5135` |
| 133 | `theorem` | [nonneg_antisymm](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/nonneg-antisymm.md) | 783 | `result-track:63903e3bc5c969df951f2cdd24ec86acc943603aa470e5bd11c6970d04c9f6bd` |
| 134 | `theorem` | [le_antisymm](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/le-antisymm.md) | 800 | `result-track:7d40d39504729632fc8ae7ce4267379aeed3dd1fe89779125a750c0d33ea0c23` |
| 135 | `instance` | [linearOrder](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/linearorder.md) | 803 | `declaration-track:59025534c58e4fdc01950c5699e4e5a10b00a4b58f367d573c9b1ca37e4abd75` |
| 136 | `theorem` | [eq_zero_or_eq_zero_of_mul_eq_zero](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/eq-zero-or-eq-zero-of-mul-eq-zero.md) | 810 | `result-track:1160b52569892eb597838ade8fb6e623e50df2b14c374f21e7089bc252828e9c` |
| 137 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance.md) | 839 | `declaration-track:0fb8a52f1c6c440750fefb9786c2d4de0c8ab87ac561e59c12d9c15ca391d13d` |
| 138 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-17.md) | 842 | `declaration-track:9d1a600c35e8872d4f59c305e0e0076ca5d3d93841384edadede736dc9eaf8b0` |
| 139 | `theorem` | [mul_pos](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/mul-pos.md) | 845 | `result-track:a65c11ad256ca26ea4c9833b196553a1259e64c1e2cbe675fe64633ccb0a6388` |
| 140 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-8.md) | 851 | `declaration-track:534b668390151291e1aacda0b9f51bcf64c799f36c446762d1162a010c52b0ca` |
| 141 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-9.md) | 854 | `declaration-track:56172f5eba378c03ccdcd687bdb9576947467efbcd8cee9b814d6fee35c33c31` |
| 142 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/instance-source-edition-7.md) | 857 | `declaration-track:48f657b2a5e2b0ccc0ae5d9745792f7619d19a4dd391f4c9a8a0b5e40a589a85` |
| 143 | `theorem` | [norm_eq_zero](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-eq-zero.md) | 862 | `result-track:617f174875df9c56f742a5aea47192739eb9c4dc54378cb5fa22b99b6df95dfd` |
| 144 | `theorem` | [hom_ext](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/hom-ext.md) | 882 | `result-track:eb7c6efb8ad026b7323bbb4b3b1a8eadc1189a4ca81c2d0aecae6aa3a04b1cf2` |
| 145 | `def` | [lift](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/lift.md) | 891 | `declaration-track:34568e974f254df067ffaa2cab568108ef6c25be573f1ff6d75d63fda7ebc14f` |
| 146 | `theorem` | [lift_injective](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/lift-injective.md) | 914 | `result-track:86ca674aecba4cf7f094cc3d5379a6e087e2089ad30b269bc5e40059824f2d9a` |
| 147 | `theorem` | [norm_eq_one_iff_mem_unitary](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/norm-eq-one-iff-mem-unitary.md) | 926 | `result-track:71c534a5e15b535900003fcfc1b24a0459e9d3db295bfc04fb1c7ab8216c8ef0` |
| 148 | `theorem` | [mker_norm_eq_unitary](../../../../NumberTheory/ZsqrtdBasicSourceEdition1.lean/declarations/mker-norm-eq-unitary.md) | 931 | `result-track:f5dce010a6222577989f8712af856e6685d7f1cb5f01774e0825a5d0a9d02542` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=582bd6856cfe680055b0bb8316fa9770dfbbdedf05d4bce360e1b43ff244b114 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant4959c06236bd0d312087a9118c6720e42a86122f06657ec0c95278ca8f1f7307.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant4959c06236bd0d312087a9118c6720e42a86122f06657ec0c95278ca8f1f7307.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
