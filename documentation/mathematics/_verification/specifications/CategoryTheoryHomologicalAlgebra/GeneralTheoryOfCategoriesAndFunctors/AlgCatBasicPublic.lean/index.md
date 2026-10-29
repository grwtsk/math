# Verification target: Alg Cat Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4415e0a606a2410787e04e24a0486aef98796e5e",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd6699c7a065b2ef286473cc9139a27341352ae742eaf123c20ffe7b54ce1a91c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4415e0a606a2410787e04e24a0486aef98796e5e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd6699c7a065b2ef286473cc9139a27341352ae742eaf123c20ffe7b54ce1a91c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd6699c7a065b2ef286473cc9139a27341352ae742eaf123c20ffe7b54ce1a91c.lean.json)

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
| 1 | `structure` | [AlgCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/algcat.md) | 30 | `declaration-track:eb52c9010b8846edc14603812f206d6eacad42166499a008f54d147570b6df92` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/instance-source-edition-4.md) | 43 | `declaration-track:4b7a772e23fc835667fb8d4d25e3c59e4794e5081c75c7695bb584b006fed8d6` |
| 3 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/of.md) | 50 | `declaration-track:1bf9151da0bdef379c1f0ee09ba1f5b1535a6161ce373ee77e7f8b45ebf58e3a` |
| 4 | `def` | [delabOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/delabof.md) | 56 | `declaration-track:2fdc02177fa655c138061c33a600675082e965a85b988e20753c6675d245c8d3` |
| 5 | `lemma` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/coe-of.md) | 58 | `result-track:beb4c7f1ed01ec3e561a86b700919170daa4577e6b2ade36e974cbb0c1ff32cb` |
| 6 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/hom.md) | 64 | `declaration-track:07d3fb54e0193bdcb23b6325aba1400ae2c32da1fa4efdf8a8dd339e2a80386c` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/instance-source-edition-3.md) | 69 | `declaration-track:47257f6ef0f559a57a01b503a29c62300eeaf4b4bb3022e22a2a740d1c6440cd` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/instance-source-edition-11.md) | 74 | `declaration-track:f42bbb878dc9f1de6a054df8b8e339a563d0cbd2c5e7c0fd1b916561f2288ce8` |
| 9 | `abbrev` | [Hom.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/hom-hom.md) | 80 | `declaration-track:865104ea16fce1f095ea735ea39a5f6600379ec24f22ee2f8919e941cce0eb31` |
| 10 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/ofhom.md) | 85 | `declaration-track:e744db60a8477e20f0eaafc8c7aaf37a3f72e62e6d50edd80bd26178a1d45a3c` |
| 11 | `def` | [Hom.Simps.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/hom-simps-hom.md) | 91 | `declaration-track:3ece0c4aadc44e128bc32e6d7c05b40052bf38b9fda05d91ba8f0ec902733511` |
| 12 | `lemma` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/hom-id.md) | 101 | `result-track:717d7eb3263832d3db5035049ec9ece592a5edb67b4923ecd1d18ac1267d4809` |
| 13 | `lemma` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/id-apply.md) | 104 | `result-track:9967161c227dd4f977068e9b083ec8d71f5470a5daab2e97f1c85632413ed9ce` |
| 14 | `lemma` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/hom-comp.md) | 108 | `result-track:8ea15fc2cde01eea94a164c9cfb1327bbb998f127a5beb8fc6f1f7a907b7d7fe` |
| 15 | `lemma` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/comp-apply.md) | 112 | `result-track:55e46aaf799d5050952ce6f8205378e805cce165575d836baeba0a522696fc51` |
| 16 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/hom-ext.md) | 116 | `result-track:78867134f3eb3dd9c74ef34a5b2806aff2bbd3789c8fb80b737f993d6d481c0f` |
| 17 | `lemma` | [hom_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/hom-ofhom.md) | 120 | `result-track:5156a85d2e61eff349cd9a7798379d0598c420f7b9a16ddcec7c94f7049127b0` |
| 18 | `lemma` | [ofHom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/ofhom-hom.md) | 124 | `result-track:cce65a9dab034025750805be1ab494de5fdc5c0b92e273d717980add2bcb1c3e` |
| 19 | `lemma` | [ofHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/ofhom-id.md) | 128 | `result-track:54b2e462bd091e1cc9be816dafe4bda8efd863f63dde1d873c22c4cca5fa33f5` |
| 20 | `lemma` | [ofHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/ofhom-comp.md) | 131 | `result-track:728976526deb562079040adf401be90ad2c4c881ec40e9359e01814400cd8132` |
| 21 | `lemma` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/ofhom-apply.md) | 136 | `result-track:39733feba42d49748f91a6910f4bc42552862415e6355a3af79446612fd5116f` |
| 22 | `lemma` | [inv_hom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/inv-hom-apply.md) | 139 | `result-track:d46e09475c73d0d20bfbfc050901f8d581d0d3b7ea7392f10e9b62095ee1169b` |
| 23 | `lemma` | [hom_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/hom-inv-apply.md) | 142 | `result-track:91d664f7a388baa601d8e1a718621ac9d49e409bdfd02cd4e8d791ce74feb28b` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/instance-source-edition-10.md) | 145 | `declaration-track:e59fca7d3d1210adac7280363526d4d9b8fd384e64cd5545ed0edaea065db663` |
| 25 | `lemma` | [forget_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/forget-obj.md) | 148 | `result-track:ac84b68a589954e65f3ad9b7bdb85b9e1dd54d954eff0bb936be81e263e676cb` |
| 26 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/forget-map.md) | 151 | `result-track:c11e882ccdfb914f26a24309c66cfb4d35394255d68c27e677fb27627a16af36` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/instance.md) | 155 | `declaration-track:06b1bdb1eeebfb728d71233f36ea5eee16e75b2e3628ecd2a59e6869b3df3cde` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/instance-source-edition-2.md) | 158 | `declaration-track:200b6176766d25ed7726d21d36b618855017c2515af86c0632f9ea527196f75e` |
| 29 | `instance` | [hasForgetToRing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/hasforgettoring.md) | 161 | `declaration-track:bd373dfdba90688d9267582d38692f7357c3e96202f9d86dd5fb0b2917f77a0a` |
| 30 | `lemma` | [forget₂_ringCat_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/forget-ringcat-obj.md) | 167 | `result-track:9a0f2acbc7f403196ae3c22ed3f65a6ce0a21d5fa87718f8563aa587c0e14318` |
| 31 | `lemma` | [forget₂_ringCat_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/forget-ringcat-map.md) | 172 | `result-track:6a5a71cfdd6bb2588485b4626b3bebdb72e93501fda4f9a27e1fcefe45471d0f` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/instance-source-edition-6.md) | 176 | `declaration-track:814f83e0390a91e6d7be37ef8681a79b5549a2b4e88fea91bde81086f6d220c0` |
| 33 | `instance` | [hasForgetToModule](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/hasforgettomodule.md) | 179 | `declaration-track:cc4858c9026d5751fab60d19d92868d13ce542cf38be4d88a0af0fdeb0d0204d` |
| 34 | `lemma` | [forget₂_module_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/forget-module-obj.md) | 185 | `result-track:62f17ce8c4847c6a123f70e174e22d295dfff14eaaef5139f01300b678876bbd` |
| 35 | `lemma` | [forget₂_module_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/forget-module-map.md) | 190 | `result-track:3a0242a9ed2cf1ffb60233c73191d549819d6c6723f6a914e20e1caf0eb93e5e` |
| 36 | `def` | [free](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/free.md) | 196 | `declaration-track:b6c8ce513bda43185007ff024fbbbfb3bf571d626a4cbbf9221e14987f0c0d81` |
| 37 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/adj.md) | 203 | `declaration-track:d24b9722beb68b21e003fabbd8f79f758b442fc8993ff9759ad2e558e1cd58a6` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/instance-source-edition-7.md) | 211 | `declaration-track:9bc8df27e578fa56af12dfdefe4dc1530774dc1ebf1ae4c761a8cfc14f63b6bf` |
| 39 | `def` | [AlgEquiv.toAlgebraIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/algequiv-toalgebraiso.md) | 220 | `declaration-track:c089def967ff85e6d03f548b9858a98591b22f1da77af543b33360f1147271da` |
| 40 | `def` | [toAlgEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/toalgequiv.md) | 229 | `declaration-track:906f45fffaf082a29d844ccef47be1d0598645aedec7a319c59e397a15242cf0` |
| 41 | `def` | [algEquivIsoAlgebraIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/algequivisoalgebraiso.md) | 241 | `declaration-track:83c19766a1425903f6f32d2fc8c84f81655bdac78160272b8bd81575eb685007` |
| 42 | `instance` | [AlgCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/algcat-forget-reflects-isos.md) | 246 | `declaration-track:2a08788636d9364dd5aaa5b20625146419e61212a812bd6869fcf2425d6781c4` |
| 43 | `def` | [restrictScalars](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/restrictscalars.md) | 257 | `declaration-track:37025391ba9744c423b0c363b5a05571de248bdd94f5ae61c05f38fd7e8e0425` |
| 44 | `def` | [restrictScalarsId'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/restrictscalarsid.md) | 274 | `declaration-track:9829ab9cb3450fa8b963df4864154f68969744d2c631cc26a3773960440889b4` |
| 45 | `def` | [restrictScalarsComp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/restrictscalarscomp.md) | 286 | `declaration-track:6f463ded05781a0b89b770d52d8a9554e19458e384b1ea4e188a7e41780ee71a` |
| 46 | `def` | [restrictScalarsEquivalenceOfRingEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/restrictscalarsequivalenceofringequiv.md) | 299 | `declaration-track:4c36ec9d287202ee025f9cecde085a7ee7e2b9849d29c4b44b71867545718c8b` |
| 47 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/instance-source-edition-5.md) | 308 | `declaration-track:4c28b8d3a5e5db6ddfb299f962de7a651777c6a7b755c0650f977262f4acf2b6` |
| 48 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/instance-source-edition-8.md) | 312 | `declaration-track:b3cff8e0a5cf6143b37f94f24a36ad71e186bee57a689ef68e9aa60ef6eb4d4f` |
| 49 | `def` | [intEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/intequivalence.md) | 318 | `declaration-track:c663eed1c4282dbd9cfd7fcf43ae7e815562d63a021b2cf6a69950c8f13e4b22` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatBasicPublic.lean/declarations/instance-source-edition-9.md) | 327 | `declaration-track:c2b0a9777bb84bcded8b8a2922b4bb54f84b16d32b2e741920a26edde7c9aba6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91a773f1e55133bc54dedfe217cc70324da8f91c9557f1f62892a4dad718a068 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd6699c7a065b2ef286473cc9139a27341352ae742eaf123c20ffe7b54ce1a91c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd6699c7a065b2ef286473cc9139a27341352ae742eaf123c20ffe7b54ce1a91c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
