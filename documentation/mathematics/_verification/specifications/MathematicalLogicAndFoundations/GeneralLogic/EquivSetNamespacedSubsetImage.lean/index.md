# Verification target: Equiv Set Namespaced Subset Image

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "854d136bde8223995aa6c586afb59cbcfb53c628",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `854d136bde8223995aa6c586afb59cbcfb53c628`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range_eq_univ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/range-eq-univ.md) | 44 | `result-track:8e2d4ddf1be4b67e6b719e60c227942ed5f54825557aca15b2e76339e536020b` |
| 2 | `theorem` | [image_eq_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/image-eq-preimage.md) | 48 | `result-track:c05d1f1be568e8e6b3e191506f7603beeb021217c526a44cdf26363d57c15b72` |
| 3 | `theorem` | [Equiv Set Namespaced Subset Image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-rangeequniv.md) | 53 | `result-track:2e54775ddd738340015204f17476b3ea62356334fee1836b4c3115cabf388d0c` |
| 4 | `theorem` | [Equiv Set Namespaced Subset Image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-rangeequniv-source-edition-2.md) | 59 | `result-track:62e602c924715e4a5268ebc2a1dcc32eca66ebfe89d106a478e601be3cb212f1` |
| 5 | `theorem` | [Equiv Set Namespaced Subset Image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-rangeequniv-source-edition-3.md) | 65 | `result-track:6af5be95dfc02f6e494ab01e8f8202a1386295f5094cce46421300d939c87d18` |
| 6 | `theorem` | [subset_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/subset-image-source-edition-2.md) | 72 | `result-track:9ee66a39b82b6037429c287e7d0250cf20299f182757b8e42dee9c1d38c26b09` |
| 7 | `theorem` | [subset_image'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/subset-image.md) | 78 | `result-track:5aa074dd700e83bddf6258cfd706f1a5bd03c22c9ad6517f2371d56d03d87214` |
| 8 | `theorem` | [symm_image_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/symm-image-image.md) | 86 | `result-track:3a58cf7677ccb5717aea782ab47352176686f623d036646046b7a2119571cf0e` |
| 9 | `theorem` | [eq_image_iff_symm_image_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/eq-image-iff-symm-image-eq.md) | 90 | `result-track:4f76076693fadea7e6daf97c4973d6253ffdba66f5965ff6b5c351ba469edebd` |
| 10 | `theorem` | [image_symm_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/image-symm-image.md) | 96 | `result-track:2c49d069474f884e61b5c08767c9f045472d019dad40f15de3fd18b5680c5d9c` |
| 11 | `theorem` | [image_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/image-preimage.md) | 101 | `result-track:c0bf8ce1552be0c9c5c7912d603a26bd008f6353be178940eba1c4de19762a98` |
| 12 | `theorem` | [preimage_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/preimage-image.md) | 106 | `result-track:42d54a1ea8b72910b1cbfb619575c7dc1fd39dab0f3d5fe6142be388478f2df2` |
| 13 | `theorem` | [image_compl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/image-compl.md) | 110 | `result-track:a94d13528ea5ce16a31462715234be60078a87eff0c2ef5791bf1665930bb66b` |
| 14 | `theorem` | [symm_preimage_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/symm-preimage-preimage.md) | 115 | `result-track:4b74f48adb5e96bd1538cba49a1d2dabc098409b549d440c629568c37e709a51` |
| 15 | `theorem` | [preimage_symm_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/preimage-symm-preimage.md) | 120 | `result-track:2a1a6a9dfecce1ed225b931d0e44219765742b66e1d47e96dd10715a9298f230` |
| 16 | `theorem` | [preimage_subset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/preimage-subset.md) | 125 | `result-track:ae8bb7a2e3cc9eee26a19d4cfb3510ef6f11baa61cfc10ffc57f3d5e13bf0c50` |
| 17 | `theorem` | [image_subset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/image-subset.md) | 130 | `result-track:fdf66ad8a08be0cca9e38bfdc9a25a0fe9b18a394389ccd6bb49d33dbae89b37` |
| 18 | `theorem` | [image_eq_iff_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/image-eq-iff-eq.md) | 135 | `result-track:ba6c0495bb7b75ab0906449e46b79cf22f6e29a7add0305bbd6829f396a8fa8d` |
| 19 | `theorem` | [preimage_eq_iff_eq_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/preimage-eq-iff-eq-image.md) | 139 | `result-track:ec8c6e2799d226ca5c8713d047285830528b97183fcdfce84fb9b95f437b91e2` |
| 20 | `theorem` | [eq_preimage_iff_image_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/eq-preimage-iff-image-eq.md) | 143 | `result-track:33f746e27923ab6e81a7fe6d3c5ff158a2a895e25b146d8f330fd95a44682873` |
| 21 | `theorem` | [prod_assoc_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/prod-assoc-preimage.md) | 148 | `result-track:7051f270a8fb8fbb15cbae3afaba993290fa596f4f7aac3930fd79958c596d2f` |
| 22 | `theorem` | [prod_assoc_symm_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/prod-assoc-symm-preimage.md) | 155 | `result-track:a2d4d013f7ba18bd1052daab2947810233050ca23d812dc233a9878226421472` |
| 23 | `theorem` | [prod_assoc_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/prod-assoc-image.md) | 163 | `result-track:36400a28946c9843d2f34143810a399ae6bf91308b4b1a574e21ea843e82359b` |
| 24 | `theorem` | [prod_assoc_symm_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/prod-assoc-symm-image.md) | 168 | `result-track:c3afec1fac1ec791498cdd7380669c6ee2777a4cb1ead1009a252c87b1aca3e1` |
| 25 | `def` | [setProdEquivSigma](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/setprodequivsigma.md) | 174 | `declaration-track:0419deb9c5a1eacc4ae97ec60d7a22f3f27069c7f521fdb8aff1c23e6125591f` |
| 26 | `def` | [setCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/setcongr.md) | 184 | `declaration-track:a3a1c20d1ce3f9d717e6e21fec25e3b518990af98d8545aaaacbf524b8233734` |
| 27 | `def` | [image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/image-source-edition-2.md) | 194 | `declaration-track:7bd37e0fda53a0ea534c3fdc970708fe0a84ab04d148db92d71fd9635bc0ccfe` |
| 28 | `def` | [univ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/univ.md) | 211 | `declaration-track:038ab774a26c8776355454981c5541cb5cb36786b148330790e0a64aa4491f79` |
| 29 | `def` | [empty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/empty.md) | 216 | `declaration-track:667f5cb40d6eb9e6eab10953791ef60bd731ed0c0ce46dd185c08fa843de19da` |
| 30 | `def` | [pempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/pempty.md) | 221 | `declaration-track:ef82c5bdafe2c18605a76ad58f3025ef850b9f53b6403fa80d1253adf90122d5` |
| 31 | `def` | [union'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/union-source-edition-2.md) | 227 | `declaration-track:e12f00c1d8cad84af633e8a7e5818080112aef81fa444de94131dfe0630d37e3` |
| 32 | `def` | [union](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/union.md) | 242 | `declaration-track:7e73fe6cef5bcccced7fb13380782aa33522be409ed79b518aeff192dec39e2d` |
| 33 | `theorem` | [union_apply_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/union-apply-left.md) | 247 | `result-track:ada8d9aa9a53b5e0aae48f3b0924c3ef37386a89b906909f45d9833c57af7c09` |
| 34 | `theorem` | [union_apply_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/union-apply-right.md) | 252 | `result-track:130e6a2ea220e448af75b3cff6f29cf4eff2966282dd4bdafeb560105bbd4449` |
| 35 | `theorem` | [union_symm_apply_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/union-symm-apply-left.md) | 258 | `result-track:20436afdc9e2584b87d52e3dea4886ab41d898efdb309495d285a795f6d01fa4` |
| 36 | `theorem` | [union_symm_apply_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/union-symm-apply-right.md) | 264 | `result-track:637d1c89046f4101194a74c91f74cec9696e8cd52d7b0c328fc6557b07a85b00` |
| 37 | `def` | [singleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/singleton.md) | 270 | `declaration-track:a2f3be8b26749817b72e72ad001b1ece7acea4f242d866a0e98a2b74ab3ed311` |
| 38 | `def` | [ofEq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/ofeq.md) | 281 | `declaration-track:39da7422d8fe127083784f24020925c1554deb24162854f2c36a3fb6071c0166` |
| 39 | `def` | [insert](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/insert.md) | 286 | `declaration-track:971b05523164234556bac35c0959aab3a8e0c26320e76e379a4be793a172e29e` |
| 40 | `theorem` | [insert_symm_apply_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/insert-symm-apply-inl.md) | 295 | `result-track:8d0a8eebde53b63691e2062949cdb7473982d87b03a8d75a79feb03bdc67828f` |
| 41 | `theorem` | [insert_symm_apply_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/insert-symm-apply-inr.md) | 301 | `result-track:721a2414b6744b2f77a9f2918924304e59d69976fca5a12f22e86043a1eb753d` |
| 42 | `theorem` | [insert_apply_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/insert-apply-left.md) | 307 | `result-track:9b04802342774bd4148642ec102e1a73cf9846082325961c971dc0192a6778dc` |
| 43 | `theorem` | [insert_apply_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/insert-apply-right.md) | 313 | `result-track:eda50280ac5610894525d65d903c20b50e6235abf42f767b037e7aebd3bba1f6` |
| 44 | `def` | [sumCompl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/sumcompl.md) | 319 | `declaration-track:2491bc4b7795aa2c24b5b026f401fde2fac01228d60571100412f9ff1b6e9a67` |
| 45 | `theorem` | [sumCompl_apply_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/sumcompl-apply-inl.md) | 327 | `result-track:883065f72a1e9401065608a55e13f98d46291202236ce47b951337649c6d735c` |
| 46 | `theorem` | [sumCompl_apply_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/sumcompl-apply-inr.md) | 333 | `result-track:d13347f4165a430efe289b3f77fe0d86dbea5d4fb2b36040be88325e150db3c6` |
| 47 | `theorem` | [sumCompl_symm_apply_of_mem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/sumcompl-symm-apply-of-mem.md) | 338 | `result-track:1a9e59ab5501890c50b21afacd482ca68a539eb8bc891d515474ebd493a55610` |
| 48 | `theorem` | [sumCompl_symm_apply_of_not_mem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/sumcompl-symm-apply-of-not-mem.md) | 345 | `result-track:be0f9fb44338610f2aafe2c9f99a4be8fe05795f25a9b3720c21a2c194dcb370` |
| 49 | `theorem` | [sumCompl_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/sumcompl-symm-apply.md) | 353 | `result-track:892630024a6ca5d67b25fa7549a66b2e9a80c4a58dbd2f51f0a4c1e1611c5f54` |
| 50 | `theorem` | [sumCompl_symm_apply_compl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/sumcompl-symm-apply-compl.md) | 359 | `result-track:6b6f8b1f0fc3d88f8b718bac0bf80e838b16dbe103f6b0fa4656e64b4b0bb450` |
| 51 | `def` | [sumDiffSubset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/sumdiffsubset.md) | 366 | `declaration-track:14431d4dfc111f29f7452bf6cbe7ed17b6dd5c752bcf30d3c0bd3c474773f1ee` |
| 52 | `theorem` | [sumDiffSubset_apply_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/sumdiffsubset-apply-inl.md) | 375 | `result-track:4542bff4e856682ef14c7e5192c36c4fc2797a8a60a51b51d4eb0217acece962` |
| 53 | `theorem` | [sumDiffSubset_apply_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/sumdiffsubset-apply-inr.md) | 381 | `result-track:b16d0a955d0b04ee92d442d53de40c81639d0031a89906a848e83072451ec203` |
| 54 | `theorem` | [sumDiffSubset_symm_apply_of_mem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/sumdiffsubset-symm-apply-of-mem.md) | 386 | `result-track:cf5c71f76c895ddaf6ab38c2b84e506a581585a9d681f0eb7b6ed2b34bb374f7` |
| 55 | `theorem` | [sumDiffSubset_symm_apply_of_not_mem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/sumdiffsubset-symm-apply-of-not-mem.md) | 393 | `result-track:9710f0a8cab651adf172a611312e05e01f82bb186c258ce8417f17544bbb0977` |
| 56 | `def` | [unionSumInter](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/unionsuminter.md) | 402 | `declaration-track:163686ed0fafcff526ee9b15f914bd2a09439b1704ae383a218ec8ad87cf3cc7` |
| 57 | `def` | [compl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/compl.md) | 423 | `declaration-track:ce735151fbd8f08c7d0acc8b4d7a18e6e86e070e3fe7640c0ae96604046a0dc3` |
| 58 | `def` | [prod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/prod.md) | 459 | `declaration-track:d57dccb973d1ce9cff77bf5ecbfc40de282e071512d6242b1f11043feb45dc26` |
| 59 | `def` | [univPi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/univpi.md) | 465 | `declaration-track:68f76e3bac10707c81bff8b5c27a33d25c512ba75818419dda8feb732b706ff3` |
| 60 | `def` | [imageOfInjOn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/imageofinjon.md) | 480 | `declaration-track:ca35664bbd1d78194912ed91b58e85e4db47f888257cdc5cddc1bc1d12b8ccbd` |
| 61 | `def` | [image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/image.md) | 492 | `declaration-track:1482fe4830f91cbaa3d4c81e3b8001357fc791d27049d617e6c4e74f53b090a1` |
| 62 | `theorem` | [image_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/image-symm-apply.md) | 498 | `result-track:90a694108207810c6072115689bf24f317d134e58dece1ccc657d25a13686aa8` |
| 63 | `theorem` | [image_symm_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/image-symm-preimage.md) | 504 | `result-track:e78963696cf97d1c5d4a3ac6ffc06596314d540f277342ae64635e31695d91ab` |
| 64 | `def` | [congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/congr.md) | 513 | `declaration-track:bde13dc4e0dfc6a42bc918932be9e7cd4600197f5b5d9b49a9946a267c47c19b` |
| 65 | `def` | [sep](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/sep.md) | 520 | `declaration-track:e742fd14d18760fad4d83019c761475e6c0f81e89ca68c2ecb1a90652a82b918` |
| 66 | `def` | [powerset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/powerset.md) | 526 | `declaration-track:435ba9718d2e6a834241a8323a3b7b714a73fb4c4be4192b2c041dc2624f2431` |
| 67 | `def` | [rangeSplittingImageEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/rangesplittingimageequiv.md) | 538 | `declaration-track:535a6082e9aece9aec21fedb49a7f71f0433d50e5b7a78689471b555119b8a56` |
| 68 | `def` | [rangeInl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/rangeinl.md) | 555 | `declaration-track:5ccdefb2047c9d2abbb071c7892f31c8e2fe53bd02f653afc8ec326a25669d9e` |
| 69 | `lemma` | [rangeInl_apply_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/rangeinl-apply-inl.md) | 563 | `result-track:94b2e351ee040e5a2d52bc984db19e5ae0a0ebf1c6b1cd77a5c94183cd928d44` |
| 70 | `def` | [rangeInr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/rangeinr.md) | 569 | `declaration-track:3ce0c7d9d671566b7c75cf37f47c7a9f968309fc940d988e8243b432af6c2d45` |
| 71 | `lemma` | [rangeInr_apply_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/rangeinr-apply-inr.md) | 577 | `result-track:5d254c9dcf81624ded3801ed49efae3bb630f59a12fb559aef89aef9a6dbfb59` |
| 72 | `def` | [ofLeftInverse](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/ofleftinverse-source-edition-2.md) | 591 | `declaration-track:f210697f26b518ef2c3eafc0994cb2459c71f7201c678512635fc2438bc0a590` |
| 73 | `abbrev` | [ofLeftInverse'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/ofleftinverse.md) | 607 | `declaration-track:7825bcaa0a6b193ff16cf59e505ec246ab613513f48d721472907154f8db3fcb` |
| 74 | `def` | [ofInjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/ofinjective.md) | 614 | `declaration-track:3b1134d897bbee2915d2895a7a951747c3b197fa650641a56e196fa5704ffd12` |
| 75 | `theorem` | [apply_ofInjective_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/apply-ofinjective-symm.md) | 619 | `result-track:19dbe61f0f13ab7e2268ebd53d9b5199990366ff81169da7816e92d3c53d1782` |
| 76 | `theorem` | [ofInjective_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/ofinjective-symm-apply.md) | 625 | `result-track:d0777cbf5a1643ce993cc8d19d4f360b8061b21d2741e1c54c2a32a16c88dbbe` |
| 77 | `theorem` | [coe_ofInjective_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/coe-ofinjective-symm.md) | 631 | `result-track:1fd723a00da4ca718a5bc4b802abd920b03c2c6cb123584ab5cdfa320a3da23b` |
| 78 | `theorem` | [self_comp_ofInjective_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/self-comp-ofinjective-symm.md) | 639 | `result-track:cc3e0c605fee5009c39659a382a7f394a42b413bfb8bd437b1a98cfb09f93998` |
| 79 | `theorem` | [ofLeftInverse_eq_ofInjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/ofleftinverse-eq-ofinjective.md) | 644 | `result-track:77ca532198db4ff51053a6ebd51ad6accb7c4214c13c65e89cfb3128f0b86fba` |
| 80 | `theorem` | [ofLeftInverse'_eq_ofInjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/ofleftinverse-eq-ofinjective-source-edition-2.md) | 653 | `result-track:d118fd76480e5d5c799e83e2ec1dd116995ccdc6c1a4ca474db2df6491bbd26c` |
| 81 | `theorem` | [set_forall_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/set-forall-iff.md) | 659 | `result-track:a443fb843dfd5cf1f8d21e2d25e730d4e2d1fec61266553a668033ddb7fabe78` |
| 82 | `theorem` | [preimage_piEquivPiSubtypeProd_symm_pi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/preimage-piequivpisubtypeprod-symm-pi.md) | 664 | `result-track:301ea3b5e96daba5cc1fdb4498c724bfca1974f16c993107f31745f1853d6a38` |
| 83 | `def` | [sigmaPreimageEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/sigmapreimageequiv.md) | 683 | `declaration-track:be488f4caaafdb40e341403a6c25866935c3762c944dc62517684d635c4765b8` |
| 84 | `def` | [ofPreimageEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/ofpreimageequiv.md) | 693 | `declaration-track:717aafc51fadb8d62cccc54c3b5d790dbdaa09add084cbe2bfe1e7cb65526e38` |
| 85 | `theorem` | [ofPreimageEquiv_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/ofpreimageequiv-map.md) | 699 | `result-track:cc8e404e47a03fda09a3ca3786edea7e630f250f209a0d0c8d9d667af7ee4b69` |
| 86 | `def` | [Set.BijOn.equiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/set-bijon-equiv.md) | 708 | `declaration-track:a550e7ba12286ebf7f4b77ebca64df9d9be82a01a01549d95f65e30dd0942d94` |
| 87 | `theorem` | [dite_comp_equiv_update](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSetNamespacedSubsetImage.lean/declarations/dite-comp-equiv-update.md) | 717 | `result-track:085c6d8194a182753d0138c2d533beb20a403d197cc76a5ece371f8779ac336d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed9d278d9721413557b6190a98b3207c52f3c564848efd535af1d4d4d3b72a29 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
