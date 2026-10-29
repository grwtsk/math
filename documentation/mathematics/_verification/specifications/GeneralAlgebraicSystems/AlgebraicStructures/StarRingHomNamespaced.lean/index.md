# Verification target: Star Ring Hom Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48953c98aaca9898e40939cdcd2ee5dbf86b1324",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/StarRingHom/Variant756254cbb9a74dbe85b35d08b2a59b0402552a0ae934424ab63cb7610ded4f2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48953c98aaca9898e40939cdcd2ee5dbf86b1324`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/StarRingHom/Variant756254cbb9a74dbe85b35d08b2a59b0402552a0ae934424ab63cb7610ded4f2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/StarRingHom/Variant756254cbb9a74dbe85b35d08b2a59b0402552a0ae934424ab63cb7610ded4f2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonUnitalStarRingHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/nonunitalstarringhom.md) | 47 | `declaration-track:2c60da9f72cced3a3497e86ef0f346d5379f15a81f6118ddaa7726c0dd972bf7` |
| 2 | `class` | [NonUnitalStarRingHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/nonunitalstarringhomclass.md) | 64 | `declaration-track:3c18e60c28284bce0c6ad683186848711c730b3910cc5b9276fcc986106a4cac` |
| 3 | `def` | [toNonUnitalStarRingHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/tononunitalstarringhom.md) | 78 | `declaration-track:676cab5c5e957da327072d099a5278f79c4dbb5980d0c23473ed503ef1d8f3d0` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instance-source-edition-7.md) | 82 | `declaration-track:8c7a5860a3b8ad07ec80f9c01d7270155d18efea6342c09c17ee165e5c14645d` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instance-source-edition-15.md) | 97 | `declaration-track:de680c459cc65919c976f3ea6f5f85dcf213436b0dd7501bafef0f5aabf862a2` |
| 6 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instance-source-edition-9.md) | 101 | `declaration-track:b5068e74c955f0a25810255844485548fff58776f93fc22223c119c9215438b2` |
| 7 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instance-source-edition-11.md) | 106 | `declaration-track:c2b537dec3ea9800ba4b9c7d478dd929cee64f8bee5fcad2183bf0f2b193e9ec` |
| 8 | `def` | [Simps.apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/simps-apply.md) | 110 | `declaration-track:39f3091786922b8290eec60fae23a1eadb1c9dcd78522ca64a8184380fa61c9e` |
| 9 | `theorem` | [coe_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/coe-coe.md) | 115 | `result-track:8d4dbbbccf70d6f80c9d2a049119e4d3b24a3129830d0956a8cf3fdb8e903ac1` |
| 10 | `theorem` | [coe_toNonUnitalRingHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/coe-tononunitalringhom.md) | 120 | `result-track:4474354c51ed898081bbb8dabb6173b8e6a13023145b87f531380a4f266edfb1` |
| 11 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/ext.md) | 124 | `result-track:0c6751cadd22dc4e9fb471543f3e6c02328f6b8d18087fbff4c1037dc7d6966a` |
| 12 | `def` | [copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/copy.md) | 129 | `declaration-track:daa92f3b0c9ec9c1cc1a7e39c9d53efe13ef113563144989330f20ff7dfc1b27` |
| 13 | `theorem` | [coe_copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/coe-copy.md) | 137 | `result-track:8aadd982b4d0cc753d42ddbc55c66029a6f95413be4e29ff15cd9d1af0f65e5e` |
| 14 | `theorem` | [copy_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/copy-eq.md) | 140 | `result-track:536aeb3f16edf44dbd51493d6d5c7b7bb4157998662a5231ff42f1086416275c` |
| 15 | `theorem` | [coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/coe-mk-source-edition-2.md) | 144 | `result-track:d917f5d73c7b7c078065762fe94652e8dc35a826739658500b3d21548d722917` |
| 16 | `theorem` | [mk_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/mk-coe-source-edition-2.md) | 149 | `result-track:893724a886dd01f15a918606a1671bb10d06d6d15d99e3c3e269ecc9034781c9` |
| 17 | `def` | [id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/id.md) | 159 | `declaration-track:b3cc9d0cef631f94b53069687516fb4e42d295f83952d73db602379ef6e6db5e` |
| 18 | `theorem` | [coe_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/coe-id.md) | 163 | `result-track:e8598a434574c64d064f00bf4a231b5b5d3828a69f8578604427e321348ca919` |
| 19 | `def` | [comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/comp.md) | 169 | `declaration-track:78806757db51c00e16f4b26fc73c28edc799cbc7a877d284ad5a37c2f5ffbabe` |
| 20 | `theorem` | [coe_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/coe-comp.md) | 174 | `result-track:29da1201ba0dab7f40e08e856626ba80d26b6322dd1a0cc6537a9fa4ce3c9c58` |
| 21 | `theorem` | [comp_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/comp-apply.md) | 178 | `result-track:94c43a0b7f795c2105a0895271a9058f761d76a413d178f69f11947396adf70b` |
| 22 | `theorem` | [comp_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/comp-assoc.md) | 182 | `result-track:1a4641369f7cdb0238a466f01732c16916565454851cbefaa11e1fa391bec0aa` |
| 23 | `theorem` | [id_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/id-comp.md) | 187 | `result-track:1e08be7661027b802c2a99947e08c3537e4df20180477c700dbf4a575e47d412` |
| 24 | `theorem` | [comp_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/comp-id.md) | 191 | `result-track:cb9e6eccca67a691656aa721538fb8354c2d1685c6c3004602d4da2896608541` |
| 25 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instance.md) | 194 | `declaration-track:01fed8ce07b833b09f8cdab830a3ae625dcfaefec55fc58641ecfa89a85d8fb7` |
| 26 | `theorem` | [coe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/coe-one.md) | 202 | `result-track:43eebf087c11058ef3bc800667770eadb2a2e66d3d6bf42aef2fa211580b567a` |
| 27 | `theorem` | [one_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/one-apply.md) | 205 | `result-track:6e1d6d18067c9e7b5f466b542e1dda69d8147609c0cdd655716b3316e49c795a` |
| 28 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instance-source-edition-6.md) | 217 | `declaration-track:6f314f1c71ce04d88b6bbc5e02efb7154013696405bcabd2848df5bf5834d816` |
| 29 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instance-source-edition-8.md) | 220 | `declaration-track:9fe64e8f97c828a324d8ab1eebe42e7f01cb23d6404c793a7701da373658da9a` |
| 30 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instance-source-edition-10.md) | 223 | `declaration-track:c1f59e808b85a881819239592f6819b35ef4642d080c9cc3e773ebdcd4f0305d` |
| 31 | `theorem` | [coe_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/coe-zero.md) | 228 | `result-track:f39b20d215c8d8ec089274195b03c9c81a21c8b2ff6f62645bc6ea25ee593508` |
| 32 | `theorem` | [zero_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/zero-apply.md) | 231 | `result-track:ab55ff35caca0447bde4c5467e708e9311432aa092be59f684b0360a7fa31f06` |
| 33 | `structure` | [StarRingEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/starringequiv.md) | 244 | `declaration-track:3d109a46b7e4a1e8fc6ad856ae1befe6b6ac29c0a3e7ad4e659bd15d28bb893e` |
| 34 | `class` | [StarRingEquivClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/starringequivclass.md) | 258 | `declaration-track:25238fc681ca183a4f9de552b96e651f36042980c4d3467a22b9659dd13c76f0` |
| 35 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instance-source-edition-5.md) | 267 | `declaration-track:60951b4fa36d4bdb200e2e3c8b6151e786580b7b40ec9e18eef18c4155ab3fc1` |
| 36 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instance-source-edition-4.md) | 273 | `declaration-track:5ebbafe12450ba30ee2236cacd9782fc7ac503b7d49bd80704754f6a6e73f4b1` |
| 37 | `def` | [toStarRingEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/tostarringequiv.md) | 281 | `declaration-track:b47d6a68bd476444a34a78b234285183335cd08f79d4b9e882a881e5dd3babd5` |
| 38 | `instance` | [instCoeHead](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instcoehead.md) | 288 | `declaration-track:e0293b50614225d63f87ebf963646cc5eb2910134d803d0f8c276a92e856b51e` |
| 39 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instance-source-edition-2.md) | 300 | `declaration-track:398252329b02dde382a4b50838c7d7ce80c04d7f3829767faad7f8371eb537ac` |
| 40 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instance-source-edition-3.md) | 310 | `declaration-track:52841ebeee0b201ccf49151c4bba2120d56398e949a832e0329afd2c50ec9146` |
| 41 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instance-source-edition-12.md) | 314 | `declaration-track:c7342a679f613c75604f7a8538df92d22e328d2ae86fb70545284aa0dbd0b147` |
| 42 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instance-source-edition-14.md) | 318 | `declaration-track:d4bfddef9dce6f5f4569cfd10dcdf53c88535c0011c788e94abac96eaf184524` |
| 43 | `theorem` | [toRingEquiv_eq_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/toringequiv-eq-coe.md) | 323 | `result-track:48163a7a5cc238ce36a47945b02ba1e8d0efa209cda15873684a5416a97c35ca` |
| 44 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/ext-source-edition-2.md) | 327 | `result-track:eb21fc7061fb6a19c0c0608f3eccf15595cb97cab23a8e49a88a6e72422f7767` |
| 45 | `def` | [refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/refl.md) | 332 | `declaration-track:6c450cd86711572a12f14c04da8bb59975d420ac256b31cf9b0068f3b920ec70` |
| 46 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/instance-source-edition-13.md) | 336 | `declaration-track:d0828f4f6890594a7de245676e8d886d50a284004b0f2bd112bcf97450da2b46` |
| 47 | `theorem` | [coe_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/coe-refl.md) | 340 | `result-track:7db067abc87b9f31b0c355f93ffa040c2fa65b383fe65811cff51bbe3fb408e4` |
| 48 | `def` | [symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/symm.md) | 345 | `declaration-track:51fa3b2f6854768c2b7c277a0a6c8c407b97b9354cb1179d7f55deb9b7786d92` |
| 49 | `def` | [Simps.apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/simps-apply-source-edition-2.md) | 352 | `declaration-track:efcd572eb703cdd11ad90c0cb96a9a13bb6d6de00c581375193eadf1bb2907da` |
| 50 | `def` | [Simps.symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/simps-symm-apply.md) | 355 | `declaration-track:4372252c228af5c8d4c9ecd60da692ce40b037deaf7e270266c0a791f85f380a` |
| 51 | `theorem` | [invFun_eq_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/invfun-eq-symm.md) | 361 | `result-track:59377788993a2a28c329d6cd0e8a1876847ccaadf50eb8ba3bbf01240085358c` |
| 52 | `theorem` | [symm_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/symm-symm.md) | 365 | `result-track:49ca9ed37fd6587f9b8daed05e8112bee4a0c121443a05534910afdafd4d341a` |
| 53 | `theorem` | [symm_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/symm-bijective.md) | 367 | `result-track:7ae0f6ebd62ddcafae227d3fbfa544063abf7c59e7e36ed38c3e3b28bbcff549` |
| 54 | `theorem` | [coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/coe-mk.md) | 370 | `result-track:9f10cc43be2f18ee674f883215c4225fe5ed35162b49be370c6df8113ff3dcdf` |
| 55 | `theorem` | [mk_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/mk-coe.md) | 373 | `result-track:504bce266dcf283b1311c19f590094b6e2e5303bddc7523287e6299e1a2cbb56` |
| 56 | `def` | [symm_mk.aux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/symm-mk-aux.md) | 377 | `declaration-track:29989ae270789bd5c7d09e1429c9cf2051418837a36df93475f06c3e21d193eb` |
| 57 | `theorem` | [symm_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/symm-mk.md) | 381 | `result-track:1de23d2b8b9f00b1b9740972a23a2c3e968625a8bc9d80a1b69ad832906e7461` |
| 58 | `theorem` | [refl_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/refl-symm.md) | 389 | `result-track:89dc51e68c70945bfbc2db53f906e150f75448e5ef21363269e049d9e66a498a` |
| 59 | `def` | [trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/trans.md) | 394 | `declaration-track:bfb5ad3044f7afabd2a287d0cb689cc8edd3cef15aa8903ad1ce816182a1b66d` |
| 60 | `theorem` | [apply_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/apply-symm-apply.md) | 401 | `result-track:f9c0761d925cbf8e41adbc0670afe85f53ab1d8edd5aa5e8f9127c2fad4ace01` |
| 61 | `theorem` | [symm_apply_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/symm-apply-apply.md) | 405 | `result-track:b82d795635ba150538c62e6ed5e839e24155c548dd5c91c80144a6489683db36` |
| 62 | `theorem` | [symm_trans_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/symm-trans-apply.md) | 409 | `result-track:d39bbbb94e776b244491365933673aa094d4437a7b9dfa1455c4455a921a80e3` |
| 63 | `theorem` | [coe_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/coe-trans.md) | 414 | `result-track:52f053b5350bfd9068bfaa6c70474535746e493dad57c66d6f3f5be69d4d8eea` |
| 64 | `theorem` | [trans_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/trans-apply.md) | 418 | `result-track:35c04a14f029f14577eb4208021aeb59212f9a7019a05c87c0be312310e4183b` |
| 65 | `theorem` | [leftInverse_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/leftinverse-symm.md) | 421 | `result-track:1dd61b4e5f8f03c5da6c8540b221d6a3ab64e2d10e14242aff55ec2a1a05a5db` |
| 66 | `theorem` | [rightInverse_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/rightinverse-symm.md) | 424 | `result-track:a49fecaafc9823582f57d493cda2a701d973522be17ab699ac8e70b61ba97c94` |
| 67 | `def` | [ofStarRingHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/ofstarringhom.md) | 441 | `declaration-track:aef9c9de7115a0130dc29ec64b0e67c6e7a024bb2ee1dd71d9aebf02ee8b7e22` |
| 68 | `def` | [ofBijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/ofbijective.md) | 451 | `declaration-track:b2edda2e9f0269de179c783f808c9e6445977d44de75e371fe26579d95757218` |
| 69 | `theorem` | [coe_ofBijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/coe-ofbijective.md) | 457 | `result-track:fa141e09d43e3e84acd1860361c0de6021545d82b3ca514d8e41ca301f098a4f` |
| 70 | `theorem` | [ofBijective_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarRingHomNamespaced.lean/declarations/ofbijective-apply.md) | 461 | `result-track:c4970eca63ee60b901c17b8ba243b714348a39a439a620c3462f0bfed3d65efc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b16d20a7ff4ad3629adcc805d11fe51d5c9cbba4c6bc89c54a0238bafe9d847b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/StarRingHom/Variant756254cbb9a74dbe85b35d08b2a59b0402552a0ae934424ab63cb7610ded4f2d.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/StarRingHom/Variant756254cbb9a74dbe85b35d08b2a59b0402552a0ae934424ab63cb7610ded4f2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
