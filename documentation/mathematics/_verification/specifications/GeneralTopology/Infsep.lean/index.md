# Verification target: Infsep

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3d33e76b444f3ae2602d42b9d2f140f5797c611",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Infsep/Variant61756b28b1e1a61e2f11a1dc82166290b528ddaed15d7e2512fa19d81d0a6330.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Infsep.lean/index.md) · [Full source](../../../../GeneralTopology/Infsep.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3d33e76b444f3ae2602d42b9d2f140f5797c611`.

Source path: `GRWTSK/Topology/MetricTopology/Infsep/Variant61756b28b1e1a61e2f11a1dc82166290b528ddaed15d7e2512fa19d81d0a6330.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Infsep/Variant61756b28b1e1a61e2f11a1dc82166290b528ddaed15d7e2512fa19d81d0a6330.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [einfsep](../../../../GeneralTopology/Infsep.lean/declarations/einfsep.md) | 40 | `declaration-track:1399e8ce1f58800e2e2fde725b6c8822b7da0c2a7c817be4105bc76d1e3f0303` |
| 2 | `theorem` | [le_einfsep_iff](../../../../GeneralTopology/Infsep.lean/declarations/le-einfsep-iff.md) | 47 | `result-track:891e0f6fe475be9d035be445b64a0b46358046af04dec61239288ac7135e7893` |
| 3 | `theorem` | [einfsep_zero](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-zero.md) | 51 | `result-track:0379528da64abbf7c25bdf86ed84a9ef83f2c1ae8b35c5fca9678648fd005c09` |
| 4 | `theorem` | [einfsep_pos](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-pos.md) | 54 | `result-track:0107d02c82f8cd45559eb2306c5bb934daeeed9c11179a2e80bcb921f83d20ef` |
| 5 | `theorem` | [einfsep_top](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-top.md) | 58 | `result-track:f3c5d6449ec34aeaed9d9da86b0bb5f6288c1f695184b2ca7065dad9b88ad0c1` |
| 6 | `theorem` | [einfsep_lt_top](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-lt-top.md) | 62 | `result-track:c8471d6f4bce183d59f4974cc1effeed04e59f33e6ffa0fd61243eb208ba38d1` |
| 7 | `theorem` | [einfsep_ne_top](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-ne-top.md) | 66 | `result-track:9ef6cc13c2bae48a5338b8d87ae5e525009cd2e0dd458c90ef34bb667c1e7c32` |
| 8 | `theorem` | [einfsep_lt_iff](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-lt-iff.md) | 70 | `result-track:89caa0e5059112cd9798d36757634082feac201917f7b2df790a6b0dff990118` |
| 9 | `theorem` | [nontrivial_of_einfsep_lt_top](../../../../GeneralTopology/Infsep.lean/declarations/nontrivial-of-einfsep-lt-top.md) | 74 | `result-track:f4a6217ebd96fe1924fb1871a7a43bc1ad2d5a0b9cfd16af44cd2a028391d327` |
| 10 | `theorem` | [nontrivial_of_einfsep_ne_top](../../../../GeneralTopology/Infsep.lean/declarations/nontrivial-of-einfsep-ne-top.md) | 78 | `result-track:3349f268e0a259933c7899610bcd04051c47c48fa922600e4082815a595dcb02` |
| 11 | `theorem` | [Subsingleton.einfsep](../../../../GeneralTopology/Infsep.lean/declarations/subsingleton-einfsep.md) | 81 | `result-track:a3a901cd4ce76cf7a5b8fa61c6554fb96848dbb23b2d2e4909807a523f7f003a` |
| 12 | `theorem` | [le_einfsep_image_iff](../../../../GeneralTopology/Infsep.lean/declarations/le-einfsep-image-iff.md) | 85 | `result-track:cbdf5cd1259167979b3078f88e731417cc897f5092434b68c036b6a963543b76` |
| 13 | `theorem` | [le_edist_of_le_einfsep](../../../../GeneralTopology/Infsep.lean/declarations/le-edist-of-le-einfsep.md) | 89 | `result-track:e1e5fc8ebed3f066cf4eb2f00dc264dda386bb7db7363c92043a7f8f5b0a7ccf` |
| 14 | `theorem` | [einfsep_le_edist_of_mem](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-le-edist-of-mem.md) | 93 | `result-track:273024fe78698e766b389eea18433d9497f175f4cae14abe9e5a80d4004ba78e` |
| 15 | `theorem` | [einfsep_le_of_mem_of_edist_le](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-le-of-mem-of-edist-le.md) | 97 | `result-track:db098d8e506cde62bf4c5ca44beea7ba586a63a874574dbdd08f232e0e4b36a0` |
| 16 | `theorem` | [le_einfsep](../../../../GeneralTopology/Infsep.lean/declarations/le-einfsep.md) | 101 | `result-track:108c188b0ccf116990aedecd233dfb5d810c1e48663d3914b6b8bd7cd71d26e9` |
| 17 | `theorem` | [einfsep_empty](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-empty.md) | 105 | `result-track:433fa4611a27a1b7d683c4f8874f6b4eb930ae680c60359ce11de5f59a917953` |
| 18 | `theorem` | [einfsep_singleton](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-singleton.md) | 109 | `result-track:ff9522e48a0c8197ca9d92f4f6739a8883ceb9e812d8fc4b753e997c47b6ab7b` |
| 19 | `theorem` | [einfsep_iUnion_mem_option](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-iunion-mem-option.md) | 112 | `result-track:66310d984e9ba89683b45178bc7a82bdd48bec83bbf6387a7671a2d924f54815` |
| 20 | `theorem` | [einfsep_anti](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-anti.md) | 115 | `result-track:8372a44aa2b7faa728aba2846e2913130e75d04c077530d61681e91351e432b2` |
| 21 | `theorem` | [einfsep_insert_le](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-insert-le.md) | 118 | `result-track:73f0d83b7fe6926efe65eb6565fb28a86fdf32b1363c6218e6e01170a8e01d0f` |
| 22 | `theorem` | [le_einfsep_pair](../../../../GeneralTopology/Infsep.lean/declarations/le-einfsep-pair.md) | 122 | `result-track:6337ead27a887465af7dd0df48fcc3fad45474a718d8c84f30bb316586fe2980` |
| 23 | `theorem` | [einfsep_pair_le_left](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-pair-le-left.md) | 127 | `result-track:2eeabd26afc99013ec1c8ce6a8a1d93cd846ddfb8d1bfd10a692a2836f4c8fcc` |
| 24 | `theorem` | [einfsep_pair_le_right](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-pair-le-right.md) | 130 | `result-track:b07babda6f3bfba380f7c5161ad8fe1850ff05191bbc8d15ea34c24470f0a97e` |
| 25 | `theorem` | [einfsep_pair_eq_inf](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-pair-eq-inf.md) | 133 | `result-track:8aa5a3e23e0bcaf8fc2dd46b9478b1219f047c6162dc7643396476cce7d17f93` |
| 26 | `theorem` | [einfsep_eq_iInf](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-eq-iinf.md) | 136 | `result-track:604be4f7044a678c0a6c109d68d77af957459ea36da36056a749549f0a3294e8` |
| 27 | `theorem` | [einfsep_of_fintype](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-of-fintype.md) | 141 | `result-track:26b88686c92354be4bc8e98101f891f0f3fc52b8b688cb25ba1c85859c1e46be` |
| 28 | `theorem` | [Finite.einfsep](../../../../GeneralTopology/Infsep.lean/declarations/finite-einfsep.md) | 147 | `result-track:2298847cc80f7c2ef9c9d8fd0482821832f5c133336ff934d0f0bce74763192e` |
| 29 | `theorem` | [Finset.coe_einfsep](../../../../GeneralTopology/Infsep.lean/declarations/finset-coe-einfsep.md) | 152 | `result-track:f8376383ecf70c3fcc5366b9241aa8f373697ef2f86e4ffb532b965d2ab3e4a0` |
| 30 | `theorem` | [Nontrivial.einfsep_exists_of_finite](../../../../GeneralTopology/Infsep.lean/declarations/nontrivial-einfsep-exists-of-finite.md) | 156 | `result-track:f4117fc7bf462515ae7f52333b9b71cd646398db695bc80b7505c34e473b5533` |
| 31 | `theorem` | [Finite.einfsep_exists_of_nontrivial](../../../../GeneralTopology/Infsep.lean/declarations/finite-einfsep-exists-of-nontrivial.md) | 165 | `result-track:ae7a5b3f7dfe4ca76b2ebb204ac3b0093c064a02c692277f9f63a54e180a97e2` |
| 32 | `theorem` | [einfsep_pair](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-pair.md) | 176 | `result-track:82fc97f94b51b73e41762ec0c8c49982542a90a0ca8dcccade7617c160244217` |
| 33 | `theorem` | [einfsep_insert](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-insert.md) | 181 | `result-track:7fd22216170305654d69758a86199b37eb037984468643db497069143cca15f2` |
| 34 | `theorem` | [einfsep_triple](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-triple.md) | 192 | `result-track:2fff369259380e214e19e805e6589818f3fc3d339283c73b875a9e37e41228cf` |
| 35 | `theorem` | [le_einfsep_pi_of_le](../../../../GeneralTopology/Infsep.lean/declarations/le-einfsep-pi-of-le.md) | 197 | `result-track:064d396920db8c9fbd9b4613d3b1e5be812e71392e58c1ec78f1406c8f36758c` |
| 36 | `theorem` | [subsingleton_of_einfsep_eq_top](../../../../GeneralTopology/Infsep.lean/declarations/subsingleton-of-einfsep-eq-top.md) | 211 | `result-track:41ac605012706ed5507a0a58447b4c459ad977c1da04be1375e4b2922c226f84` |
| 37 | `theorem` | [einfsep_eq_top_iff](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-eq-top-iff.md) | 215 | `result-track:45bfac8c196ca32a5000a5c7a6b4f3ea88b12738023b8558297a28f82fa813af` |
| 38 | `theorem` | [Nontrivial.einfsep_ne_top](../../../../GeneralTopology/Infsep.lean/declarations/nontrivial-einfsep-ne-top.md) | 218 | `result-track:9a53002458317d7680cd4548b21ebaf90b6f1fb68c1b519a2be8b82e60013819` |
| 39 | `theorem` | [Nontrivial.einfsep_lt_top](../../../../GeneralTopology/Infsep.lean/declarations/nontrivial-einfsep-lt-top.md) | 223 | `result-track:629d8f230a7d2590a46c93948e5ed9831741deba4198796a83c5d4c69d1686a2` |
| 40 | `theorem` | [einfsep_lt_top_iff](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-lt-top-iff.md) | 227 | `result-track:33828658450a4a4653978e5fe1444a7686baa56239a3f6d4c96e010f7a1c1a0b` |
| 41 | `theorem` | [einfsep_ne_top_iff](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-ne-top-iff.md) | 230 | `result-track:8c105daf47cb88feb4cdb4fb250e1f4c5840e9e3e47f9db93ac94641d78e9433` |
| 42 | `theorem` | [le_einfsep_of_forall_dist_le](../../../../GeneralTopology/Infsep.lean/declarations/le-einfsep-of-forall-dist-le.md) | 233 | `result-track:ba49726415e2a160b91045b20253ffdb4f2246d1a39f31b72f3776b1617950a6` |
| 43 | `theorem` | [einfsep_pos_of_finite](../../../../GeneralTopology/Infsep.lean/declarations/einfsep-pos-of-finite.md) | 243 | `result-track:0b2162ee005dafb703edece5e98bf79f59f1749bad5e9fc606cb49ce694f59ea` |
| 44 | `theorem` | [relatively_discrete_of_finite](../../../../GeneralTopology/Infsep.lean/declarations/relatively-discrete-of-finite.md) | 251 | `result-track:fd4043e968e65bb868d38b759f22d482065c59dfc90cb0845b952e4009e9e339` |
| 45 | `theorem` | [Finite.einfsep_pos](../../../../GeneralTopology/Infsep.lean/declarations/finite-einfsep-pos.md) | 256 | `result-track:d038feb7dedfd43a37076690fec76eab7bee586dcd68aa561795a96234a77d06` |
| 46 | `theorem` | [Finite.relatively_discrete](../../../../GeneralTopology/Infsep.lean/declarations/finite-relatively-discrete.md) | 260 | `result-track:34c7fd8a5c77a1112213c53c6e0d712a9da897fddb5058b96acb7a289fac3539` |
| 47 | `def` | [infsep](../../../../GeneralTopology/Infsep.lean/declarations/infsep.md) | 276 | `declaration-track:57bae5d847246e8d76189a905d6af1e90b9bc06922e773d05269ed1b7a940f12` |
| 48 | `theorem` | [infsep_zero](../../../../GeneralTopology/Infsep.lean/declarations/infsep-zero.md) | 283 | `result-track:775b644bb2d9fcd446a5f3030ac1d0a90848600ce1cef499697fb7bd6a60cb68` |
| 49 | `theorem` | [infsep_nonneg](../../../../GeneralTopology/Infsep.lean/declarations/infsep-nonneg.md) | 286 | `result-track:83a4b63b778eb2cc682f437f8a71bbbd74b21b734457eb0fab8ca6ff06d4616f` |
| 50 | `theorem` | [infsep_pos](../../../../GeneralTopology/Infsep.lean/declarations/infsep-pos.md) | 289 | `result-track:92b4414afd14b1e0dd2ba50ec49e2dbdae08011242d007b16c42b6861ac3ace8` |
| 51 | `theorem` | [Subsingleton.infsep_zero](../../../../GeneralTopology/Infsep.lean/declarations/subsingleton-infsep-zero.md) | 292 | `result-track:ba5392ee0cc3d96dd8292800be4ecb63a99bb46dba66a03e039448a52e03a5c9` |
| 52 | `theorem` | [nontrivial_of_infsep_pos](../../../../GeneralTopology/Infsep.lean/declarations/nontrivial-of-infsep-pos.md) | 295 | `result-track:cce1b636a30813f96fb1c59850971b7da9671758e2ba55826d2845da99f47d3f` |
| 53 | `theorem` | [infsep_empty](../../../../GeneralTopology/Infsep.lean/declarations/infsep-empty.md) | 300 | `result-track:0b7f42fe9e8ad05e4db83dbc907fff7eead40094828d14c45e8a49be47f93f0d` |
| 54 | `theorem` | [infsep_singleton](../../../../GeneralTopology/Infsep.lean/declarations/infsep-singleton.md) | 303 | `result-track:2b346b4f82d1f9684329b7265582d9f59d825bf6e6118d80cbd07f063a4eb2ec` |
| 55 | `theorem` | [infsep_pair_le_toReal_inf](../../../../GeneralTopology/Infsep.lean/declarations/infsep-pair-le-toreal-inf.md) | 306 | `result-track:654c0d458d40fedd4d9580c50b94233243a34c3c41712a30a2483645bd7137b3` |
| 56 | `theorem` | [infsep_pair_eq_toReal](../../../../GeneralTopology/Infsep.lean/declarations/infsep-pair-eq-toreal.md) | 317 | `result-track:60b79c3341d2e96e5efe1e7712c9479b1866ec780358d89037b03a40498bde55` |
| 57 | `theorem` | [Nontrivial.le_infsep_iff](../../../../GeneralTopology/Infsep.lean/declarations/nontrivial-le-infsep-iff.md) | 329 | `result-track:f07265bd0dd1ce17d90c8437e5a7c44a842b6b62aa7a890a46d797d86cc00f49` |
| 58 | `theorem` | [Nontrivial.infsep_lt_iff](../../../../GeneralTopology/Infsep.lean/declarations/nontrivial-infsep-lt-iff.md) | 334 | `result-track:6841865c0eff208791b0845746ae6d00e97edaa2d7131190266bc7f6ef2b9c1c` |
| 59 | `theorem` | [Nontrivial.le_infsep](../../../../GeneralTopology/Infsep.lean/declarations/nontrivial-le-infsep.md) | 340 | `result-track:93aa5353b7af3a163a965fdddb67ee72f35fafa09d8a39f39657d7d5c9bf0ad7` |
| 60 | `theorem` | [le_edist_of_le_infsep](../../../../GeneralTopology/Infsep.lean/declarations/le-edist-of-le-infsep.md) | 344 | `result-track:d1438355c05669136125ff52b4a7dfcfd384a4a4669b6cd133c2f514a67f2a70` |
| 61 | `theorem` | [infsep_le_dist_of_mem](../../../../GeneralTopology/Infsep.lean/declarations/infsep-le-dist-of-mem.md) | 352 | `result-track:a26ff000880ce8d99bf4d1a4ecfbf7d679989a518cf442cf156dc6c655ab9705` |
| 62 | `theorem` | [infsep_le_of_mem_of_edist_le](../../../../GeneralTopology/Infsep.lean/declarations/infsep-le-of-mem-of-edist-le.md) | 355 | `result-track:e7bfc1841e4c93787fba5434e4344291a560d8d694aa51b4c687b47220e8f61c` |
| 63 | `theorem` | [infsep_pair](../../../../GeneralTopology/Infsep.lean/declarations/infsep-pair.md) | 359 | `result-track:0e683168193659259731034f3496beefdbe0136325e49e4fba7f2f900cb080c5` |
| 64 | `theorem` | [infsep_triple](../../../../GeneralTopology/Infsep.lean/declarations/infsep-triple.md) | 363 | `result-track:dbc6834e69f1616efe8f17cd19cd8ec8f27c0a6f85b900bcfe2f47c82c0c195d` |
| 65 | `theorem` | [Nontrivial.infsep_anti](../../../../GeneralTopology/Infsep.lean/declarations/nontrivial-infsep-anti.md) | 369 | `result-track:199646a7ccac8d9886ebe92b944f362bfa34a2e0c78150d21ea5cfc8c4d155ad` |
| 66 | `theorem` | [infsep_eq_iInf](../../../../GeneralTopology/Infsep.lean/declarations/infsep-eq-iinf.md) | 372 | `result-track:1665f50e7cb19f7fc72d00882790a9233c934e6a25b4aa34fa9d8be0221cc7f8` |
| 67 | `theorem` | [Nontrivial.infsep_eq_iInf](../../../../GeneralTopology/Infsep.lean/declarations/nontrivial-infsep-eq-iinf.md) | 385 | `result-track:75022fcfc20afe3e433c1f370e80104c5ac4112d522402a292fe574f093635a4` |
| 68 | `theorem` | [infsep_of_fintype](../../../../GeneralTopology/Infsep.lean/declarations/infsep-of-fintype.md) | 389 | `result-track:71a002d77e1c3ff2ec67c54213467d254f3661b812f39c83e80fb93e8341ab96` |
| 69 | `theorem` | [Nontrivial.infsep_of_fintype](../../../../GeneralTopology/Infsep.lean/declarations/nontrivial-infsep-of-fintype.md) | 398 | `result-track:ca35987c5c515f0bc7326ee097024133e42f1229e165a94f64c6a475fb4ddefb` |
| 70 | `theorem` | [Finite.infsep](../../../../GeneralTopology/Infsep.lean/declarations/finite-infsep.md) | 402 | `result-track:1fc008f82eae1c5811ea6a2a6d1bf460f3dd6ad524a01bdd442c93a5f6b3eeff` |
| 71 | `theorem` | [Finite.infsep_of_nontrivial](../../../../GeneralTopology/Infsep.lean/declarations/finite-infsep-of-nontrivial.md) | 412 | `result-track:5490b851784545fc624694c2dcf91a8d717d34ae3e839c7956a4b612cc46619a` |
| 72 | `theorem` | [_root_.Finset.coe_infsep](../../../../GeneralTopology/Infsep.lean/declarations/root-finset-coe-infsep.md) | 416 | `result-track:0a7ab0c9bc201906a811d43e0c09c26b159d31477b0f5778cfd2f85c0d4f774b` |
| 73 | `theorem` | [_root_.Finset.coe_infsep_of_offDiag_nonempty](../../../../GeneralTopology/Infsep.lean/declarations/root-finset-coe-infsep-of-offdiag-nonempty.md) | 424 | `result-track:c5b0b2acc95b9f0b406bb17f0b5d707799e5651e5db404b94b58c9bee05453a0` |
| 74 | `theorem` | [_root_.Finset.coe_infsep_of_offDiag_empty](../../../../GeneralTopology/Infsep.lean/declarations/root-finset-coe-infsep-of-offdiag-empty.md) | 428 | `result-track:46758c0f737f71d442941615b78b6d942ecbcec34581304e9925ed305d460a32` |
| 75 | `theorem` | [Nontrivial.infsep_exists_of_finite](../../../../GeneralTopology/Infsep.lean/declarations/nontrivial-infsep-exists-of-finite.md) | 433 | `result-track:4aa4c7f56ba4f6d88b0c1765678d90b0ba913e95e0c62ea946c55c6e1cddbee7` |
| 76 | `theorem` | [Finite.infsep_exists_of_nontrivial](../../../../GeneralTopology/Infsep.lean/declarations/finite-infsep-exists-of-nontrivial.md) | 443 | `result-track:bc8b228abb3678ef48ad6612371559983009ff450568037fcd2871a0a2f96462` |
| 77 | `theorem` | [infsep_zero_iff_subsingleton_of_finite](../../../../GeneralTopology/Infsep.lean/declarations/infsep-zero-iff-subsingleton-of-finite.md) | 454 | `result-track:39842c4442b18a0c243e95bab22080bd508332f2c98cb9fa5598af35696eae10` |
| 78 | `theorem` | [infsep_pos_iff_nontrivial_of_finite](../../../../GeneralTopology/Infsep.lean/declarations/infsep-pos-iff-nontrivial-of-finite.md) | 458 | `result-track:bcace36b5c61a1ecf6dc725540459078651b5cb33b075f867e459bfebb4b3a1f` |
| 79 | `theorem` | [Finite.infsep_zero_iff_subsingleton](../../../../GeneralTopology/Infsep.lean/declarations/finite-infsep-zero-iff-subsingleton.md) | 462 | `result-track:7a2ee00a97a310bb823fdf8e10fe86d824502995fcc3d230eef28273fda925bf` |
| 80 | `theorem` | [Finite.infsep_pos_iff_nontrivial](../../../../GeneralTopology/Infsep.lean/declarations/finite-infsep-pos-iff-nontrivial.md) | 466 | `result-track:75a68efdf463ffb2b1cfda05a25f68d4a622184b10791a44583db994bb1d45be` |
| 81 | `theorem` | [_root_.Finset.infsep_zero_iff_subsingleton](../../../../GeneralTopology/Infsep.lean/declarations/root-finset-infsep-zero-iff-subsingleton.md) | 470 | `result-track:98bb7c9eed58f1148e5db56ad682cc27ce2e88b9268136a08a3bd33364cc6452` |
| 82 | `theorem` | [_root_.Finset.infsep_pos_iff_nontrivial](../../../../GeneralTopology/Infsep.lean/declarations/root-finset-infsep-pos-iff-nontrivial.md) | 474 | `result-track:8d328b7cf8510ad8258366b9adac8898eb8734c2b7b77bcc8b5b90c2e7ee9214` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c358b2902d368971fd704b1381b645803f76708de6db322fa72ac67796e81cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Infsep/Variant61756b28b1e1a61e2f11a1dc82166290b528ddaed15d7e2512fa19d81d0a6330.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Infsep/Variant61756b28b1e1a61e2f11a1dc82166290b528ddaed15d7e2512fa19d81d0a6330.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
