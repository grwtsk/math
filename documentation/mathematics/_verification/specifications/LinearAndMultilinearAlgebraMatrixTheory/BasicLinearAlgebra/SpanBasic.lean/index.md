# Verification target: Span Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35189106b641ace4ccf0894c8d714e0be8c0fc1b",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35189106b641ace4ccf0894c8d714e0be8c0fc1b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.EqLocus` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Equiv` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.RestrictScalars` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompactlyGenerated.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OmegaCompletePartialOrder` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [span_coe_eq_restrictScalars](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-coe-eq-restrictscalars.md) | 49 | `result-track:9d331fd9031e745ffc7172005c7f1a0d5430c32bde7b09177104e761205d59d0` |
| 2 | `theorem` | [image_span_subset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/image-span-subset.md) | 56 | `result-track:7570036639b591b019a9c50bb599bc7261840096eba338704648cea0a7fa6672` |
| 3 | `theorem` | [image_span_subset_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/image-span-subset-span.md) | 60 | `result-track:23ce62301a9a41a82be373f173b17e6a0a4d451c079ec328473e4e4f860e0420` |
| 4 | `theorem` | [map_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/map-span.md) | 63 | `result-track:582fb0999ba0706549a992975178a488f2845f956c73eadb6eaa7ca9cf7f75ba` |
| 5 | `theorem` | [map_span_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/map-span-le.md) | 69 | `result-track:9a9f1b69bd78aafff1dfb5e0b51360d2c1093e3e08a5db30c1dfb491900e5f42` |
| 6 | `theorem` | [span_preimage_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-preimage-le.md) | 75 | `result-track:85422a74d02b922320d5da447b32005114347b83b7ba6cf67484d5c993764b74` |
| 7 | `theorem` | [mapsTo_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/mapsto-span.md) | 83 | `result-track:88f6ba8c100d46231b3b02132db6e842f1ae53db56c8468c1189d10b4789c439` |
| 8 | `lemma` | [linearMap_eq_iff_of_eq_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/linearmap-eq-iff-of-eq-span.md) | 93 | `result-track:6883e3b122c2a963fd51d284e3d4b98739fc91180678ffaf9b6594922b30c08b` |
| 9 | `lemma` | [linearMap_eq_iff_of_span_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/linearmap-eq-iff-of-span-eq-top.md) | 116 | `result-track:21365fcfe24998cf3f330e057bcd78716ebe9d4da6daf2f36d97e8861cdc0125` |
| 10 | `lemma` | [linearMap_eq_zero_iff_of_span_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/linearmap-eq-zero-iff-of-span-eq-top.md) | 128 | `result-track:9865265f182496d62908e3e2e2adb88b427671f658a6c05c4127da7f28b3bbd4` |
| 11 | `lemma` | [linearMap_eq_zero_iff_of_eq_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/linearmap-eq-zero-iff-of-eq-span.md) | 133 | `result-track:13d03f00cc74494ea5cd8703e2698c19d5a3aebebe59a5743852398ff1441f12` |
| 12 | `theorem` | [span_smul_eq_of_isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-smul-eq-of-isunit.md) | 142 | `result-track:deb54f213284a9191bd139089fdbf0a4f86c1cd669f3ad9ff68396b22351fcec` |
| 13 | `theorem` | [coe_scott_continuous](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/coe-scott-continuous.md) | 150 | `result-track:774d719da566668fe90ad58cc9fd499df817e22602410c4e54be5e872d9ccdb7` |
| 14 | `def` | [inclusionSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/inclusionspan.md) | 162 | `declaration-track:b8bdd88f1d8167bbc609e974d57114d5916c1aba409ee1f48b673ef4b9fa893b` |
| 15 | `lemma` | [injective_inclusionSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/injective-inclusionspan.md) | 168 | `result-track:3a8f3a78be4f0e71f1bc5e69fc6295986b7c56d78a38b60cdafc064778bbf8c3` |
| 16 | `lemma` | [span_range_inclusionSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-range-inclusionspan.md) | 174 | `result-track:8bebbdd17a2251b109479e89a2f20ad2113b041f73b9a5c836f7455774d07e39` |
| 17 | `theorem` | [span_le_restrictScalars](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-le-restrictscalars.md) | 184 | `result-track:3c1e5f0232796becef9716ad59321747647727883098818e0579515197f22764` |
| 18 | `theorem` | [span_subset_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-subset-span.md) | 190 | `result-track:c6c80e2ae4ba016dbb5fc74fce6d6561f96c74c227ebca044f35a4bd60fe333f` |
| 19 | `theorem` | [span_span_of_tower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-span-of-tower.md) | 197 | `result-track:e6a730022232f0910f962bf82f91f3a69e2af35779b3412add03f580cb489207` |
| 20 | `theorem` | [span_eq_top_of_span_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-eq-top-of-span-eq-top.md) | 201 | `result-track:6c92d2c1261b1de6fbdea2280818047e3df7d0be5a33a7a861e919dd20e4a971` |
| 21 | `lemma` | [span_range_inclusion_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-range-inclusion-eq-top.md) | 205 | `result-track:1af03ca91abfe0a3e11b03749b27eaf08a1b473671932da5f64d123d3645d471` |
| 22 | `theorem` | [span_range_inclusion_restrictScalars_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-range-inclusion-restrictscalars-eq-top.md) | 219 | `result-track:1a35881d04b07d7827d8d573d7714dc9300746e315b96ded3309ce11d930a909` |
| 23 | `theorem` | [span_singleton_eq_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-singleton-eq-span-singleton.md) | 225 | `result-track:14d10c63a5ccb38b1a9e0a7dd0875155d1e5fe11c554c84014948a10530bd749` |
| 24 | `theorem` | [span_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-image-source-edition-2.md) | 241 | `result-track:c8ff486a33a6958f991a6aa8f8b744822ba7e74e9ce4d7d69360e251bf7739b7` |
| 25 | `theorem` | [span_image'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-image.md) | 246 | `result-track:853d0ac50d5e4c4b11caa9bd96be1b41cb48d54cfd6acd329e3829d3ceac0903` |
| 26 | `theorem` | [apply_mem_span_image_of_mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/apply-mem-span-image-of-mem-span.md) | 250 | `result-track:43ea5950c7553c0eb3289f14f26e2540c4272150bc4d04921d1c321aadf6286f` |
| 27 | `theorem` | [apply_mem_span_image_iff_mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/apply-mem-span-image-iff-mem-span.md) | 255 | `result-track:938cc3b0263ed20ef72d96d4ca56344b64b79852dc10995ed9c43f5ee38b3a11` |
| 28 | `theorem` | [map_subtype_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/map-subtype-span-singleton.md) | 261 | `result-track:c4ebafc2afa91e663bc16eedac3cdcfad32a5d1584ad5fae0f39c595b20b896b` |
| 29 | `theorem` | [notMem_span_of_apply_notMem_span_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/notmem-span-of-apply-notmem-span-image.md) | 265 | `result-track:c1a382073cece2aae6a107967485cae6f13ab27ced9fb458c70e64a7b0734b63` |
| 30 | `theorem` | [iSup_toAddSubmonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/isup-toaddsubmonoid.md) | 272 | `result-track:a06e160156dc8fb20628ba312346441fda9c00e89f1ad608f2161a2486069b4f` |
| 31 | `theorem` | [iSup_induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/isup-induction.md) | 296 | `result-track:0d86966af6d775a61c78bb139e4c83f785bea7430358228d48c3e6c2b475f095` |
| 32 | `theorem` | [iSup_induction'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/isup-induction-source-edition-2.md) | 304 | `result-track:286fc38644ce0b4e77b969dcc68dad0950af8549981e9fd01ba8dfe38c74e0b3` |
| 33 | `theorem` | [singleton_span_isCompactElement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/singleton-span-iscompactelement.md) | 316 | `result-track:78ce35f6b278902a8308044577647c34f2cc0bf6ed3a549ba712c582180c2900` |
| 34 | `theorem` | [finset_span_isCompactElement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/finset-span-iscompactelement.md) | 325 | `result-track:fde0ff5788aabe200c396c121e3d494d7076aafe92478774433d7427ddccaca5` |
| 35 | `theorem` | [finite_span_isCompactElement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/finite-span-iscompactelement.md) | 334 | `result-track:d2e20077f332fb0e77878a9b7f45fa822ad75a6439345975c4179203f358d0f6` |
| 36 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/instance-source-edition-2.md) | 338 | `declaration-track:e938daf1a4bcb063c42eeab0f3688130637cb2adf4241e72c2bcabb474f7d8fe` |
| 37 | `def` | [prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/prod.md) | 349 | `declaration-track:ef56066dc4bb542c7214f515264a3e604ad6a542a828cd4da701d4c22625dfaf` |
| 38 | `theorem` | [prod_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/prod-coe.md) | 355 | `result-track:dae28ae701868bc0dc5e060c25027e97843a730a72da483014a346161c1bb3d2` |
| 39 | `theorem` | [mem_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/mem-prod.md) | 359 | `result-track:50252baefc66c622c4559cd7f88e6b2954ea93b16d3b61e005ebb0b3ce26e17f` |
| 40 | `theorem` | [span_prod_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-prod-le.md) | 363 | `result-track:ecb3d8f2cef560b3302adcd57eb3a32bde2bf174e8aa6ee44a123de6f0a09093` |
| 41 | `theorem` | [prod_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/prod-top.md) | 367 | `result-track:c8a0941844582e9bb05297b7aa2a2184ad19c65758dd85cc6da41dbdfd1e8ecb` |
| 42 | `theorem` | [prod_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/prod-bot.md) | 370 | `result-track:832cb38c16d4674f679227d11ed05e5e6802efa29332c4439ef52bbf1d4193e0` |
| 43 | `theorem` | [prod_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/prod-mono.md) | 372 | `result-track:e830c1af57fe123be29d0855d3a9c56dc54b534faba882ec4c193479b341e8c5` |
| 44 | `theorem` | [prod_inf_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/prod-inf-prod.md) | 377 | `result-track:84e3df1b92aa39fe6d5016e70eeed107a9047ddeb3c2c0c04a3b4cdf927346c8` |
| 45 | `theorem` | [prod_sup_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/prod-sup-prod.md) | 381 | `result-track:7c90fe3d836b2d92006f3f05a4dcffcc1da5b7e13837cd22d50dfc7951f909a0` |
| 46 | `lemma` | [_root_.LinearMap.BilinMap.apply_apply_mem_of_mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/root-linearmap-bilinmap-apply-apply-mem-of-mem-span.md) | 391 | `result-track:d593f1ded27e42a43e2eef4325ea62d8b004d9f1668c2518ed9aa7421167a5ad` |
| 47 | `lemma` | [biSup_comap_subtype_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/bisup-comap-subtype-eq-top.md) | 407 | `result-track:724945edb79607063d2ca5ffd15445f6eefbd5609359b557280d456de90df355` |
| 48 | `theorem` | [_root_.LinearMap.exists_ne_zero_of_sSup_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/root-linearmap-exists-ne-zero-of-ssup-eq.md) | 419 | `result-track:bc66dc6821f470ff60cad72a8f9100595b05df9f8529945febf30c3626ded219` |
| 49 | `theorem` | [span_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-neg.md) | 433 | `result-track:3f5d8ad37c794d7a5c8ad4ff242f2e55a20992905a42dc59006a8e9074e81b2e` |
| 50 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/instance.md) | 439 | `declaration-track:169c98282de3d891782fd3e84ff61b1248e96e99328f0fe2e869c5f3018d39f8` |
| 51 | `lemma` | [isCompl_comap_subtype_of_isCompl_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/iscompl-comap-subtype-of-iscompl-of-le.md) | 448 | `result-track:bb082dee3640887cc1efb1264c56d1882efac31bbd56fbf86f908bc7fe8a0138` |
| 52 | `theorem` | [comap_map_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/comap-map-eq.md) | 462 | `result-track:8dd192e370f51875f980d6e5628f7e120d9ba22268242483ef140ecda3f778e1` |
| 53 | `theorem` | [comap_map_eq_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/comap-map-eq-self.md) | 467 | `result-track:61aa4960b8919a365b5e5dcc036ce09302e35166d19afd04f023869db401cb7e` |
| 54 | `theorem` | [comap_map_sup_of_comap_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/comap-map-sup-of-comap-le.md) | 470 | `result-track:a5b51f005f88a7510400839163db727d8776297cb54775e0debdf65570530558` |
| 55 | `theorem` | [isCoatom_comap_or_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/iscoatom-comap-or-eq-top.md) | 477 | `result-track:88e3d9fdc3e9be019226e3734cf743105720714a24f36e8e5ff3788895681399` |
| 56 | `theorem` | [isCoatom_comap_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/iscoatom-comap-iff.md) | 483 | `result-track:7f86ec6054ac425a2c6527d9b32749800172bd49c91c577d68d681a729ecc436` |
| 57 | `theorem` | [isCoatom_map_of_ker_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/iscoatom-map-of-ker-le.md) | 492 | `result-track:6ee4a71fb132f53dfd2ad743a869bec09778cbb8fc2d811f1668de7e6ee170bd` |
| 58 | `theorem` | [map_iInf_of_ker_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/map-iinf-of-ker-le.md) | 496 | `result-track:089f37d270af375124a229ed1e20ece809e41b5e5e6686d0fe8ebd1b4b68b247` |
| 59 | `lemma` | [comap_covBy_of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/comap-covby-of-surjective.md) | 501 | `result-track:72f0fd0045db5bca0fd4f7220759cdb043eca4d3ee69ac420e0347ce7c4fdf54` |
| 60 | `lemma` | [_root_.LinearMap.range_domRestrict_eq_range_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/root-linearmap-range-domrestrict-eq-range-iff.md) | 510 | `result-track:57a8743f333bd67941a5d8e2bd74e154b2c1df4ee9ae92e4957d012261a34e45` |
| 61 | `lemma` | [_root_.LinearMap.surjective_domRestrict_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/root-linearmap-surjective-domrestrict-iff.md) | 526 | `result-track:3b587321a8c9d64f6c08204fb936072cc5ba95eba2c41be0361a4a95cee2c608` |
| 62 | `lemma` | [biSup_comap_eq_top_of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/bisup-comap-eq-top-of-surjective.md) | 533 | `result-track:dcc2862cbcf9f4af0365e48b35b289bcbbb16822c6354db1d6481a7c7631cf27` |
| 63 | `lemma` | [biSup_comap_eq_top_of_range_eq_biSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/bisup-comap-eq-top-of-range-eq-bisup.md) | 543 | `result-track:4938acceab41a6dc33bd62cfd336e730131a1eb232fe9a3402466285c30fa41d` |
| 64 | `theorem` | [wcovBy_span_singleton_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/wcovby-span-singleton-sup.md) | 559 | `result-track:8fadf5ffd10a1330c6657de3151e3732d655b4627c0d23a815a6fd3a48066782` |
| 65 | `theorem` | [covBy_span_singleton_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/covby-span-singleton-sup.md) | 571 | `result-track:66c70a1110964f9ac1a486d0105532503f1072842598fb1404134665b012d655` |
| 66 | `theorem` | [disjoint_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/disjoint-span-singleton.md) | 574 | `result-track:84d6480b902e76d13fe7acf9ed9282f411e4880d767c713d7148c6a1b56b0433` |
| 67 | `theorem` | [disjoint_span_singleton'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/disjoint-span-singleton-source-edition-2.md) | 583 | `result-track:85592baec2628d27d39dd72cd4b331400c3686d5952620fd890bfb6c31ca13cd` |
| 68 | `lemma` | [disjoint_span_singleton_of_notMem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/disjoint-span-singleton-of-notmem.md) | 586 | `result-track:069a8dfcadcc8f8fe38059c01912e1c1ea45e187cb29cc43981fc376aebe80b3` |
| 69 | `lemma` | [isCompl_span_singleton_of_isCoatom_of_notMem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/iscompl-span-singleton-of-iscoatom-of-notmem.md) | 594 | `result-track:066ba4557da6f34df8e399dd59c3d84c17880a7f91a970a7eb022987a2c3a195` |
| 70 | `theorem` | [map_le_map_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/map-le-map-iff.md) | 619 | `result-track:38a706ee3149653435f792f0cf7ad5d187839c77adf3a7c7995ec8faf9648f83` |
| 71 | `theorem` | [map_le_map_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/map-le-map-iff-source-edition-2.md) | 622 | `result-track:5722305e9a21fdb1a2442647d215280790418cad49bf43685dfc8cd7744ed014` |
| 72 | `theorem` | [map_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/map-injective.md) | 625 | `result-track:4f9ac0a0ca2b84f6219d9282c0ac1e0b98d7c8d1e7bbcf9a916f05e78c9f3dee` |
| 73 | `theorem` | [map_eq_top_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/map-eq-top-iff.md) | 628 | `result-track:5ff812e3acc18be807c8ac723aeb2d809abb79939dc8b20308f18dfab4d3c274` |
| 74 | `def` | [toSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/tospansingleton.md) | 641 | `declaration-track:a52a3954806208038b62d15ceda859c10b2664686b4e2eb5b0aa6d63deac2381` |
| 75 | `theorem` | [span_singleton_eq_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-singleton-eq-range.md) | 645 | `result-track:55fdeb7e9d93c3b3f029a74166d1f81e6eebe46a044dc1c362c2e926973cb5ef` |
| 76 | `theorem` | [toSpanSingleton_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/tospansingleton-one.md) | 650 | `result-track:96abc1c0daf86019757613cfcb2af0b50a762d6529b884b6dff68a73f725d649` |
| 77 | `theorem` | [toSpanSingleton_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/tospansingleton-injective.md) | 653 | `result-track:4f27af58b70baac6ca1eade89ae6d86a738d6ac5b3bd1ee1c3ea268acc5c07c7` |
| 78 | `theorem` | [toSpanSingleton_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/tospansingleton-zero.md) | 657 | `result-track:32196b03ef3f502d9d3f0d3676f8c49125c0a82cf8e8c66ccf7dcc07e409773a` |
| 79 | `theorem` | [toSpanSingleton_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/tospansingleton-eq-zero-iff.md) | 661 | `result-track:31e9677e6f2427a035af14f4921e4cb91b8f30e7457986b6c19074c6afde2522` |
| 80 | `theorem` | [toSpanSingleton_isIdempotentElem_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/tospansingleton-isidempotentelem-iff.md) | 666 | `result-track:226bc9f8b76dfeda972c3dff12743822228c60b4c1f5f1e0a4e3c4c6cf2c70a5` |
| 81 | `theorem` | [isIdempotentElem_apply_one_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/isidempotentelem-apply-one-iff.md) | 672 | `result-track:9607c321f76759e65e6c2270110210d8e11fef11dc97f2db631d5bb3c2fbc86b` |
| 82 | `theorem` | [range_toSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/range-tospansingleton.md) | 679 | `result-track:273ec6cfde90f6f9c1de86efd69174fa3738fb4f2365005b2a56ffaab948d8cc` |
| 83 | `theorem` | [submoduleOf_span_singleton_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/submoduleof-span-singleton-of-mem.md) | 683 | `result-track:30eb2c2c1cbbcda99a26e7b300513f6906054705c86a74e8dc012057462ec3d7` |
| 84 | `theorem` | [eqOn_span_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/eqon-span-iff.md) | 699 | `result-track:4671ddf704b2ddd529694931656792dc45983baa88c04b5818833bf7a721ffc8` |
| 85 | `theorem` | [eqOn_span'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/eqon-span-source-edition-2.md) | 706 | `result-track:7a9d3e36bd60a15052b27a097c64bee82ade98340494a6d7e040c4c9f4ddfc67` |
| 86 | `theorem` | [eqOn_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/eqon-span.md) | 713 | `result-track:2c62dca04dcb1218781cbdbdd444afc28c910e8719da56117eadd93adf627ba0` |
| 87 | `theorem` | [ext_on](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/ext-on.md) | 719 | `result-track:436384253d2a99b666a4573c9f3896a775904f4a1589dfe543afce88c1234c0f` |
| 88 | `theorem` | [ext_on_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/ext-on-range.md) | 724 | `result-track:68004e6f497fd2d2e253b6ef288148e53db6f3d438983459d66910e00126f155` |
| 89 | `theorem` | [ker_toSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/ker-tospansingleton.md) | 735 | `result-track:ac15341d36caaff42c5a3bb9a69e562a2d58aca2d6b5b6761652c4b11b0828be` |
| 90 | `theorem` | [span_singleton_sup_ker_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/span-singleton-sup-ker-eq-top.md) | 744 | `result-track:b5d2d08ac5a2d84ea516308336d71af920f58520c1f898fd22b06456de91c08d` |
| 91 | `def` | [toSpanNonzeroSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/tospannonzerosingleton.md) | 765 | `declaration-track:5c80314264f3d34478f93f1705a7ccc8d8805a3adba4eced6473c5d88b40d415` |
| 92 | `theorem` | [toSpanNonzeroSingleton_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/tospannonzerosingleton-apply.md) | 771 | `result-track:792cb80ff12e964fe2a59fe1848e7d3ec881ea2c5511cf7eca219a8307c0abea` |
| 93 | `lemma` | [toSpanNonzeroSingleton_symm_apply_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/tospannonzerosingleton-symm-apply-smul.md) | 777 | `result-track:abc405cda606185ebbf31560a3accb7f0024eb5e36eb3ff94c041e1861203272` |
| 94 | `theorem` | [toSpanNonzeroSingleton_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/tospannonzerosingleton-one.md) | 781 | `result-track:88a62c1c0e68bd8ee410be81238d1127fa2c256a80caa02aad2a761bbd5b7c81` |
| 95 | `abbrev` | [coord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/coord.md) | 788 | `declaration-track:792369f017fc63ca4edcf93bc9f7d223662335e6d24e3d9eb286db5389330bb8` |
| 96 | `theorem` | [coord_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/coord-self.md) | 791 | `result-track:e7e87a0490d73f0a9db9349a248d272a36c6bc99ac1d6303b7ea79a099d05b50` |
| 97 | `theorem` | [coord_apply_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanBasic.lean/declarations/coord-apply-smul.md) | 794 | `result-track:ad3edcc3d3dfe3da17b6b72ce67596e092094853b25f2b41506f57bf4b9e1a73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c977cad9e0fe1ce53e58ad4ba119b4d8f146490606ed40f6bcd837b4e1bd9a9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
