# Verification target: Partial Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fedf617b598a6b3213f983fd2544427d9fe6ae1",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variant1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fedf617b598a6b3213f983fd2544427d9fe6ae1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variant1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variant1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.DirectLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Ideal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartialEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/partialequiv.md) | 49 | `declaration-track:36f9df9edf5eb638dfaf888d887a9dd2182f7b47f7c7b959fa8f0754b5416f0d` |
| 2 | `instance` | [instInhabited_self](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/instinhabited-self.md) | 65 | `declaration-track:1f8934a4bbb8a780d172b25fc297bd164090e1210586750db7c62ce9e1769f01` |
| 3 | `def` | [symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/symm.md) | 69 | `declaration-track:aa25154bc4d35ae10d0290916aefcd04b2617ddeb9992c6b1d52b415751bd831` |
| 4 | `theorem` | [symm_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/symm-symm.md) | 75 | `result-track:5cd3154f5be103c43fffaea01f2a0059dc5d48bacac593dc82292b6779bc1052` |
| 5 | `theorem` | [symm_bijective](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/symm-bijective.md) | 78 | `result-track:ce4f0b97438c9ac074542bfdfba030c02e9051b1a54bc4d272c6ef7c39499e45` |
| 6 | `theorem` | [symm_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/symm-apply.md) | 82 | `result-track:e0860323a30ef11e4fa93bc853aa9bc30dd2ff0069973f1ca46f3f98c9d5d07b` |
| 7 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/instance-source-edition-3.md) | 85 | `declaration-track:83695dd5cfcc3e9b49d12431aa4a98a50e09f79e8b9ce6eb25c39d1c12b89366` |
| 8 | `theorem` | [le_def](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/le-def.md) | 90 | `result-track:eaeacedd1bd00538b25ae900aaca144a1b03b1cb589d6e69dc5ffc54d71c9128` |
| 9 | `theorem` | [dom_le_dom](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/dom-le-dom.md) | 95 | `result-track:a48014e4cbd921b43525c6115bbd6e10f087ef48ed0f8223b42545da60cfc8c2` |
| 10 | `theorem` | [cod_le_cod](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/cod-le-cod.md) | 97 | `result-track:31891003eaa26b1c11f1b6bae09ed9db8c91286926c04ce3cf5ece8f47d799e0` |
| 11 | `theorem` | [subtype_toEquiv_inclusion](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/subtype-toequiv-inclusion.md) | 106 | `result-track:41fd827226b3bf5a12db0845990b350bfd9eeb61ba4e45a0e2db81cd29092293` |
| 12 | `theorem` | [toEquiv_inclusion](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/toequiv-inclusion.md) | 111 | `result-track:65295f4f2cad592af3aaeb515c8ffe15a9932cb467b51fe52f874770cef27739` |
| 13 | `theorem` | [toEquiv_inclusion_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/toequiv-inclusion-apply.md) | 118 | `result-track:ea16703ed40576326e9574736b66d040ed1a07512fd8ea079d114f8cb491a8fc` |
| 14 | `theorem` | [le_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/le-iff.md) | 126 | `result-track:c8c0297bb0c313c1e17e35ffc861dce5b0cdc8a68459ce723fc69a4b94f1fde1` |
| 15 | `theorem` | [le_trans](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/le-trans.md) | 137 | `result-track:c3598e9cef8e689b68ac1a90a96f2973609c9c8d70bed7ef352fbb37152fe464` |
| 16 | `theorem` | [le_refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/le-refl.md) | 144 | `result-track:586ebcb63759f0bec3c7429be663708339b209131f4ea40ebc719c48101f87b2` |
| 17 | `theorem` | [le_antisymm](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/le-antisymm.md) | 146 | `result-track:afb98468de8b94f2c2bf7b77827243e55e487989cae75d79062e8df216ee09fb` |
| 18 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/instance-source-edition-2.md) | 153 | `declaration-track:4a945ed55d341e3f98c31bfb8d07029c432576e540e014d9bc380bc373b07203` |
| 19 | `lemma` | [symm_le_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/symm-le-symm.md) | 158 | `result-track:7a2a54be31f8509c4898bc08532ea19f9720c41b6d500735e6b6f53a5ce8eb21` |
| 20 | `theorem` | [monotone_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/monotone-symm.md) | 168 | `result-track:9d16a7b3d61141f41e552cf553066fa4cf45cf000604cd65a6537ea957e6b474` |
| 21 | `theorem` | [symm_le_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/symm-le-iff.md) | 170 | `result-track:1641832854761064c8575347a991d2ad3e8c125c2fab727db832b233f42ded7b` |
| 22 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/ext.md) | 174 | `result-track:960870cab052cdab77b3209326e38ef43fc3ff4ca3a42eadf20cbff55e79af26` |
| 23 | `theorem` | [ext_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/ext-iff.md) | 183 | `result-track:a79309ae90c2d5e3ee5752e4a2a42752f95b58be76380d64988a97d02dcd2185` |
| 24 | `theorem` | [monotone_dom](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/monotone-dom.md) | 193 | `result-track:d59af17f0908f4112dca13a7033f7c0d66891ecbb9105478ba805a2c56190d90` |
| 25 | `theorem` | [monotone_cod](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/monotone-cod.md) | 195 | `result-track:cacba0cda5df90a054ffa77e10d1fa8199d8366b711f1c03cd375dd311844956` |
| 26 | `def` | [domRestrict](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/domrestrict.md) | 198 | `declaration-track:723612584bcd4d98bb10a3b9f25ed59d61f0ecbe227559e478a065ef684914b8` |
| 27 | `theorem` | [domRestrict_le](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/domrestrict-le.md) | 207 | `result-track:201eadfd2cadad3c269e45d5e94abb0065ea0dfaff3878874f5a574c05f6cc75` |
| 28 | `theorem` | [le_domRestrict](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/le-domrestrict.md) | 210 | `result-track:c1f0d2d08548bc87471e62ce91750fe6261b936971f9333d52a60b7aae1f05cc` |
| 29 | `def` | [codRestrict](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/codrestrict.md) | 215 | `declaration-track:358c60a9c475b9c25ac0c25dd0e6320963f639b5ece2c68848e4487fe792aee6` |
| 30 | `theorem` | [codRestrict_le](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/codrestrict-le.md) | 219 | `result-track:cf6e2e24fedcc8743bfec6d73a390c5dfa06f2182ce90de3b09cb7f2b225424b` |
| 31 | `theorem` | [le_codRestrict](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/le-codrestrict.md) | 223 | `result-track:836b89ef773ddc5b6ba8776746c6478011e62ebde3a8ce763bb465ca599cd877` |
| 32 | `def` | [toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/toembedding.md) | 228 | `declaration-track:95bc8589aab8c943ce0d857c56b959dfb5f344fe18164e95860be16c61184b66` |
| 33 | `theorem` | [toEmbedding_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/toembedding-apply.md) | 232 | `result-track:e133dad75a95d9bf9dd71e566f18de38bb1f3549858a8d14d1779c37d2b07395` |
| 34 | `def` | [toEmbeddingOfEqTop](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/toembeddingofeqtop.md) | 238 | `declaration-track:ef2b3d422567f003816e9b2ae7aea4a306651f82b7744a9fef20526e4a5b68b0` |
| 35 | `theorem` | [toEmbeddingOfEqTop_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/toembeddingofeqtop-apply.md) | 242 | `result-track:71fe80cb692097aac63e3e1171507926bc674db7f21fba18d7a1a72bd123b5b9` |
| 36 | `def` | [toEquivOfEqTop](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/toequivofeqtop.md) | 253 | `declaration-track:0615af01d19090bef3aacd39e34df3b96ae1e290e0c80e0f6e004fe5d6260ff2` |
| 37 | `theorem` | [toEquivOfEqTop_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/toequivofeqtop-toembedding.md) | 258 | `result-track:2d1977a442481845b977232ab5d0f94ed5c916126fa79942301c66a480fb28db` |
| 38 | `theorem` | [dom_fg_iff_cod_fg](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/dom-fg-iff-cod-fg.md) | 266 | `result-track:103f0e2e40d326ca0118ea7be2473c97586157410d40257e8d95b0fc8dfbf0ab` |
| 39 | `def` | [toPartialEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/topartialequiv.md) | 275 | `declaration-track:f8b62745769563189eb293f7ddea1357c15da45a78c92121ce28d60b5610bf98` |
| 40 | `theorem` | [toPartialEquiv_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/topartialequiv-injective.md) | 278 | `result-track:36679ecaf9f89301ed3a0c19c3039f396deb9e2baf1daac967298117f922158e` |
| 41 | `theorem` | [toEmbedding_toPartialEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/toembedding-topartialequiv.md) | 287 | `result-track:7ccd6067cef6e718cf1554a48c38bde5c05ffc34495ab120c9c7c1cd513805bd` |
| 42 | `theorem` | [toPartialEquiv_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/topartialequiv-toembedding.md) | 292 | `result-track:1151a443bbdc1dd8f77d80a8f8f4e251448fc9197fe40806873491d83682761e` |
| 43 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/instance-source-edition-4.md) | 310 | `declaration-track:bb9e8999a5192a2e7b444efa32cb898649c7a51bddc83066f685749e43b60cf4` |
| 44 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/instance.md) | 315 | `declaration-track:35dcd701b6ddee2415b0ab46338c561fe2240a2caa4230852904042adec5b976` |
| 45 | `def` | [partialEquivLimit](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/partialequivlimit.md) | 321 | `declaration-track:dd2dcaa637f2a3b3fa8e40eb1ad1390d6c0bf190ad11c8f8f8605884d150ba05` |
| 46 | `theorem` | [dom_partialEquivLimit](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/dom-partialequivlimit.md) | 341 | `result-track:d2de98de5d0da082a0badaaca32693f81da20972ae2696a0822eff3c6997bb89` |
| 47 | `theorem` | [cod_partialEquivLimit](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/cod-partialequivlimit.md) | 344 | `result-track:ca34158a74c8bfe47b3dad48d2d60945a7526d86cc7ebaf01ef11f7b501608a9` |
| 48 | `lemma` | [partialEquivLimit_comp_inclusion](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/partialequivlimit-comp-inclusion.md) | 347 | `result-track:7f2f39592afd10e13858f88a2edefb52ce495269522a38bb172b3c0d5533aafc` |
| 49 | `theorem` | [le_partialEquivLimit](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/le-partialequivlimit.md) | 354 | `result-track:6c4302db38d8d81dc77a28ac89ca213532f9fca87b6a92c1ffe14cf9c5be3a9a` |
| 50 | `abbrev` | [FGEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/fgequiv.md) | 371 | `declaration-track:4027fb255972d04425b994a7f4827823c01e6b698b97e07f1e0a58e73a1a73c4` |
| 51 | `def` | [IsExtensionPair](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/isextensionpair.md) | 375 | `declaration-track:3d65ed009cec2e1f746dfcdea94d57e4a0d08d664a3ddfad35b060aa7f6e36ac` |
| 52 | `theorem` | [countable_self_fgequiv_of_countable](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/countable-self-fgequiv-of-countable.md) | 379 | `result-track:10e891402e60d52c63d109d9c3eaf8e2b9a0a050f279e9f5cb5fcee46f0b1294` |
| 53 | `instance` | [inhabited_self_FGEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/inhabited-self-fgequiv.md) | 396 | `declaration-track:9bfa6a423b32db466e0fa8f06e4a500bab39bab26c0d45fade2f2293635d28c9` |
| 54 | `instance` | [inhabited_FGEquiv_of_IsEmpty_Constants_and_Relations](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/inhabited-fgequiv-of-isempty-constants-and-relations.md) | 399 | `declaration-track:309f3e2c73f51c4ebf2570b78577e92c4ae407504bed7a6999962bccb02a4533` |
| 55 | `def` | [FGEquiv.symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/fgequiv-symm.md) | 419 | `declaration-track:a40d18841f97828850171f458ebb90f9979b556ae68cba987052acf15b96245b` |
| 56 | `lemma` | [isExtensionPair_iff_cod](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/isextensionpair-iff-cod.md) | 421 | `result-track:dea7a2a5775d6fd670a89ff374325f9c7ea80004dc6e336c8741f0e7d5a26e2a` |
| 57 | `theorem` | [isExtensionPair_iff_exists_embedding_closure_singleton_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/isextensionpair-iff-exists-embedding-closure-singleton-sup.md) | 430 | `result-track:7e445cd07e1544f468354fa8d26597e52a45ff1d7f81adff5a7d95d464371087` |
| 58 | `def` | [definedAtLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/definedatleft.md) | 458 | `declaration-track:741f84afb51a9424f2a2b71e32af401564283f8ee805203b7a39118efe75351b` |
| 59 | `def` | [definedAtRight](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/definedatright.md) | 464 | `declaration-track:31589d8924e81b90ff19843fd4ecf6835d35061d8b9dec6715c375b32d0dbf11` |
| 60 | `theorem` | [embedding_from_cg](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/embedding-from-cg.md) | 474 | `result-track:0ec8fc9e0f30455e159a3337241b14c370d6e97d915cb87e93f031e83f1fda23` |
| 61 | `theorem` | [equiv_between_cg](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/declarations/equiv-between-cg.md) | 497 | `result-track:0331369a095183f7e3fa57dac0f925e5c92e6478bc1059f2afbcd5499a118694` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc4ce5e8ecc6bc02fa147bd53aca2f547c5b7dd0ef151781121fbd498bbc0aff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variant1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variant1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
