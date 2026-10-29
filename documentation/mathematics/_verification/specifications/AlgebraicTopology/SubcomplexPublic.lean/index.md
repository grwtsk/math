# Verification target: Subcomplex Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d322d1e108a1c40fea9b41329937a597eff14752",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcomplex/Variant1e68e8d8de1a7b235ae67906cd3475195afc3ec807876946f698be44758e9d14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SubcomplexPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/SubcomplexPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d322d1e108a1c40fea9b41329937a597eff14752`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcomplex/Variant1e68e8d8de1a7b235ae67906cd3475195afc3ec807876946f698be44758e9d14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcomplex/Variant1e68e8d8de1a7b235ae67906cd3475195afc3ec807876946f698be44758e9d14.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/instance-source-edition-4.md) | 33 | `declaration-track:6c5a2180c37127495da5375d03236c0820ab6a12d646998fb7e78d062b408f38` |
| 2 | `abbrev` | [Subcomplex](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/subcomplex.md) | 47 | `declaration-track:82dd4894f896ebc028c4cbdad017c5af07ec43b3849ae0f4c0f58be750ab9bc2` |
| 3 | `abbrev` | [toSSet](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/tosset.md) | 54 | `declaration-track:bb19c519bf3f9685b5acc8d9b2f02c8ffe3d1afd62c8505a9618ad6181ee4f1d` |
| 4 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/instance.md) | 56 | `declaration-track:3cdb36e9aa3e760cd84c90f202de6756e49da97c89600a8cecafae7261a1f0a9` |
| 5 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/instance-source-edition-9.md) | 59 | `declaration-track:e05797ebb1436d67dbccb93374d74c14a7023ced2c28dbb35d1ee6e2f19333f7` |
| 6 | `abbrev` | [ι](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/anonymous.md) | 65 | `declaration-track:2fe00230e37642ddec869f6c2fe0b3b41d4b8023316a754f95cfc38f58dbc8aa` |
| 7 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/instance-source-edition-5.md) | 67 | `declaration-track:7e607f07708c8be3486b250b233bdef529141f9d0eafe45b9ba2810128a965ef` |
| 8 | `abbrev` | [homOfLE](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/homofle.md) | 76 | `declaration-track:2365482e3533b74ca20693441507104e42cd11de89ac9a73eb17c78fb666519d` |
| 9 | `lemma` | [homOfLE_comp](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/homofle-comp.md) | 79 | `result-track:72273d48978e9f37a32135262f5170abb80f24bcf3ec476f72baa4af4c5e9e69` |
| 10 | `lemma` | [homOfLE_refl](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/homofle-refl.md) | 84 | `result-track:f711795475f0334279c7f17d1c50b05b64d77714778553f0cc128f6c9b73dd8e` |
| 11 | `lemma` | [homOfLE_app_val](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/homofle-app-val.md) | 87 | `result-track:b2d3e521de3557930b13ff03efabf6c2cb286d76d6acb8b18be6add9d6038078` |
| 12 | `lemma` | [homOfLE_ι](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/homofle-source-edition-2.md) | 91 | `result-track:7755fa816fd3426f2bfbb8f0881f485a757e2043efa533ca82128ce4c79a8d9d` |
| 13 | `instance` | [mono_homOfLE](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/mono-homofle.md) | 93 | `declaration-track:64734a2e2b3eb28e1822248a70bfce054c0f3980acc63e3ad073ccd9e052a714` |
| 14 | `def` | [eqToIso](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/eqtoiso.md) | 98 | `declaration-track:e4a80e9be42d8134ec2a31f1d87d219d43ea3184c9dd0efda0965b0fae15fb52` |
| 15 | `def` | [toSSetFunctor](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/tossetfunctor.md) | 106 | `declaration-track:7e192ba66a56323baa914018efde1efdfad27b6d3bbfb875f97d72f32185967b` |
| 16 | `def` | [topIso](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/topiso.md) | 117 | `declaration-track:ce97e888ebd75c054add462a55c9749cd1378bdec91f7714c5fdf4039baf831e` |
| 17 | `lemma` | [topIso_hom](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/topiso-hom.md) | 121 | `result-track:0c6168ce016a3b802d74a56ef9ae013c3fad9e87e6a03295f12144cac8b3d427` |
| 18 | `lemma` | [topIso_inv_ι](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/topiso-inv.md) | 124 | `result-track:fb34920260fca00e423b4ff2f06303538426d4df6a998b4878c0f7692e171ce2` |
| 19 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/instance-source-edition-8.md) | 128 | `declaration-track:d4f432ad9291e1344e5360de4921d03390b56460ceceba24b2f525a59eed3152` |
| 20 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/instance-source-edition-6.md) | 131 | `declaration-track:8bf7f13470033670d03f1ba3590db2a96403f6bda79b7da12b8d6163f4379636` |
| 21 | `def` | [isInitialBot](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/isinitialbot.md) | 139 | `declaration-track:7c5c25482dd1101f8edf2142e7f3d850efe5c87e3b2820b7a99ea79ee8bf2cd0` |
| 22 | `abbrev` | [ofSimplex](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/ofsimplex.md) | 143 | `declaration-track:96f1af0a2c3b05661e4a4bc4e2f9994bc6b2c5e749210bf830bcab70d4a8b670` |
| 23 | `lemma` | [ofSimplex_ι](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/ofsimplex-source-edition-2.md) | 146 | `result-track:d3bd82e47187ea8e10487850016c374fab1aaaa24e6bb215779c5a7104278d86` |
| 24 | `lemma` | [mem_ofSimplex_obj](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/mem-ofsimplex-obj.md) | 151 | `result-track:edd91ce123feb773b1417f302234faa654736d01886a6e9eef4f2560ec024972` |
| 25 | `lemma` | [ofSimplex_le_iff](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/ofsimplex-le-iff.md) | 155 | `result-track:052e870aa948cb2428ae0efb0e9668742f32d6c920ce43db978cfd1d99c90043` |
| 26 | `lemma` | [mem_ofSimplex_obj_iff](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/mem-ofsimplex-obj-iff.md) | 159 | `result-track:be8b95164f81f7d99814cd0eead74774f7cb53100f22977e9e6ad89bd36f57db` |
| 27 | `lemma` | [ofSimplex_map_le](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/ofsimplex-map-le.md) | 164 | `result-track:5a900a0dc2a429a13b5a0b59de99b8a538198e112ae4c92af83e86944777fe85` |
| 28 | `lemma` | [ofSimplex_map_of_epi](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/ofsimplex-map-of-epi.md) | 171 | `result-track:a308d9f7aeb7df2d43d6e1bc6d3692ab98662a8bafe6a26101a938589f3be62d` |
| 29 | `abbrev` | [range](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/range.md) | 184 | `declaration-track:0d660c82a32c3bfe8876ffa57684c07d7b5768ba2f266a93fc04bb72ee94bcf8` |
| 30 | `abbrev` | [toRange](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/torange-source-edition-2.md) | 187 | `declaration-track:8090c59cf23815e16291e5b64f442994b48ec119e99f3cdc96f3943cab0f0460` |
| 31 | `lemma` | [toRange_ι](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/torange.md) | 190 | `result-track:262fe922d77be6d9696376d1df7240c5993c55d0f872bc858e373be4635cf51b` |
| 32 | `lemma` | [toRange_app_val](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/torange-app-val.md) | 193 | `result-track:7a625529f6c6c71a35b5982d8eef4c71f304b383e4cf37c1e6b66e1de7e10396` |
| 33 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/instance-source-edition-7.md) | 196 | `declaration-track:b602a2c9ffb1946d516cdfe4c7d57c00beb8606b1b7b58f4e97c7e3cf6d1f2b9` |
| 34 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/instance-source-edition-10.md) | 199 | `declaration-track:f267e2368bb6867ba799df19c595444efe7ed03d5b2785f9a971944a4621de95` |
| 35 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/instance-source-edition-3.md) | 202 | `declaration-track:5d1659bb42211a720c9e37a20a59cdaa66bb218bf959612f8f68deb195fb370e` |
| 36 | `lemma` | [range_eq_top_iff](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/range-eq-top-iff.md) | 205 | `result-track:bcee0ebb82f2a4d00e13bcd1cd1b787e4cd28c3c88faa7a47e173e17a83c906d` |
| 37 | `lemma` | [range_eq_top](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/range-eq-top.md) | 210 | `result-track:325534fdcfd7015639ee016d9f42618f8d267dc306cb7fe479b244f87f5c5400` |
| 38 | `def` | [lift](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/lift.md) | 222 | `declaration-track:caaa4c2afade111801248d5ad313542d012cbbd8cc26650c276e85969f3bdbdd` |
| 39 | `lemma` | [lift_ι](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/lift-source-edition-2.md) | 225 | `result-track:e579daff8f1b747a0d3001cb1985f9dfad70097d541f4996b1da2393f2b9563d` |
| 40 | `lemma` | [lift_app_coe](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/lift-app-coe.md) | 228 | `result-track:cd7e4177a46ad60840efedd5fd222ce72e68c7338f3f8909c0f4893c52f92f83` |
| 41 | `def` | [preimage](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/preimage-source-edition-2.md) | 237 | `declaration-track:f1d1758dd1aded99e5cb5ffa117a2f09be38db467bb0c6ddce10083c0dccd73a` |
| 42 | `lemma` | [preimage_max](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/preimage-max.md) | 242 | `result-track:f71e7ac8473161cb73101963b9e180b070f3bc0c07d2d719c3e054b537dac5ea` |
| 43 | `lemma` | [preimage_min](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/preimage-min.md) | 246 | `result-track:73f96330ffa31d57d15f9c15f612b03e2aed158c45d4272d1595ebaa06527048` |
| 44 | `lemma` | [preimage_iSup](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/preimage-isup.md) | 250 | `result-track:b92e63cc08c6bd0bc54530477bf961d7ea3f46131904a77b206878683f5d3657` |
| 45 | `lemma` | [preimage_iInf](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/preimage-iinf.md) | 254 | `result-track:343820efe0ed14e168be09a46d1147144910568da209ac79769b89775e250f4e` |
| 46 | `lemma` | [preimage_id](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/preimage-id.md) | 258 | `result-track:b1bc72521a3394c680fc893101b25f101d16caff6314da5d61fe0125483b4f46` |
| 47 | `lemma` | [preimage_comp](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/preimage-comp.md) | 260 | `result-track:3db8779021337fdb160369bf81a1a886c932168ddbb4f5d2091b28b9cfd6ce4d` |
| 48 | `lemma` | [preimage_ι](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/preimage.md) | 264 | `result-track:cc15ee9cf9669879e936d47653480ca5c58783b710eb5c8f21f50e3c1a13761d` |
| 49 | `lemma` | [preimage_monotone](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/preimage-monotone.md) | 266 | `result-track:d19665ae72405eb157db38b2d95657b780529536a38fc826c575d4e64b7e5d54` |
| 50 | `def` | [image](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/image.md) | 277 | `declaration-track:d169860ef8f16343d76a5fe9c4bbafa0d469920b4b70c710fc46b816c4966b05` |
| 51 | `lemma` | [image_le_iff](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/image-le-iff.md) | 279 | `result-track:1a35f546cf46e70dcc7c1eb3ee4c43bf6a91ad67aa4f0c25e347b4f5050403e8` |
| 52 | `lemma` | [image_top](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/image-top.md) | 283 | `result-track:dcab11c582d585997cd6943ccb42418d58901588cb3c71845769a547169219bd` |
| 53 | `lemma` | [image_id](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/image-id.md) | 286 | `result-track:17eb1a5183fec8fa5ae53278e929542cfc9752de3b569e55cf890991852039ef` |
| 54 | `lemma` | [image_comp](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/image-comp.md) | 288 | `result-track:d724987e529083a4b1621a045ef786b388ddbd3b4bdc904d598e4088b291f705` |
| 55 | `lemma` | [range_comp](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/range-comp.md) | 291 | `result-track:9d10258bd574192556fe6156169b591c69a3f6026777baf29d5a44b393a5178d` |
| 56 | `lemma` | [image_eq_range](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/image-eq-range.md) | 295 | `result-track:d47f042d385f6550eeedc63f0d8ad6767d9cd2ac14829bda85579c58b0f6dcf2` |
| 57 | `lemma` | [image_iSup](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/image-isup.md) | 297 | `result-track:c68f76c240ba3301d1c6bbad0fefda445dfc6bd8f88cdb883f68f9596ca7377d` |
| 58 | `lemma` | [preimage_range](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/preimage-range.md) | 302 | `result-track:96b4d13538118ca92eddba06f88e338255ce8ffb80501f3540531a0b476cad05` |
| 59 | `lemma` | [image_le_range](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/image-le-range.md) | 306 | `result-track:8404786ca5403d3663b967a96bd2dbfb6606cf34884e140fa31dc727f5cd552f` |
| 60 | `lemma` | [image_ofSimplex](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/image-ofsimplex.md) | 310 | `result-track:3bf846b4b9578eade45b906cc6d3ac08ff156c2e44ed9c88254ff8b541c6d5c1` |
| 61 | `def` | [toImage](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/toimage.md) | 321 | `declaration-track:05d5ad1a202bdd58f2fdcb1b4e605e87ef168ecf1d6666d7a9c160f2d07c9c36` |
| 62 | `lemma` | [toImage_ι](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/toimage-source-edition-2.md) | 325 | `result-track:37585d5afe0c345bdd35cc412cf292f413924e566648960c2ce9e16562eb0b15` |
| 63 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/instance-source-edition-2.md) | 327 | `declaration-track:4e6844a7ae6eba14c01c65c0010698de9f41b9aae9cd585b5af4477be6225e53` |
| 64 | `lemma` | [image_monotone](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/image-monotone.md) | 333 | `result-track:8e9b0c0cb807a2bb2bbbf40acd630a19e4f4b8e9ba5a18824e5a8eb85a0b13ba` |
| 65 | `lemma` | [preimage_eq_top_iff](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/preimage-eq-top-iff.md) | 340 | `result-track:a53279850edf74a750e7a6ba89e71182738994357a8ca862d20d1f3b9f6b60bc` |
| 66 | `lemma` | [image_preimage_le](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/image-preimage-le.md) | 345 | `result-track:0cc6a7e7167bd773eadb7b31495ad0f87236751622b91158c4208a5e0b6edcbf` |
| 67 | `lemma` | [preimage_image](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/preimage-image.md) | 350 | `result-track:47eb7dadd485f8c85d0d412bc04d69816b516045a4af83b288f80751b10e5c15` |
| 68 | `lemma` | [image_le_image_iff](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/image-le-image-iff.md) | 357 | `result-track:3f1d82a51728a3fce796a04b1a21246d9168aca9136bf1c5eb0b5180ef0d60bb` |
| 69 | `lemma` | [preimage_image_of_isIso](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/preimage-image-of-isiso.md) | 364 | `result-track:e17288a5a778ae29d9dc81203c91f68a1e91bafb088cacefbbfb9ab58a4c5578` |
| 70 | `lemma` | [preimage_inv](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/preimage-inv.md) | 370 | `result-track:8ecafafc1a9e9364a67daffbe4921662dd72ec5923d548b76b4aca7d8e19f393` |
| 71 | `lemma` | [image_inv](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/image-inv.md) | 376 | `result-track:d547f7c2c9df47880469325d1a58384882db7aa265aefc6165b3e6694d03d481` |
| 72 | `def` | [fromPreimage](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/frompreimage-source-edition-2.md) | 384 | `declaration-track:de0dcc9d23be3dd5e7eddc0d9d26ad6e09bef8a5a7c28567dc152b0420d4a2e0` |
| 73 | `lemma` | [fromPreimage_ι](../../../../AlgebraicTopology/SubcomplexPublic.lean/declarations/frompreimage.md) | 389 | `result-track:a78e58f92b44a92492db624ee020b638a42df284eea8f71f60db3c8c8e6e970f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4aa54dafde2ec4c50972102b511dd5cf2a6016490442c88d31bbe8eef724e79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcomplex/Variant1e68e8d8de1a7b235ae67906cd3475195afc3ec807876946f698be44758e9d14.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcomplex/Variant1e68e8d8de1a7b235ae67906cd3475195afc3ec807876946f698be44758e9d14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
