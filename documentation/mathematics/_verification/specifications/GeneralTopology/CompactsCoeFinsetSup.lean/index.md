# Verification target: Compacts Coe Finset Sup

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "025dba37721815c39647e554a88f81de1e81013a",
  "lexical_observation_count": 119,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compacts/Variant309833a3f0ac25af166da138d4f888a4d4bd0e96ba2037245a7f9b89898209b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/index.md) · [Full source](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `025dba37721815c39647e554a88f81de1e81013a`.

Source path: `GRWTSK/Topology/GeneralTopology/Compacts/Variant309833a3f0ac25af166da138d4f888a4d4bd0e96ba2037245a7f9b89898209b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compacts/Variant309833a3f0ac25af166da138d4f888a4d4bd0e96ba2037245a7f9b89898209b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sets.Closeds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.QuasiSeparated` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Compacts](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/compacts.md) | 34 | `declaration-track:7ffe6b8a2057740df15274e9e44163c9d6bdf08fc6c2b4d48f9ef5e2fa4dee4d` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-15.md) | 41 | `declaration-track:4339456ec6e1c41b8dea19d490d632b7c66feb662dd76bcffe6602c50ef13ddf` |
| 3 | `def` | [Simps.coe](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/simps-coe-source-edition-3.md) | 46 | `declaration-track:9f10af092a5d67ef22263e8c83e0b2cb669ac9fe59cff6a6e09c5b3a6709ddfa` |
| 4 | `theorem` | [isCompact](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/iscompact-source-edition-4.md) | 50 | `result-track:c095500bb8b906ba75ac0c31ecd6b2eaaea4fc91553489d95e1e0e24ad4b6b87` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-23.md) | 53 | `declaration-track:8a9ea50ad56ee9e7c3f7b87d4ae2018cb81e45d5525e1462ca961a30b7131761` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-10.md) | 56 | `declaration-track:3348938a4d11b4508fb421cf3732ab0063b02ba234742f42e9d3ba980f897204` |
| 7 | `theorem` | [ext](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/ext-source-edition-3.md) | 59 | `result-track:31b19691ba57a6db38f97155d3fd705d62193498669d6e02ad1638f0bf025632` |
| 8 | `theorem` | [coe_mk](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-mk-source-edition-3.md) | 63 | `result-track:ae7299448b12660f85148a35d0404e0b37befe4772f512f58f433775b706a0d7` |
| 9 | `theorem` | [carrier_eq_coe](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/carrier-eq-coe-source-edition-2.md) | 67 | `result-track:bd66e569725db82f42f6b0b62f8290d614611bce4790395ae723f50ed027e43e` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-24.md) | 70 | `declaration-track:bc9c1511f91a03b650de2a59c0ab1b796483b7cd1762d423d15efe50aa7e9e04` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-7.md) | 73 | `declaration-track:200591a026725a1947c4766088e0bd5483c613b8597d78d006318364d71e46c6` |
| 12 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-29.md) | 76 | `declaration-track:fded6ef63de3db7e7b8233af8d40ac61f5df9ec934e74dca3f0657a16380e9cd` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-17.md) | 79 | `declaration-track:524f673cab660a0845f2952507e22442cf837fe66434af78a67374c867258b59` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-30.md) | 82 | `declaration-track:ffa24a78067132af83e8bdcd5b377d551bc21d6926eef4a66cbd30819f61cad5` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-16.md) | 85 | `declaration-track:4ee63ab7747a8dcc87e2d98c36cd9573d9562a3fd126c66afdd277bce1b46338` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-13.md) | 88 | `declaration-track:38dd4fd9a6022eab706276cf3d1e631fd8ed238dee72439b1d704c811ff63b3f` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-6.md) | 91 | `declaration-track:1c553423850018d4846878187204e83a03fa613439d32f97ddb82c5f91e77c97` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-4.md) | 95 | `declaration-track:0f0e56db1fd44e06dcc6d30c9ba69d7085a02bc35e9cd1a432bcb2f0be191ff8` |
| 19 | `theorem` | [coe_sup](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-sup-source-edition-3.md) | 98 | `result-track:454d69d11af032c98472b97ef47bbcbe5a2ee051f7212de6a8f4ee99ff03439e` |
| 20 | `theorem` | [coe_inf](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-inf-source-edition-2.md) | 102 | `result-track:8d7b49d7898cb6fc651ccbb69a0896cb57f157d7d19bacaa912bd95b5bdd8b9a` |
| 21 | `theorem` | [coe_top](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-top-source-edition-3.md) | 106 | `result-track:817324dba6e90d2e935755d60effa05121cd3efd324217c1140b78abb4b787dc` |
| 22 | `theorem` | [coe_bot](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-bot.md) | 110 | `result-track:65a7f58eee5a90fefc01d01c83a5c455ef83023a917d947df051e2ca6e17b0aa` |
| 23 | `theorem` | [coe_finset_sup](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-finset-sup.md) | 114 | `result-track:519adaf675f2d5be56bd091d1eb8e23ab6316fee066c9b05981e424da81f542d` |
| 24 | `def` | [map](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/map-source-edition-3.md) | 121 | `declaration-track:cdafb46a8704051da4254ad94a3181db93da1a4a1da74accee04cd8c07a35ea0` |
| 25 | `theorem` | [coe_map](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-map-source-edition-2.md) | 125 | `result-track:20493f28b6630e44853e378e3d4532c1ed9d3ef9e0b82a21311df68d24e06843` |
| 26 | `theorem` | [map_id](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/map-id-source-edition-3.md) | 129 | `result-track:901510b8874823c50a034b61bd9dcc58b583728c51148dce5057b61627277bcc` |
| 27 | `theorem` | [map_comp](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/map-comp-source-edition-3.md) | 132 | `result-track:c70f16b1d5401031419ab72778e632879f9543fdd49aff44792c54fe83713a10` |
| 28 | `def` | [equiv](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/equiv.md) | 138 | `declaration-track:aab0df94548af50530ba6c69d314ed4a816b49855391998c6cc297edf64fcf24` |
| 29 | `theorem` | [equiv_refl](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/equiv-refl.md) | 149 | `result-track:cdbf5c75fc063fbb31ebf224139f05e0561479d2e9833404255e8d3b91bfdefe` |
| 30 | `theorem` | [equiv_trans](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/equiv-trans.md) | 153 | `result-track:d7a521a8dc70d0668d5e392562abd1ca8624c3ec5ece9669ef2a5a70d9dab5db` |
| 31 | `theorem` | [equiv_symm](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/equiv-symm.md) | 158 | `result-track:ad34d90fbc91bf09b5d3d5af91bc9b23ab7c11582ec8d7ba54794be5dacc7d8b` |
| 32 | `theorem` | [coe_equiv_apply_eq_preimage](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-equiv-apply-eq-preimage.md) | 162 | `result-track:9cf509b414687e35653d2f383cef4cca4aa6d051dda9ba41b025120a82001eb6` |
| 33 | `def` | [prod](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/prod-source-edition-3.md) | 168 | `declaration-track:e5c4fcf32daee777f8831830418a3075b3fb8085742650bf509d768429977fe4` |
| 34 | `theorem` | [coe_prod](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-prod-source-edition-3.md) | 173 | `result-track:96573fab62933c052a9bdb816ab6269aec7d13bc55afb40053ec3edfe8fac4de` |
| 35 | `structure` | [NonemptyCompacts](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/nonemptycompacts.md) | 184 | `declaration-track:b0e83f9a7951401263fae44d80b27855a79a54b8a306d0c9bfffea26635a3440` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-26.md) | 189 | `declaration-track:eef2b710e40b49acd5024c5bf45be878487e0f7a11a96ee06b223dd6384e96a4` |
| 37 | `def` | [Simps.coe](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/simps-coe-source-edition-4.md) | 197 | `declaration-track:a8cb67e91489a452ff4c3a3f68760ead842f2b6ee0a1b48d2ff1c397e7bd4cd2` |
| 38 | `theorem` | [isCompact](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/iscompact.md) | 201 | `result-track:57d099fe0705865ddc813bbb88bbbbac2885568631ba1b5ee187d6d7fcdba46f` |
| 39 | `theorem` | [nonempty](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/nonempty-source-edition-2.md) | 204 | `result-track:cd7a12ffe680cf416ef2a2c25e4db54529104d17048b0b56e2a1b49d4b1550e3` |
| 40 | `def` | [toCloseds](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/tocloseds.md) | 208 | `declaration-track:5f90b07e906cb0e7a5326942939193102d74923ae4f8788afd769578530ce9e0` |
| 41 | `theorem` | [ext](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/ext-source-edition-2.md) | 212 | `result-track:2a4e58c4ca3fb2237558a664566ccaa2dcb916e7ab3c6b8d233ae5525cd054e0` |
| 42 | `theorem` | [coe_mk](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-mk-source-edition-4.md) | 216 | `result-track:d2da167c04e6af16a2afe8549cc6f0a5d55de17d51eb6c3ab02332ea6bc850fc` |
| 43 | `theorem` | [carrier_eq_coe](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/carrier-eq-coe.md) | 219 | `result-track:27d8cc2c25e6457e9d83b800b69cdcd639fcf3a4ae8701ba8a6f5473d7c89825` |
| 44 | `theorem` | [coe_toCompacts](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-tocompacts.md) | 223 | `result-track:777fa968bc343111903af1c0d20f767ecbfe3a765b0fe87efa23ef6c2fee4ecb` |
| 45 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-20.md) | 225 | `declaration-track:721d18a608829394b91f2cbb1466a64d8499608d141eaae22a18feeb37d563a4` |
| 46 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-11.md) | 228 | `declaration-track:335dd6b47b3673cda063b4008ca270000a8ae4a9c5e1ad8478f6cae2a88c0476` |
| 47 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-21.md) | 231 | `declaration-track:87ead56168f159727e7390d122693f663b45b85c0ffbbe47ed2955b4dc49767f` |
| 48 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-2.md) | 234 | `declaration-track:053e9033c98ea53add7a29adc2a191c5a2f6bb5209ddd38699ca1f7c9719e9d0` |
| 49 | `theorem` | [coe_sup](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-sup.md) | 238 | `result-track:11dd3a5f1a2252c1f2bb71d00a29b4196b15a768ea2fdac3b83f6b5dabe80eeb` |
| 50 | `theorem` | [coe_top](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-top-source-edition-2.md) | 242 | `result-track:26b2418c0933214b3b43193510f9430f0f6bb22c1f4dcaeca9983f60f56c4448` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-8.md) | 247 | `declaration-track:2def943c8f2cb7dda80979f5aff0e4943ec1f21c355d79bdfd76900d430dc389` |
| 52 | `instance` | [toCompactSpace](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/tocompactspace.md) | 252 | `declaration-track:ce41191ee777d033ad18651c679b220c564497cdf689760cb7cc27f67e695ba6` |
| 53 | `instance` | [toNonempty](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/tononempty.md) | 255 | `declaration-track:20a93243b16b020de0751e4173bdfce336cd51e3d8f9f90601abde66e0f10add` |
| 54 | `def` | [prod](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/prod-source-edition-4.md) | 260 | `declaration-track:e697ab3b4be08cb2eeb89b1b71e73376f6b8acd1b13444859dcace9ef90e96f6` |
| 55 | `theorem` | [coe_prod](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-prod-source-edition-4.md) | 264 | `result-track:f6b71ffc534c5f60174ebf3498852224b2d8effe0206ce1fb43411d78a80af48` |
| 56 | `structure` | [PositiveCompacts](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/positivecompacts.md) | 274 | `declaration-track:b63c2cc222fa13d4a7e6a6aef3364cfcf7bf3b8262a59318fac77daefd3f0c25` |
| 57 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-3.md) | 279 | `declaration-track:0860f3152e888ff098640a0701a7be7d9a22f68180ac72904c3992ec774094e8` |
| 58 | `def` | [Simps.coe](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/simps-coe-source-edition-2.md) | 287 | `declaration-track:915b77c5d6443983b288f34a6d602455585eeb26f8ab70ee2542fecb97aa5981` |
| 59 | `theorem` | [isCompact](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/iscompact-source-edition-3.md) | 291 | `result-track:b04e33b5a5f0cbdfe23455cbdc2fd0599e52a3d519cfc744df63b261800598f9` |
| 60 | `theorem` | [interior_nonempty](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/interior-nonempty.md) | 294 | `result-track:ae2c1206062947c48ed4dd705224a46c54208200213c1be00381fe804b533633` |
| 61 | `theorem` | [nonempty](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/nonempty.md) | 297 | `result-track:4c8c4e85a7524bf33eb7b7e66de0a692c794910df4e6467210e5a6a17425482a` |
| 62 | `def` | [toNonemptyCompacts](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/tononemptycompacts.md) | 301 | `declaration-track:e74c15d22c63cfbe87d3c524ea56a70e7b8cd28cb3f9d5e7caa2477cb1235171` |
| 63 | `theorem` | [ext](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/ext-source-edition-4.md) | 305 | `result-track:6ff19dc80228f6275146b4ee2d188746c926ef58215415fe84450e5b2275d2a9` |
| 64 | `theorem` | [coe_mk](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-mk.md) | 309 | `result-track:68bc1e797e29b98eddadb1f2a128e91def97810855af7d6a6bc2c53bf98ad68c` |
| 65 | `theorem` | [carrier_eq_coe](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/carrier-eq-coe-source-edition-3.md) | 312 | `result-track:cb370baa6f43346f0f54d753d0387ad628440bdd30c46ac07118df49de589e61` |
| 66 | `theorem` | [coe_toCompacts](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-tocompacts-source-edition-2.md) | 316 | `result-track:dbe1ed6046e02363fe46eb37a54d6c774d30416f4ee260ad6eb993a9691caba1` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-28.md) | 319 | `declaration-track:f7348959a315659fd4eb87f569289a87dbe0034a7f002f633ba1384a56316fb2` |
| 68 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-22.md) | 324 | `declaration-track:89e188c9ee2ce24ebdd75a67a1105b0b439424de71dee1433690f0a3b972605c` |
| 69 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-14.md) | 327 | `declaration-track:415cb0c52482b6db7729908b596a743d52e766825031993cb7400937df3d5e73` |
| 70 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-18.md) | 330 | `declaration-track:5a790c6e8b312f591e640f1237f21a915d44930d366ce8c7f955e743f2d7bb03` |
| 71 | `theorem` | [coe_sup](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-sup-source-edition-2.md) | 334 | `result-track:24cfe34583eefeab2542d02f8e9f8b3cc54efb00391996deb21d197657e5144a` |
| 72 | `theorem` | [coe_top](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-top.md) | 338 | `result-track:0a9e76db3e04bbec263b5b608dc31e3b7eeaefed9b1d30470cea804d2a34fac0` |
| 73 | `def` | [map](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/map-source-edition-2.md) | 342 | `declaration-track:bd7dfe30eedbf5ff1460cb4d9d485216cdcf310af508762d96fe6bc0ca09f8db` |
| 74 | `theorem` | [coe_map](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-map-source-edition-3.md) | 349 | `result-track:2ea9ad99d224a424c1bc1951ebe3adf64e4e858332d7ff62467b3bd0305380d2` |
| 75 | `theorem` | [map_id](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/map-id.md) | 354 | `result-track:3d63ce4e8c9b7fa4bb4694c9abd27969c0197792988b9fb5b01e50dc660a7127` |
| 76 | `theorem` | [map_comp](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/map-comp.md) | 357 | `result-track:1ef7db858c22f0ad99a69dd3f1dabf3a7f94171d61adc8ceaedc78fdeb0c6080` |
| 77 | `theorem` | [_root_.exists_positiveCompacts_subset](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/root-exists-positivecompacts-subset.md) | 362 | `result-track:18825e9a55738a82175078799112f5149514d6da4b5627ec7c5e1d731fd7f4ea` |
| 78 | `theorem` | [_root_.IsOpen.exists_positiveCompacts_closure_subset](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/root-isopen-exists-positivecompacts-closure-subset.md) | 368 | `result-track:be7458816a90c21c6cbf01c33f2101bf7a8b04bcd33cb5c81ed6ef1bc19c5543` |
| 79 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-5.md) | 373 | `declaration-track:12ba5f75ff730db96886e3f05276a18a54c63494321285a923f15d5dde2558fb` |
| 80 | `instance` | [nonempty'](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/nonempty-source-edition-3.md) | 377 | `declaration-track:db5738d83014ce74a44814dcdbfaa90bf9f8fa60f02f22d77f2f4b83c91449a2` |
| 81 | `def` | [prod](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/prod-source-edition-2.md) | 384 | `declaration-track:974517d9ab481e45f9d6348c34c4c09fd9acbe1d97bea7ec32a00c183705eb1b` |
| 82 | `theorem` | [coe_prod](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-prod-source-edition-2.md) | 392 | `result-track:854d508fedfe8b597659f6ba55175871a24b3f3e866749f5eb4d727149565e8c` |
| 83 | `structure` | [CompactOpens](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/compactopens.md) | 402 | `declaration-track:adabb506455049806b4d0b8f74821ea103e9f2a7869ba6243bb7f7f3af82f50b` |
| 84 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-19.md) | 407 | `declaration-track:5b9cd92b00e1680895ab0fa6d682b092a1880d305cdd3dcbfcfaaed7b27a21c9` |
| 85 | `def` | [Simps.coe](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/simps-coe.md) | 415 | `declaration-track:3e584fa9c7db18e98209c8a7b510713c4617a871db3106d2d7927ad9f4f9e374` |
| 86 | `theorem` | [isCompact](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/iscompact-source-edition-2.md) | 419 | `result-track:a037b1677bdc97335a9b9bcdc1e3e41dc13d5cd52c3e85da4db36b5752bc88c6` |
| 87 | `theorem` | [isOpen](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/isopen.md) | 422 | `result-track:8a768fee76f88f5bb58b9f3f41916fe48cf0311416920df41da9a96de3df377a` |
| 88 | `def` | [toOpens](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/toopens.md) | 427 | `declaration-track:1d945592df7f18eefb4697118911bc7a8b42f96959b4d21db4d5775618799aa4` |
| 89 | `def` | [toClopens](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/toclopens.md) | 431 | `declaration-track:e2fb48911f6a6fcc0c3afe650e4774eba3f72e2dff107f69d342607fbe430b48` |
| 90 | `theorem` | [ext](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/ext.md) | 435 | `result-track:0f033ea26fac3328957ddc7d8afa1c3a790f473d67e9072352e9d62ac89011af` |
| 91 | `theorem` | [coe_mk](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-mk-source-edition-2.md) | 439 | `result-track:9c85f0761671d797dfc3b7c60e1b14acdabf7b2142b198372b7509d242717105` |
| 92 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-9.md) | 442 | `declaration-track:2feeebc8fec388cb3561f05e6a3f5c29fa14211304409a0cb8237f122835575d` |
| 93 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-12.md) | 445 | `declaration-track:35568d10df4e972e9cc7e043b56ad8ca8d99c82ce9314efd1f9dc347a1c6ee83` |
| 94 | `lemma` | [coe_sup](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-sup-source-edition-4.md) | 447 | `result-track:f602c04788b723fba010a8394a3efdef17f84362c5bbe3e0c9c077b533cf54eb` |
| 95 | `lemma` | [coe_bot](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-bot-source-edition-2.md) | 448 | `result-track:f652ed302e00bf65f38529273aa17773ff434e46aba4f7a9c99ae451c94ca0b8` |
| 96 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-25.md) | 450 | `declaration-track:dbe72a786d3159756cfef4c1bcc88c0418d65e1f2fef19437032e673a65d2bd1` |
| 97 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance-source-edition-27.md) | 451 | `declaration-track:f4ec89a37f6faca333d83fadec99c8ea76a57472a882309a6f68d5ec788a49b9` |
| 98 | `lemma` | [coe_finsetSup](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-finsetsup.md) | 454 | `result-track:9f3b50ad466b59ffd090e506f375e3114703b50f76f670ce51530f2c78ff7438` |
| 99 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instance.md) | 459 | `declaration-track:03ee3620568f406df601bb1ea1eef191202cee8a21756feb80e6b46c2610ac70` |
| 100 | `instance` | [instInf](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instinf.md) | 465 | `declaration-track:a1468492336e4a696cf521caf178220a1d5582badd5f532550c1db410269b7c9` |
| 101 | `lemma` | [coe_inf](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-inf.md) | 469 | `result-track:789c8377913f4b9cb6a00b11af6b28092614d9f14d74b936cc1c98461e668cb1` |
| 102 | `instance` | [instSemilatticeInf](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instsemilatticeinf.md) | 471 | `declaration-track:a486793477fb243ec9e14b6bfe0e3c656abdcfd7f0572313de6c50807c1c7ef0` |
| 103 | `instance` | [instSDiff](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instsdiff.md) | 479 | `declaration-track:52476589550b4ad33e80ff7f295fdc75cc77a4e955d337274806efcb656478d6` |
| 104 | `lemma` | [coe_sdiff](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-sdiff.md) | 482 | `result-track:5ab2f2b3e1f97b00f482b1aff010f5377aa8e94bc97db02766c9cd303facb891` |
| 105 | `instance` | [instGeneralizedBooleanAlgebra](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instgeneralizedbooleanalgebra.md) | 484 | `declaration-track:06bef56c387cd539dc0e7b77431e6ce1edb35f65baead7c9d070f3c50ea5994e` |
| 106 | `instance` | [instTop](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/insttop.md) | 492 | `declaration-track:3b3e01a7eaea0ae82a9c1e09114c980236556d9aab14ce023a7236804a23253e` |
| 107 | `lemma` | [coe_top](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-top-source-edition-4.md) | 494 | `result-track:f82491675f78f36cb9e58d1e4cc11b27ac94fe59030f1c65bf5e64c2bfcf72a5` |
| 108 | `instance` | [instBoundedOrder](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instboundedorder.md) | 496 | `declaration-track:6e388c208fe62a270ffe62425f88da120410cffc9dad3809352411bbda433e60` |
| 109 | `instance` | [instHasCompl](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/insthascompl.md) | 502 | `declaration-track:05bb1c0c7c2cacfd86918fc2e7f3d6e58b7c5195297590471c355937f447e27b` |
| 110 | `instance` | [instHImp](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/insthimp.md) | 505 | `declaration-track:42732025a5a7c746576ce2886f94e80ec76f2c8ff39f18afe8d9f3d51b251935` |
| 111 | `lemma` | [coe_compl](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-compl.md) | 510 | `result-track:4042e71c92eb20a33669ffc85419e2965a849bc169df70a2da670656ff1fee0b` |
| 112 | `lemma` | [coe_himp](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-himp.md) | 511 | `result-track:419e5db086dadbac4df4c5c537354044472e8a6528f31413a3ffb6753d084ce4` |
| 113 | `instance` | [instBooleanAlgebra](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/instbooleanalgebra.md) | 513 | `declaration-track:fcb3e5cef572de642063ebadd87f0d7c28470c7b12ed840218518dcdba2a1539` |
| 114 | `def` | [map](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/map.md) | 521 | `declaration-track:1fca0557091050ab404ba3f4fc26a7917ce850180041d85111d9a19d8191ccff` |
| 115 | `theorem` | [coe_map](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-map.md) | 525 | `result-track:04d3f1f762efb64bc6be8819cc94f766772053b4e0c58ee1272a54251ee776b1` |
| 116 | `theorem` | [map_id](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/map-id-source-edition-2.md) | 530 | `result-track:894753927d87f35217eb612fb92706caf676f75fd3f45d7f214fc1b46b4c15e9` |
| 117 | `theorem` | [map_comp](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/map-comp-source-edition-2.md) | 533 | `result-track:bdfc52614f3f598348a21cae7068f6a3e57874ef60b983dfb1dfc07b47b4dd90` |
| 118 | `def` | [prod](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/prod.md) | 540 | `declaration-track:7f92be81dd6891075882bd0b94c46871b093008f60da1b75d24442f40bd5cd78` |
| 119 | `theorem` | [coe_prod](../../../../GeneralTopology/CompactsCoeFinsetSup.lean/declarations/coe-prod.md) | 544 | `result-track:50e2851261cb6a703df0093c5ad0bff283098aecb550cb7eadf1022b642ee602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e76887dc5e07c7493d9a3ae3559ab4e13e573f68048b15a94447872d9c85eb5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Compacts/Variant309833a3f0ac25af166da138d4f888a4d4bd0e96ba2037245a7f9b89898209b2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Compacts/Variant309833a3f0ac25af166da138d4f888a4d4bd0e96ba2037245a7f9b89898209b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
