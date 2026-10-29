# Verification target: Monoid Localization Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b83606c1e05621758450a1774bf36496570d96a5",
  "lexical_observation_count": 114,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantc7e88021380b783f1adc7d138d6d26b6ea644f76515810aaca430cdfde333dc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b83606c1e05621758450a1774bf36496570d96a5`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantc7e88021380b783f1adc7d138d6d26b6ea644f76515810aaca430cdfde333dc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantc7e88021380b783f1adc7d138d6d26b6ea644f76515810aaca430cdfde333dc1.lean.json)

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
| 1 | `structure` | [IsLocalizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/islocalizationmap-source-edition-2.md) | 95 | `declaration-track:aa843bc97f682a3efd42350b5e790876b86906d390f2b586a0ad5bf72b814a25` |
| 2 | `structure` | [LocalizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/localizationmap-source-edition-3.md) | 102 | `declaration-track:ba289c84eaab155216b82f1fa4521ca32c9bd367c28022dfe9fe7883dd34d75e` |
| 3 | `structure` | [IsLocalizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/islocalizationmap.md) | 122 | `declaration-track:08bedbaa7bbfa2586aeb58ad5008336f800311c4f287e367cc09ac9d22c604ad` |
| 4 | `structure` | [LocalizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/localizationmap-source-edition-2.md) | 129 | `declaration-track:42e4d362660bd53ef9771cf265969be9cbab91530dc95d269a4ca05d87111ee8` |
| 5 | `def` | [r](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/r-source-edition-2.md) | 153 | `declaration-track:f7dcb487f02bac0eff5e5dd6081f274944331b937b5832b017d220039f2f8cd1` |
| 6 | `def` | [r'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/r.md) | 161 | `declaration-track:9da572c3c21e4980eb7affcfddb961f50b11fa8d62e1ac044675fa8987647658` |
| 7 | `theorem` | [r_eq_r'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/r-eq-r.md) | 187 | `result-track:8b9e75d3534a41548aff98bac9902993d37f7a8e788b1e5807a7b036a65bd5f8` |
| 8 | `theorem` | [r_iff_exists](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/r-iff-exists.md) | 199 | `result-track:4f3835b76aae28cccbd96ba6e9fe797249790c3ee560fb0d2423d5008430368a` |
| 9 | `theorem` | [r_iff_oreEqv_r](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/r-iff-oreeqv-r.md) | 203 | `result-track:cd879beab7dc637f23d81c53b6d29c01cec670257dc7b16094284961470a6b59` |
| 10 | `abbrev` | [Localization](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/localization.md) | 218 | `declaration-track:047d2e3a7647f0305620ac8229202e2246ae67ff0fd4c90bb17ddfed560e0c17` |
| 11 | `def` | [mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk.md) | 229 | `declaration-track:2aba6a3a8c9caba37050e65baa0232119d7af3d904d025fa523de9947295dbfb` |
| 12 | `theorem` | [mk_eq_mk_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-eq-mk-iff.md) | 232 | `result-track:8da84b69b1ecabc9b7fc5c3b8d70a94c5222ce8fd10c9b5a2ad785e6077bf52a` |
| 13 | `def` | [rec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/rec.md) | 244 | `declaration-track:7f648ee22ea285aadca906b54876675f8d6e4692fb23468d4e012c539a07d37a` |
| 14 | `def` | [recOnSubsingleton₂](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/reconsubsingleton.md) | 253 | `declaration-track:e7194226bc4f87d7c031e4198ba1842901dce29f644b5b16107b22879e9048b1` |
| 15 | `theorem` | [mk_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-mul-source-edition-2.md) | 260 | `result-track:cec4cbf21ba2affe0e1b68221eec1b773d02b5c9a716398c6988eaf11dfe9b98` |
| 16 | `theorem` | [mk_one](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-one.md) | 265 | `result-track:8a7359238ecf40b0e2dc67a01c694202d52ae164b82f2f94b06dad140f44a3f4` |
| 17 | `theorem` | [mk_pow](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-pow.md) | 268 | `result-track:47d0b7d9e4575b5862c324d3af2f2653129e76003828ecd64e8d37dfda89271f` |
| 18 | `theorem` | [mk_prod](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-prod.md) | 272 | `result-track:a3327afc8434c54e928a468dd78aba217c2b48ce96486ccc80b098b18571be36` |
| 19 | `theorem` | [ndrec_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/ndrec-mk.md) | 278 | `result-track:cc1a08f0ffa751ee59ab5cbb4f722fd0b8591779e4a40f0418d9e6709e2f258a` |
| 20 | `def` | [liftOn](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/lifton.md) | 288 | `declaration-track:a594140d6e2e601eba036371687593ceedaa2d67ad7eda044de8d48632e3a58b` |
| 21 | `theorem` | [liftOn_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/lifton-mk-source-edition-3.md) | 293 | `result-track:9ab6ce2ce22d255a336b43f57d706e8c9acebf65ae0e5095edd247e3311c54e8` |
| 22 | `theorem` | [ind](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/ind.md) | 297 | `result-track:d8c9aad6427b75490a28e3a5de7e5ebd4645a9d95f4909bf72f3869232a9434f` |
| 23 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/induction-on.md) | 301 | `result-track:449e62f50a5a269de0b2074b3f76451b795724eead02b762a289e9099c5cd56f` |
| 24 | `def` | [liftOn₂](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/lifton-source-edition-2.md) | 311 | `declaration-track:e5217282457e7872bdd5427d4fc1792471963925445fbb6ac7e3bb8fb4ba8748` |
| 25 | `theorem` | [liftOn₂_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/lifton-mk-source-edition-4.md) | 318 | `result-track:b7ae4f914bc86c24f8c5916f012a6e4b3cec437a8438f59d4867a5a6552a6a4a` |
| 26 | `theorem` | [induction_on₂](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/induction-on-source-edition-3.md) | 322 | `result-track:e09135b58ee1f24b8aa92411b8323ac6d2889018ae53b34a3aa8f27821bc737b` |
| 27 | `theorem` | [induction_on₃](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/induction-on-source-edition-2.md) | 327 | `result-track:525793b5146f01af508f0a1215ef12fdfaba82b608d06822410b10e83dbae8e4` |
| 28 | `theorem` | [one_rel](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/one-rel.md) | 332 | `result-track:fc4b7fe313cec4c9e71c50db017b02b98f094aeb8b14f330a761eef9a6196156` |
| 29 | `theorem` | [r_of_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/r-of-eq.md) | 335 | `result-track:acdf3d8bfe85a84ff98e0c1db720f63c60349016595522e829caa76282d769a3` |
| 30 | `theorem` | [mk_self](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-self.md) | 339 | `result-track:1f2ac85fc3e0ab10626ae5381609019941e67999e165edf4d05c11aa2b671bfd` |
| 31 | `lemma` | [mk_self_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-self-mk.md) | 345 | `result-track:22ba96a2f136f471fd1788f5816b42d279e018140acd58f2d2c83819c2c82a21` |
| 32 | `def` | [mkHom](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mkhom.md) | 350 | `declaration-track:2583657276d7042c9d15565f8e4ba04cdf9aecbbd0fb9ad625ae69e50e043461` |
| 33 | `lemma` | [mkHom_surjective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mkhom-surjective.md) | 356 | `result-track:e18ccf3cce86aa64848120f6b142f803cf6b8cffae82be908cc739630107f059` |
| 34 | `theorem` | [smul_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/smul-mk.md) | 362 | `result-track:d2662daa0bcf1bc2a285eef4c4646e7525b7d6c5551ac77ecaf15d6da93ef3bb` |
| 35 | `def` | [toLocalizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/tolocalizationmap.md) | 382 | `declaration-track:54ef13817cb4aed46c6348328549316f970ec83e38add7b6ae54569c9445928f` |
| 36 | `theorem` | [map_one](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/map-one.md) | 397 | `result-track:941137ea8933c17f40b09ad7f7468cf0703d58d674a1a3eb04348d00f143539b` |
| 37 | `theorem` | [mulEquiv_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mulequiv-comp.md) | 402 | `result-track:12d237718ade020e2379e65129c373f1b7ed39276f66a62af19d6e16bcdbdf50` |
| 38 | `abbrev` | [toMonoidHom](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/tomonoidhom.md) | 418 | `declaration-track:6d401d2da0df3d7509187fccbc1638005cc7f8e549a5b3c131c1d478ace8220d` |
| 39 | `theorem` | [toMonoidHom_injective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/tomonoidhom-injective.md) | 423 | `result-track:7942719b9cb1ba6919d0e67e7064fdd73115d4a52850070d115e8d6b0431b924` |
| 40 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 426 | `declaration-track:aa6d10b84d12023c78a5c5c1cb2cc2b58b5098c1a6318ae12a7cbdf65c1b4c93` |
| 41 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 430 | `declaration-track:904b91715e483d37cb472bdd550c852f505f758f57d298d5bc1a05fea2751af3` |
| 42 | `lemma` | [toMonoidHom_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/tomonoidhom-apply.md) | 434 | `result-track:c1b608b96f524f391f7eb6547a107ef7dd6a1f42b254a32f7c50c2f393a8f4d6` |
| 43 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/ext.md) | 438 | `result-track:d9e330cc646d9c6ee59336da11dc096cad6f6f2904164d182d251df562ce1bc3` |
| 44 | `theorem` | [map_units](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/map-units.md) | 441 | `result-track:1027c1e60c2bdee5ba3039b1a2e5a2126497f2babae530128ba50c9f64149f61` |
| 45 | `theorem` | [surj](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/surj.md) | 445 | `result-track:568be26b2a3dfce4c50092d7416df0c7f756f775c00279243635a60e45570bf9` |
| 46 | `theorem` | [exists_of_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/exists-of-eq.md) | 449 | `result-track:5f4b533b8122a83fdca799aec4cd8837f770e8881c4f15d063ad74d0f009fa83` |
| 47 | `theorem` | [surj₂](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/surj-source-edition-2.md) | 457 | `result-track:8fd6562590b739583ee947d6730082d46a44d4563722bca23091eb097b64e07b` |
| 48 | `theorem` | [eq_iff_exists](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/eq-iff-exists.md) | 468 | `result-track:c34003cca44782339ccdbfe24faaec2f28fd109cda4e873b609c090e998b4586` |
| 49 | `def` | [sec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/sec.md) | 480 | `declaration-track:c90c889571d8cdb78c2a816eafc198296e1f0ce06217a93762172ca0f45ba748` |
| 50 | `theorem` | [sec_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/sec-spec-source-edition-2.md) | 483 | `result-track:132830b05692651eea3c0b58bf212d88f47f944d4e8e94824737b45d70b816a7` |
| 51 | `theorem` | [sec_spec'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/sec-spec.md) | 487 | `result-track:10baaa083079bbcea09e6507f5082e9cbf8fbba3134ed39b9b1ffcd405b9ec79` |
| 52 | `theorem` | [mul_inv_left](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mul-inv-left.md) | 495 | `result-track:5bec1202d66e456fb5bba233c14897c59e472ae7a44255a258daedbace369e37` |
| 53 | `theorem` | [mul_inv_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mul-inv-right.md) | 505 | `result-track:194ccb4d6ec117926f58728370d46a17c1ae92a4f9a86270e3b764ad612e2f73` |
| 54 | `theorem` | [mul_inv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mul-inv.md) | 516 | `result-track:f93ae441509039e5fd772742c92fda46ec94313f025b29d8739b855b74b687e9` |
| 55 | `theorem` | [inv_inj](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/inv-inj.md) | 528 | `result-track:5575c2ea5862a53dfe47a74b2c3cc34fac5b45a69c27c9b7f36e261e46591860` |
| 56 | `theorem` | [inv_unique](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/inv-unique.md) | 539 | `result-track:ea290b3905cf5fa34247d32ef5f3212e4ec609a95bfb7fa6747c8b5f103c520c` |
| 57 | `theorem` | [map_right_cancel](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/map-right-cancel.md) | 547 | `result-track:aed60c8cd1b3c94b5af6a1c74f0fd534fb52535547435bd0a3d49638b327713f` |
| 58 | `theorem` | [map_left_cancel](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/map-left-cancel.md) | 555 | `result-track:0271eaf0ebd203d3eba425827d72b1dbbc4bcea9ce44a26552083705093504d4` |
| 59 | `def` | [mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-source-edition-2.md) | 564 | `declaration-track:3260d2c1d07004d9a5e4057b695a8acbcf86866d3839bb44c8efe704839ce0a2` |
| 60 | `lemma` | [mk'_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-mul.md) | 568 | `result-track:85e787e41ba7bbc1978304b1d4cfa0bea2159f582da87f46b0aaa491e5768f34` |
| 61 | `theorem` | [mk'_one](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-one-source-edition-2.md) | 576 | `result-track:acfaf2160bc09c20759bf9664383046819a1b88e63476e8c3a77ab16be276004` |
| 62 | `theorem` | [mk'_sec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-sec.md) | 585 | `result-track:31b60274f5aa2c9fe74cf9efb831cdf36fbb2464e22f3dffc7eca076c046120d` |
| 63 | `theorem` | [mk'_surjective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-surjective.md) | 589 | `result-track:6886b92ed6459e04e8fbea73ce46133363c320061c5e11833cc84a1c8356014c` |
| 64 | `theorem` | [mk'_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-spec.md) | 593 | `result-track:6c847010ff419a5d2daeaca866c841a012ab9ca7d29b7864c1d409303f3619d4` |
| 65 | `theorem` | [mk'_spec'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-spec-source-edition-2.md) | 597 | `result-track:f3949893fc0c1401f595faf0f7cd828b186e3467209ed48518aeb24837cccad4` |
| 66 | `theorem` | [eq_mk'_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/eq-mk-iff-mul-eq.md) | 600 | `result-track:1b018bd1f5ae6942a6c261205ed9cfdee2e322b9e5d15cc6fce41b1a759b1871` |
| 67 | `theorem` | [mk'_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-eq-iff-eq-mul.md) | 604 | `result-track:90fc4af552354e41d54a14969b6d8cf4be387a9ee6993c173968b18470d03984` |
| 68 | `theorem` | [mk'_eq_iff_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-eq-iff-eq.md) | 608 | `result-track:05c4bbc765f1e985d167f0614ed58230ee5d36ccc5e034a04da0f6179e9a6e08` |
| 69 | `theorem` | [mk'_eq_iff_eq'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-eq-iff-eq-source-edition-2.md) | 617 | `result-track:67a43b97652e5d0273ee39835fc2a80894a0d51a3de7d67d982953fcd6431e51` |
| 70 | `theorem` | [eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/eq-source-edition-2.md) | 622 | `result-track:684d078d3037cb54e9e8ff163a3dfbfd4118ea197993680becaf623d077f80da` |
| 71 | `theorem` | [eq'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/eq.md) | 627 | `result-track:30712b4119cb9f102108586a0bbc5e425f4016b1fa5f148f9f08a1e98add177f` |
| 72 | `theorem` | [eq_iff_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/eq-iff-eq.md) | 632 | `result-track:4de3f8d16423826e6fba65ea6e7e45ee3cc1322ccb7863981d279e9d96a1753c` |
| 73 | `theorem` | [mk'_eq_iff_mk'_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-eq-iff-mk-eq.md) | 636 | `result-track:921ca55e8ff508bef37fda0d5190b8a6a2b62e4c2edffbcbde5071f2bf9d1fce` |
| 74 | `theorem` | [exists_of_sec_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/exists-of-sec-mk.md) | 647 | `result-track:0fcf6ce90fcc72471666a5e34bdac0df7ac12ec36a5418b7ec96f8f3b510687c` |
| 75 | `theorem` | [mk'_eq_of_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-eq-of-eq.md) | 652 | `result-track:9dc7b2cf365389e6093dd6cd30baa5c5c06922f7ce33e4b8097a7f20f5b017f4` |
| 76 | `theorem` | [mk'_eq_of_eq'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-eq-of-eq-source-edition-2.md) | 657 | `result-track:b22ac603516ce630dd662c7ca9924bac4635902c406a48e06194b3381adfde51` |
| 77 | `theorem` | [mk'_cancel](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-cancel.md) | 662 | `result-track:627a41f0a4af5c9f255ab80d5993c8d1822b20370aea3125336203d2ccf09f06` |
| 78 | `theorem` | [mk'_eq_of_same](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-eq-of-same.md) | 667 | `result-track:79a2f455b2ddb9f8c8aaa2ff64663d8e16dd2b6b11c2e0b34d1a03a81c984923` |
| 79 | `theorem` | [mk'_self'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-self-source-edition-2.md) | 673 | `result-track:d307dda514e04183fd7d03d9c4cf4bc4d3eef2f64b70d2923a80a3a80d781e3c` |
| 80 | `theorem` | [mk'_self](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-self-source-edition-3.md) | 677 | `result-track:fbc712c2e222cbd4d37a28dc8432a95f07cfa2d06272cb9cf854d97fffe1e9e8` |
| 81 | `theorem` | [mul_mk'_eq_mk'_of_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mul-mk-eq-mk-of-mul.md) | 680 | `result-track:4f510e5007ef378bc6cdc19c60a47d1eea358a921569d8b3196e383fc9d883f4` |
| 82 | `theorem` | [mk'_mul_eq_mk'_of_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-mul-eq-mk-of-mul.md) | 684 | `result-track:38a38696e9d96bea4516d4491f558a9b6f5147c5a79dd118017bfd988ecea679` |
| 83 | `theorem` | [mul_mk'_one_eq_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mul-mk-one-eq-mk.md) | 688 | `result-track:9a75c3cf56f5229c7d2aa7de4fd7cb5493bc18d00ce7113cd7396ec0652dcee4` |
| 84 | `theorem` | [mk'_mul_cancel_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-mul-cancel-right.md) | 692 | `result-track:bd0b9770ca7e408e75e0920c814292c644fbc0efc4a919832e8611a337c260cb` |
| 85 | `theorem` | [mk'_mul_cancel_left](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-mul-cancel-left.md) | 696 | `result-track:f5c213e7273fa8133ba8b9eb5e8a05b48955c17a390ef5df95f2b8407645610a` |
| 86 | `theorem` | [isUnit_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/isunit-comp.md) | 700 | `result-track:7b971453afa89c805b2421dc022982efadc00f38c0ce418b2c16be3d4719c824` |
| 87 | `theorem` | [epic_of_localizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/epic-of-localizationmap.md) | 705 | `result-track:18620f4346cd3851d9aeb38ca02ceaca1e7e03575dbd5b42e6a1ca8c2bb5ad3d` |
| 88 | `def` | [monoidOf](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/monoidof.md) | 724 | `declaration-track:cd2a49ba0d72d694aa2192dc8ede888210593a09f5202a082ae8c8896baf1567` |
| 89 | `theorem` | [mk_one_eq_monoidOf_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-one-eq-monoidof-mk.md) | 736 | `result-track:ad087815182fc6dabc3efc22495b15a94bac2b124f8bf172fd65c296735c1c38` |
| 90 | `theorem` | [mk_eq_monoidOf_mk'_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-eq-monoidof-mk-apply.md) | 739 | `result-track:40a596ae09e50f606c077b89ad76cd946f9e1f14ce6cd4256f20e2238d6dce5e` |
| 91 | `theorem` | [mk_eq_monoidOf_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-eq-monoidof-mk.md) | 748 | `result-track:84d87f33aa780f028cd3588d8a7620311d1970289cd0c4c628eb700bf0b06083` |
| 92 | `theorem` | [liftOn_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/lifton-mk.md) | 754 | `result-track:416fe803b49ec8d45f80e4bb7934802a7d9d63dff42d1527b1a6b6d06fef120b` |
| 93 | `theorem` | [liftOn₂_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/lifton-mk-source-edition-2.md) | 758 | `result-track:741b5cef7895768def622e99de7bd9f46c8760068d8d09872c62133e86a851c2` |
| 94 | `instance` | [instIsMulTorsionFree](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/instismultorsionfree.md) | 764 | `declaration-track:152a5abbda14c7645402ec8fea6daa67983ea616ef2e7d1930e09c7e39e38c37` |
| 95 | `theorem` | [mk_left_injective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-left-injective.md) | 785 | `result-track:e946b83af0e432a2cc885daec25fa81afbf4f0fc808bfdeb946fa019cb8af26a` |
| 96 | `theorem` | [mk_eq_mk_iff'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/mk-eq-mk-iff-source-edition-2.md) | 789 | `result-track:bb5c14446d17bf72bd45f5b140d375173955f0a5a31a59c61c9b7c2e0ef0a692` |
| 97 | `instance` | [decidableEq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/decidableeq.md) | 793 | `declaration-track:3994038f9f91fdae3df62cb2bd461e5c8907d95276790fcde83ff864ab7a34cf` |
| 98 | `def` | [localizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/localizationmap.md) | 803 | `declaration-track:2063c9c807da8d19a35a5b90ef1aa4f37b2522e57d7649b89f0e639066acd47a` |
| 99 | `def` | [equivMonoidLocalization](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/equivmonoidlocalization.md) | 806 | `declaration-track:df22202c18f391c17cb4936c6c68b3d946fb3b3536721e1a81934fe66a3a64e4` |
| 100 | `theorem` | [Submonoid.isLocalizationMap_iff_bijective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/submonoid-islocalizationmap-iff-bijective.md) | 814 | `result-track:ae8f1fd9e3dd4dd4bd2430d7ccf5d1c1f6161e7fdb73685a683438255697a4b9` |
| 101 | `theorem` | [Submonoid.isLocalizationMap_id](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/submonoid-islocalizationmap-id.md) | 830 | `result-track:9f0ad4289eccc5ade51c1c5a2f5e0254c9e41b4280d644c8a8903aefccdb1855` |
| 102 | `theorem` | [Submonoid.isLocalizationMap_of_group](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/submonoid-islocalizationmap-of-group.md) | 834 | `result-track:8700c0de8b894ca19945b64c1bcf7ca0d88af07b94f08eee34efaf1bf9736e06` |
| 103 | `theorem` | [AddSubmonoid.isLocalizationMap_nat_int](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/addsubmonoid-islocalizationmap-nat-int.md) | 841 | `result-track:d7bd16e879018f5ebee6856d3148bf41244a2b048309e7ac7de9b6f0835156dd` |
| 104 | `theorem` | [AddSubmonoid.isLocalizationMap_top_nat_int](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/addsubmonoid-islocalizationmap-top-nat-int.md) | 850 | `result-track:be0520558e8567b160f853599d0685cd65d086385a1cea2d5a147664f560e789` |
| 105 | `theorem` | [injective_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/injective-iff.md) | 860 | `result-track:1a724d404376d52051ec029a54e0f28d2f07d1be7795d3e93e86a0ab1b673d12` |
| 106 | `theorem` | [top_injective_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/top-injective-iff.md) | 866 | `result-track:3c6e8e27c7ff1c72d8837e4e3bb371cc9f816fddd22720c9a645c2ca835ee588` |
| 107 | `theorem` | [map_isRegular](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/map-isregular.md) | 870 | `result-track:4c1e06509775b9d33654ad3a9c6a198c588ccdeaadb265e8b041dad3a856a9e4` |
| 108 | `theorem` | [isCancelMul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/iscancelmul.md) | 883 | `result-track:454bbeba14922e2485d21e73faa04a3f8d98728fbd2d625d42a2735f703782b5` |
| 109 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/instance.md) | 890 | `declaration-track:4f98758d6521d2ec4800bfd01c24a70d8ef5dc4e3b58faee512bb4a66a93b652` |
| 110 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 893 | `declaration-track:d8bd7c63dfc4ba5932911efd0f7903bde3b0616df808bbd48fc1bcc017e5b0ab` |
| 111 | `abbrev` | [cancelCommMonoid](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/cancelcommmonoid.md) | 899 | `declaration-track:94790be99d852c391f737fc3ecc29e68dcc38de3e2832b78d09bcbff72858ae5` |
| 112 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 903 | `declaration-track:ac8b1323cfa618b84e2f42c62fccbcbb1a43c6e139655c41a2630da47d92a9bf` |
| 113 | `theorem` | [subsingleton_of_subsingleton](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/subsingleton-of-subsingleton.md) | 907 | `result-track:24da7789ce2f89e05e7cb8a2131cf3c56351a3b39a330b327c40bd6aa8cc1b4b` |
| 114 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 914 | `declaration-track:997babd87c370ebd3fc2d42d0296bfa0a9efafb88dcf7b58c6cab24f5fc15550` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=267675ceb65ffa152d6b979c1019e1e912363bc0cbbd59b8bd99eb04bea2493d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantc7e88021380b783f1adc7d138d6d26b6ea644f76515810aaca430cdfde333dc1.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantc7e88021380b783f1adc7d138d6d26b6ea644f76515810aaca430cdfde333dc1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
