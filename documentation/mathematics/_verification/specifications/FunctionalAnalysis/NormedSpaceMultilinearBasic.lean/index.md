# Verification target: Normed Space Multilinear Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1aec35bffddaf94f76bbd74293bc89515d4b7b3f",
  "lexical_observation_count": 124,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1aec35bffddaf94f76bbd74293bc89515d4b7b3f`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.CardEmbedding` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Multilinear.Topology` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [ContinuousMultilinearMap.instContinuousEval](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/continuousmultilinearmap-instcontinuouseval.md) | 74 | `declaration-track:8e0697fb261b6a9e52ca4462395f7fe14b1c91b67b8b00f0917a78a122111745` |
| 2 | `lemma` | [continuous_uncurry_of_multilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/continuous-uncurry-of-multilinear.md) | 89 | `result-track:b2bab5c5ab6dada2834c698246b1a32d3fb733ae42c55f72f6c7cd0470c6a7a9` |
| 3 | `lemma` | [continuousOn_uncurry_of_multilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/continuouson-uncurry-of-multilinear.md) | 93 | `result-track:f5d41f595d9492b0386af510ff7eb68fc43c2499b2e81582a402b90bc8482e72` |
| 4 | `lemma` | [continuousAt_uncurry_of_multilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/continuousat-uncurry-of-multilinear.md) | 97 | `result-track:682e82b2941db00581d74ad7b5210cf3e23a89c12ac01914d78baa79af883d11` |
| 5 | `lemma` | [continuousWithinAt_uncurry_of_multilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/continuouswithinat-uncurry-of-multilinear.md) | 101 | `result-track:aa1b8419d2c742a44955a14b973d8245b63adac36fddab33bd347c3fb05ce6b0` |
| 6 | `lemma` | [norm_map_coord_zero](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-map-coord-zero.md) | 133 | `result-track:3ab5190dc25208fa22c2a125ac7f9507afe8b370f4a41d3db83131519cadc585` |
| 7 | `theorem` | [bound_of_shell_of_norm_map_coord_zero](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/bound-of-shell-of-norm-map-coord-zero.md) | 152 | `result-track:ae59b6bcd8bef709cb71fd18cb78ed1ee42274663471195f0d204e6e113d16d1` |
| 8 | `theorem` | [bound_of_shell_of_continuous](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/bound-of-shell-of-continuous.md) | 168 | `result-track:80b767d6423d7ef8d2833de1e22cf3bd0041c6015682df7b49e22f6607cd3eea` |
| 9 | `theorem` | [exists_bound_of_continuous](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/exists-bound-of-continuous.md) | 177 | `result-track:67fd26d706673ff82c8dc20f060c698dcf27d4f2993eddc6e7afc737207fb305` |
| 10 | `theorem` | [norm_image_sub_le_of_bound'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-image-sub-le-of-bound-source-edition-2.md) | 203 | `result-track:f49a63e9506adc541f29cef46a746c29528fa8b31c83bc428f4b2d7ed972f911` |
| 11 | `theorem` | [norm_image_sub_le_of_bound](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-image-sub-le-of-bound.md) | 245 | `result-track:016f7ab1b3208bf46729e1173ed87d1d0d6fe9a28f86edc2c21930d7ee08512b` |
| 12 | `theorem` | [continuous_of_bound](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/continuous-of-bound.md) | 275 | `result-track:f833cde823bdf41ac7414bf066ba3dd363dc0b187b7480e11200814415f44df8` |
| 13 | `def` | [mkContinuous](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/mkcontinuous.md) | 295 | `declaration-track:6cd706a5d4f3e0a963001f933e87d768068a79d06de0f9ea3ad2b7f6c96df80b` |
| 14 | `theorem` | [coe_mkContinuous](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/coe-mkcontinuous.md) | 300 | `result-track:f54067f2c6dbf7b3d281e0869d79867090e0177f5208b36f0513cad279d4bf4b` |
| 15 | `theorem` | [restr_norm_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/restr-norm-le.md) | 307 | `result-track:f4e57728c172a3ed0bae8c0fe66b288da3a686c76f7b066fc5a4c3745450a1fe` |
| 16 | `theorem` | [bound](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/bound.md) | 331 | `result-track:f9ec9201a85468de11b531134f15a30e040cf0d6fa4a81d46cbc39302c8864e6` |
| 17 | `def` | [opNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/opnorm.md) | 338 | `declaration-track:2c7f2c8c82114e3ff5769120433303ae14885a73db5f53ab42f1ff066fd75c92` |
| 18 | `instance` | [hasOpNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/hasopnorm.md) | 341 | `declaration-track:5b1365396dd28feafa4aabec251f9ca7c06740424b1c191d646e0652818ed161` |
| 19 | `instance` | [hasOpNorm'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/hasopnorm-source-edition-2.md) | 346 | `declaration-track:965d1a6f3f80da1c948721ed16286dcdddf67a1dc3de4e94ef737e51dad2676f` |
| 20 | `theorem` | [norm_def](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-def.md) | 349 | `result-track:824c0febffadc3799095f7997acf78dfdc6c886ab202f9bc79129ac6baaa23a0` |
| 21 | `theorem` | [bounds_nonempty](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/bounds-nonempty.md) | 355 | `result-track:714a3879c644f4eaa85e88fc3fc93834c2e35cfca2d061207f2a102a965d7356` |
| 22 | `theorem` | [bounds_bddBelow](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/bounds-bddbelow.md) | 360 | `result-track:93b97284db96ae59bbba7624ef74cd752538d716c24528557328cd9280b81654` |
| 23 | `theorem` | [isLeast_opNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/isleast-opnorm.md) | 364 | `result-track:82508e93ce4084de1d3d5e66fc36da1d6a223f3732e0fe831e4e5b47d5c732a9` |
| 24 | `theorem` | [opNorm_nonneg](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/opnorm-nonneg.md) | 371 | `result-track:460a2e6ee69612acaa0a27ce14e777f81c6c7f3ce94818404ecd7af7edbb2af9` |
| 25 | `theorem` | [le_opNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/le-opnorm.md) | 376 | `result-track:6ab128b6f0718430fbcbfd23632f831f7dff84f0c74a7fe99f9bca67c99f5816` |
| 26 | `theorem` | [le_mul_prod_of_opNorm_le_of_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/le-mul-prod-of-opnorm-le-of-le.md) | 380 | `result-track:7e2d81db532cd1dffe956e513112f2a27845101904ef68f4e318e0b91c871f52` |
| 27 | `theorem` | [le_opNorm_mul_prod_of_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/le-opnorm-mul-prod-of-le.md) | 388 | `result-track:e7cf3fffa59ea004b20652438e820d440d39f8f43298b9a07d02102aaca6521e` |
| 28 | `theorem` | [le_opNorm_mul_pow_card_of_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/le-opnorm-mul-pow-card-of-le.md) | 392 | `result-track:953338e8deab73488d34a6728fdcbeff7b825b55391dc0107b8cfb54f42e73d6` |
| 29 | `theorem` | [le_opNorm_mul_pow_of_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/le-opnorm-mul-pow-of-le.md) | 396 | `result-track:86e12079e7b67a3fa8d7f62f9462bb9d9a7a0c063ff2c5e15e0e60cadb18cd14` |
| 30 | `theorem` | [le_of_opNorm_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/le-of-opnorm-le.md) | 401 | `result-track:fc259e89528dfe7863a13a28176138d931aa0e2431711e4a86cab5e365764ec0` |
| 31 | `theorem` | [ratio_le_opNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/ratio-le-opnorm.md) | 405 | `result-track:79b17aaef33323b5f802ea37300823d493318e0bb99b032a55f0a3d602fe362a` |
| 32 | `theorem` | [unit_le_opNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/unit-le-opnorm.md) | 410 | `result-track:04caadcc856fa7f94c48b1afa083f86de86dad4c6eef66221ae491777ba1cd68` |
| 33 | `theorem` | [opNorm_le_bound](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/opnorm-le-bound.md) | 415 | `result-track:ee15991b13b64a571c5751bbf09f0c585f2298a40cff71255c20ea98135016cd` |
| 34 | `theorem` | [opNorm_le_iff](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/opnorm-le-iff.md) | 419 | `result-track:92cd4451b2c19d16a4df7894edd127275a50b7cc3469d1c5147185fadb207ce3` |
| 35 | `theorem` | [opNorm_add_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/opnorm-add-le.md) | 424 | `result-track:7e63cb13404e875def714de2faee53e0433dfccd42ba0dfbe4fe1cbbe230424c` |
| 36 | `theorem` | [opNorm_zero](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/opnorm-zero.md) | 429 | `result-track:50293ef5ec59e1ee10889fa87391056ca2eba2d9763599b34a81601a13538952` |
| 37 | `theorem` | [opNorm_smul_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/opnorm-smul-le.md) | 436 | `result-track:4ed1e1a5cd9ca716e670abe98d2ec9c408efefb571325a43a4d52cb58fc86423` |
| 38 | `def` | [seminorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/seminorm.md) | 448 | `declaration-track:720cee3567ecc37c061d95a8abdf93dd307f4fee298e0e8e2adbb0102844c198` |
| 39 | `lemma` | [uniformity_eq_seminorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/uniformity-eq-seminorm.md) | 451 | `result-track:419fa3e5fc149674e12f37b08bd51a16c93c9691c6ad7cf3f130aca9fc054301` |
| 40 | `instance` | [instPseudoMetricSpace](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/instpseudometricspace.md) | 481 | `declaration-track:7288e08b29dcbed4942b760c1098f85e413fd444e46ac06f49b23c53a2664147` |
| 41 | `instance` | [seminormedAddCommGroup](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/seminormedaddcommgroup.md) | 488 | `declaration-track:0490f41ce8b924023d73521fe0fb623404f71171c0267b10d9e5a6e9c09193d8` |
| 42 | `instance` | [seminormedAddCommGroup'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/seminormedaddcommgroup-source-edition-2.md) | 493 | `declaration-track:d17c25879c42d2c37cb425479a62341b500e36fa4d42f2936c1ff2639bddb69b` |
| 43 | `instance` | [normedSpace](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/normedspace.md) | 497 | `declaration-track:3dedc5e057a3ae421d586ddfcf4369a4747e31b1816087b5f4dabd81eec290fc` |
| 44 | `instance` | [normedSpace'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/normedspace-source-edition-2.md) | 502 | `declaration-track:40398abb64cf9fcfece5979477b4bef4f7aec284cad89420aff2e8e3462f0f7f` |
| 45 | `theorem` | [opNorm_neg](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/opnorm-neg.md) | 506 | `result-track:22bc0c99cbbf15494084e2c9ca50a2e04b07f173e65f55b702c03e3ebbdc5443` |
| 46 | `theorem` | [le_opNNNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/le-opnnnorm.md) | 510 | `result-track:600c57a2e0fc85ba779c45e852252ed2e57fcdd22d54f8a69496ac5f2580b3c4` |
| 47 | `theorem` | [le_of_opNNNorm_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/le-of-opnnnorm-le.md) | 516 | `result-track:58d140bb6866c4bd72a1c89b387e13c9a574deb200663865ba295a43bcfd108c` |
| 48 | `theorem` | [opNNNorm_le_iff](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/opnnnorm-le-iff.md) | 520 | `result-track:103e497d89f4fb022d5f5fb4bdf6a797e3c48ebf8766bfd47608986bd0c6d131` |
| 49 | `theorem` | [isLeast_opNNNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/isleast-opnnnorm.md) | 524 | `result-track:86efad6df363a2058dfa266f5c0bda79fccd117a81e58c06f257a6983c750d49` |
| 50 | `theorem` | [opNNNorm_prod](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/opnnnorm-prod.md) | 528 | `result-track:c9cbaa6617880bed8dcca038be2196fe2787e10fb36efc685fa8672fb94aa6f3` |
| 51 | `theorem` | [opNorm_prod](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/opnorm-prod.md) | 533 | `result-track:5e2b6f71a091dac8cf840014a0aedee7756b5628923d6bb76f7d6edd7e483ff5` |
| 52 | `theorem` | [opNNNorm_pi](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/opnnnorm-pi.md) | 537 | `result-track:503016b596ed547d60e841c57e0a1bcf3808186e1fd1f3eb7ff7b142b6f7657a` |
| 53 | `theorem` | [opNorm_pi](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/opnorm-pi.md) | 542 | `result-track:f85a62299ad0c953f19898047de654f24545b3954367f1600e713994ae50fc9e` |
| 54 | `theorem` | [norm_ofSubsingleton](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-ofsubsingleton.md) | 551 | `result-track:12e8d8aa07e7db67ecae95709147640550047dcb0b1cfba5d15b3811c8d96312` |
| 55 | `theorem` | [nnnorm_ofSubsingleton](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/nnnorm-ofsubsingleton.md) | 557 | `result-track:5a5add7652b5bafdad519a237814d38b9653e89219809abda5f22657472ec8d8` |
| 56 | `def` | [ofSubsingletonₗᵢ](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/ofsubsingleton.md) | 566 | `declaration-track:f50225e5e4fa829528d77ff76d565fef9344540c1a08844c1b507108ad57cff4` |
| 57 | `theorem` | [norm_ofSubsingleton_id_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-ofsubsingleton-id-le.md) | 573 | `result-track:800eb4b76fbf1821ebec3eee4c122700e072a0328c433ac5c011863e16bdb40d` |
| 58 | `theorem` | [nnnorm_ofSubsingleton_id_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/nnnorm-ofsubsingleton-id-le.md) | 578 | `result-track:2443672cf38af37773044560b82f1d2fa2262574492287f05c29d9cfe6e71d99` |
| 59 | `theorem` | [norm_constOfIsEmpty](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-constofisempty.md) | 585 | `result-track:ee98c6bf64aac6d7087dc4afde000a4cbd2f1a5a85a3b4943ff24b825f1d6cf5` |
| 60 | `theorem` | [nnnorm_constOfIsEmpty](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/nnnorm-constofisempty.md) | 592 | `result-track:72be967cb0c67fd148da7da305864af22e6d71a3c1e202170d4270234d8729b0` |
| 61 | `def` | [prodL](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/prodl.md) | 603 | `declaration-track:e23c1fe3213c9d9112f7537a99906fb8485c2244491671e179d261b1b80a9f2f` |
| 62 | `def` | [piₗᵢ](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/pi.md) | 613 | `declaration-track:7bfb6b54d02de1183db8938442092b622103b150071282ff35956f31848aa8a1` |
| 63 | `theorem` | [norm_restrictScalars](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-restrictscalars.md) | 631 | `result-track:094a72a187601adf2999f37f50c487db126508c09f0a17f100b6c2da482655b1` |
| 64 | `def` | [restrictScalarsₗᵢ](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/restrictscalars.md) | 638 | `declaration-track:dcf35b39a0bfaed6a9b0430c0416b9f5863746b6942d4b1736e9b4acaa7ddfd7` |
| 65 | `theorem` | [norm_image_sub_le'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-image-sub-le-source-edition-2.md) | 651 | `result-track:9ce345184afa71fc843581bc68df05b6afa42ff82fa5102066c312b588d14be5` |
| 66 | `theorem` | [norm_image_sub_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-image-sub-le.md) | 658 | `result-track:79598c91213f227cf37dc241af141c23028b73e9a1d9ee4be29094175b13ec76` |
| 67 | `theorem` | [MultilinearMap.mkContinuous_norm_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/multilinearmap-mkcontinuous-norm-le-source-edition-2.md) | 669 | `result-track:bebe323a860b594f04d15805e7f3cc05ebe709359bf3947bc6f4ca663deac014` |
| 68 | `theorem` | [MultilinearMap.mkContinuous_norm_le'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/multilinearmap-mkcontinuous-norm-le.md) | 676 | `result-track:ab449d3c337eeec1dde9709e79637830bd68f4baebc2073e4ce5387ddc1c1e64` |
| 69 | `def` | [restr](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/restr.md) | 688 | `declaration-track:34a71dd42b5651750fde8a44f54b06124d26ff25e4f23c28cd89e136e9a51bea` |
| 70 | `theorem` | [norm_restr](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-restr.md) | 693 | `result-track:6b585c2796f5b5886f2477c32cae74ee1979a4cdf0f694fb0d2c069e8bee4100` |
| 71 | `theorem` | [norm_mkPiAlgebra_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-mkpialgebra-le.md) | 703 | `result-track:08c3743b6f768060b7b63f46e370da3616e30844943ebeb36a491eae367308a4` |
| 72 | `theorem` | [norm_mkPiAlgebra_of_empty](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-mkpialgebra-of-empty.md) | 708 | `result-track:2b58f8ee76d1b4b7b761c4562c6ced70ff68f3db069d202717b620318ef1df29` |
| 73 | `theorem` | [norm_mkPiAlgebra](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-mkpialgebra.md) | 716 | `result-track:8cc803d33ca465cd12fdd7b4fa72e188a2da499fb5ff6eb9b14d18999cd6f8e9` |
| 74 | `theorem` | [norm_mkPiAlgebraFin_succ_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-mkpialgebrafin-succ-le.md) | 729 | `result-track:3eb7b3040b9fcc7b8b73d699096d5931112717316ab6baafc88f32771536b75b` |
| 75 | `theorem` | [norm_mkPiAlgebraFin_le_of_pos](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-mkpialgebrafin-le-of-pos.md) | 738 | `result-track:304e5abfef397bb547f24eebf1ef3ac8b04cb8519e0cccb3389eb77c732f173f` |
| 76 | `theorem` | [norm_mkPiAlgebraFin_zero](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-mkpialgebrafin-zero.md) | 743 | `result-track:296386ddaf7b838907ca5c89bdd5d5fa4ce5f61bd1fdd3e9bdfe9dca471e0e83` |
| 77 | `theorem` | [norm_mkPiAlgebraFin_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-mkpialgebrafin-le.md) | 750 | `result-track:62130e6ec79e9c84b2a8a3b3f8cbd15b623cc6dd45528ed1d76526126925d182` |
| 78 | `theorem` | [norm_mkPiAlgebraFin](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-mkpialgebrafin.md) | 757 | `result-track:aab4cbd32fbd083cf18f099896652253029a07138602ba0e19fd4202686d5dd7` |
| 79 | `theorem` | [nnnorm_smulRight](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/nnnorm-smulright.md) | 770 | `result-track:d6d7d97a96d51db3b414e7a3a4737fe6cf6ac8b0026bef5500a0ee97d148f1de` |
| 80 | `theorem` | [norm_smulRight](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-smulright.md) | 786 | `result-track:358c0f85295951546ae7510ce05e008199e877c01a995a2bb99dff3e57beec72` |
| 81 | `theorem` | [norm_mkPiRing](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-mkpiring.md) | 791 | `result-track:60c981ebe61ed0ff576b443e5a8783ba99af7dc4e314c708b8bf39315fb16224` |
| 82 | `def` | [smulRightL](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/smulrightl.md) | 796 | `declaration-track:a61b1dce86280d010f67f29b74e2d65fdc20f6b879b616197177087d74d3b897` |
| 83 | `lemma` | [smulRightL_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/smulrightl-apply.md) | 806 | `result-track:5aaf336ba80d6c0bcf99262927005336e8c5372017a61b53a6cb5bcdd0a74b8c` |
| 84 | `lemma` | [norm_smulRightL_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-smulrightl-le.md) | 809 | `result-track:aace39cfc35af42e158d113fc105b5a2da12ba4a986a62faaa7edf02e9c79757` |
| 85 | `def` | [piFieldEquiv](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/pifieldequiv.md) | 818 | `declaration-track:54aee3b38d9a0a8c2d06341b71b202a56e4ca9685485e3500b3c8f072ef8df87` |
| 86 | `theorem` | [norm_compContinuousMultilinearMap_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-compcontinuousmultilinearmap-le.md) | 835 | `result-track:6ea51fa718fcbc10352c62c1101b8c1453b183957afc4aba086e39615d94dd87` |
| 87 | `def` | [compContinuousMultilinearMapL](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/compcontinuousmultilinearmapl.md) | 845 | `declaration-track:6308e24bda982ebfa92aa32682878d6951e3996821b0c7b7c673eb9c851a10ad` |
| 88 | `def` | [_root_.ContinuousLinearEquiv.continuousMultilinearMapCongrRight](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/root-continuouslinearequiv-continuousmultilinearmapcongrright.md) | 858 | `declaration-track:138d4dc6561bf809be1069f1100d9a5d2c4d2d52d9314733b7323a90e87871bf` |
| 89 | `theorem` | [_root_.ContinuousLinearEquiv.continuousMultilinearMapCongrRight_symm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/root-continuouslinearequiv-continuousmultilinearmapcongrright-symm.md) | 878 | `result-track:b64394897760b591cab0795245083e525d2ee8e69565e24b71687397d95d4370` |
| 90 | `theorem` | [_root_.ContinuousLinearEquiv.continuousMultilinearMapCongrRight_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/root-continuouslinearequiv-continuousmultilinearmapcongrright-apply.md) | 889 | `result-track:e5b025b358900684ade9d08bcb8a2144a0b6661a863612f358b9e761e50dbc03` |
| 91 | `def` | [flipMultilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/flipmultilinear.md) | 901 | `declaration-track:8f8b5ec16f59f05977aa2a7a59dbc7a5281f7f97e71776c1f3f7891063627a59` |
| 92 | `theorem` | [LinearIsometry.norm_compContinuousMultilinearMap](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/linearisometry-norm-compcontinuousmultilinearmap.md) | 927 | `result-track:778ec7fb86f6733fc3922180a3da261d263eccd257cc863085b161dfc1b3617f` |
| 93 | `def` | [mkContinuousLinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/mkcontinuouslinear.md) | 946 | `declaration-track:5fc6c5f1a51153c4d9cf6e58838e35496f4e4068d23ad49a0bfd4a0d1021358c` |
| 94 | `theorem` | [mkContinuousLinear_norm_le'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/mkcontinuouslinear-norm-le-source-edition-2.md) | 960 | `result-track:ad1246bf5dcdab1518caf85ae47e986952c1462ec89855c744ac4615204fe12d` |
| 95 | `theorem` | [mkContinuousLinear_norm_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/mkcontinuouslinear-norm-le.md) | 965 | `result-track:7d1da0f629f4ac4747398cdb520aab34ab31ef6e10f39bcb3438b0e8e9afe7fa` |
| 96 | `def` | [mkContinuousMultilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/mkcontinuousmultilinear.md) | 974 | `declaration-track:59c36ae8e3818cce71787d26d1fbba2f9d5ba1bae2b3b0251b3b2d4d1e186216` |
| 97 | `theorem` | [mkContinuousMultilinear_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/mkcontinuousmultilinear-apply.md) | 992 | `result-track:e8aadd5721d122870872456aa73aa4eff600c35a0e938288009039c60e94e5c0` |
| 98 | `theorem` | [mkContinuousMultilinear_norm_le'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/mkcontinuousmultilinear-norm-le.md) | 997 | `result-track:bb46c7d950d773ca2f96bc749bb37081e03fabcdf8d289743a5727296043efd0` |
| 99 | `theorem` | [mkContinuousMultilinear_norm_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/mkcontinuousmultilinear-norm-le-source-edition-2.md) | 1003 | `result-track:e371ddcfdbf5252a97cbe96595c140969609e13543643a3968c0a1d100b3c9d7` |
| 100 | `theorem` | [norm_compContinuousLinearMap_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-compcontinuouslinearmap-le.md) | 1013 | `result-track:534f08007d7a8b124689cd3be3980978ed7f9236b8c22a9ce8226a68d6c7033c` |
| 101 | `theorem` | [norm_compContinuous_linearIsometry_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-compcontinuous-linearisometry-le.md) | 1021 | `result-track:e70ce3ca9f70bd2fa196d29e74bf8b9b324dea0b8e4b73f9ab266764234c9af0` |
| 102 | `theorem` | [norm_compContinuous_linearIsometryEquiv](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-compcontinuous-linearisometryequiv.md) | 1029 | `result-track:85ac7cc4a6e06219594ba7a71b16a4a615e9ec024df2695cc988e35cea5defa7` |
| 103 | `def` | [compContinuousLinearMapL](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/compcontinuouslinearmapl.md) | 1050 | `declaration-track:667a9b308fd3ff7c5aa7b0c2ec265d54ec76896504563f96f61e6e72eec468c1` |
| 104 | `theorem` | [compContinuousLinearMapL_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/compcontinuouslinearmapl-apply.md) | 1060 | `result-track:592f692e0e133f6a392dbf77326a1b89271e271871a8ef16a640fcbc4b2bdd17` |
| 105 | `theorem` | [norm_compContinuousLinearMapL_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-compcontinuouslinearmapl-le.md) | 1065 | `result-track:cb00f5b5e79a7488b9fce5a714a138b4003ee540edf413a420168bafcc163551` |
| 106 | `def` | [compContinuousLinearMapLRight](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/compcontinuouslinearmaplright.md) | 1076 | `declaration-track:c17b3595fd6ef5a448e8f717c75415efb08efcfc3bed4a38fbbfc7fbe00954c4` |
| 107 | `theorem` | [compContinuousLinearMapLRight_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/compcontinuouslinearmaplright-apply.md) | 1095 | `result-track:f5429c5eae725aadd885237d9a4aa37a3333d6d6296308b164add665bcf15256` |
| 108 | `theorem` | [norm_compContinuousLinearMapLRight_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-compcontinuouslinearmaplright-le.md) | 1100 | `result-track:cdf1ba74cdea87a6cf32b0da59832338ca9c3b149eb41ce77727af959baff693` |
| 109 | `def` | [compContinuousLinearMapMultilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/compcontinuouslinearmapmultilinear.md) | 1111 | `declaration-track:9e9c9fdb4dbf49c0381d8c938c0a72abcaace0680718ca5ffa10affa775edb06` |
| 110 | `def` | [compContinuousLinearMapContinuousMultilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/compcontinuouslinearmapcontinuousmultilinear.md) | 1131 | `declaration-track:914bd12821909205ad287f0d8d311cd0e461b18d8368b76fc48042bbb853e361` |
| 111 | `def` | [_root_.ContinuousLinearEquiv.continuousMultilinearMapCongrLeft](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/root-continuouslinearequiv-continuousmultilinearmapcongrleft.md) | 1144 | `declaration-track:8213f63ff0e3c624c24c059f8a468a4973d32757ddaf0058a5cae58d3622fe31` |
| 112 | `theorem` | [_root_.ContinuousLinearEquiv.continuousMultilinearMapCongrLeft_symm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/root-continuouslinearequiv-continuousmultilinearmapcongrleft-symm.md) | 1168 | `result-track:e38fab1989f336644c47f4eaa246abbcbfa47df0beacbc8460a7e3260d793e23` |
| 113 | `theorem` | [_root_.ContinuousLinearEquiv.continuousMultilinearMapCongrLeft_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/root-continuouslinearequiv-continuousmultilinearmapcongrleft-apply.md) | 1181 | `result-track:7865c389e1585a955cd1e6f4627d17f1e4300d45021bf9e2ad50ad7012cd2e23` |
| 114 | `def` | [iteratedFDerivComponent](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/iteratedfderivcomponent.md) | 1197 | `declaration-track:5118570b10106ca48ba8b61fa54da70c1b83a981dad005780057bc031b9d2cc0` |
| 115 | `lemma` | [iteratedFDerivComponent_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/iteratedfderivcomponent-apply.md) | 1218 | `result-track:18c31b2b3b97aa7a264e3ca52df716c31b2031423189f7fbf102a22a2b6f216e` |
| 116 | `lemma` | [norm_iteratedFDerivComponent_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-iteratedfderivcomponent-le.md) | 1226 | `result-track:70b910c6f70671fbf8f44252d0633a90db81146d8a08e37538b709e955b5b9dc` |
| 117 | `def` | [iteratedFDeriv](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/iteratedfderiv.md) | 1251 | `declaration-track:c0ec9f6ee3aeaa555d443f91b6a8b2f44187bd0f91dbe8d25509accaea0a16d0` |
| 118 | `lemma` | [norm_iteratedFDeriv_le'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-iteratedfderiv-le.md) | 1258 | `result-track:d2c8e95d01355abad61f32bea0cb6397b157e17dc2cc412406ee0801edc5e140` |
| 119 | `theorem` | [opNorm_zero_iff](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/opnorm-zero-iff.md) | 1286 | `result-track:6375c6323bfbb59e2ef54a9fa5f04510c17222535dea6c8e2e59fdcdd3204abc` |
| 120 | `instance` | [normedAddCommGroup](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/normedaddcommgroup.md) | 1291 | `declaration-track:76264d2c8ce601f90170cf4723c2f5f9018596a60140cda74b99ffce546b0896` |
| 121 | `instance` | [normedAddCommGroup'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/normedaddcommgroup-source-edition-2.md) | 1296 | `declaration-track:c4efce37f7f48613b2a0f5423ea5302880a1d7d9010f21bb578cc4194b69719d` |
| 122 | `theorem` | [norm_ofSubsingleton_id](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/norm-ofsubsingleton-id.md) | 1302 | `result-track:b6685fae225a3267f3baa263c5e0b2e86c507d0f00b8af24720497e02b8e9e12` |
| 123 | `theorem` | [nnnorm_ofSubsingleton_id](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/nnnorm-ofsubsingleton-id.md) | 1306 | `result-track:64730e86d4124278ebe5900370653289022da472ba127241ebc35087cd7a56ec` |
| 124 | `theorem` | [bound_of_shell](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasic.lean/declarations/bound-of-shell.md) | 1328 | `result-track:f408ebc0dd2af89b772110bfa882be82b4aa40bbc0c3d86df079e2e3801d97f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=daa674b1e4709e92a64c31f29262ec855801bb64ccf1c07459c9e69e8180b1be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
