# Verification target: Normed Space Pi Lp

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c209df2c06fc9e9aaa2bd88046e0495cc0fb56f",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PiLp/Variante279ac8bddaf72380a7116620ff103f18ea79375c6f2ce117b9af6d860ad6d21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c209df2c06fc9e9aaa2bd88046e0495cc0fb56f`.

Source path: `GRWTSK/Topology/MetricTopology/PiLp/Variante279ac8bddaf72380a7116620ff103f18ea79375c6f2ce117b9af6d860ad6d21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PiLp/Variante279ac8bddaf72380a7116620ff103f18ea79375c6f2ce117b9af6d860ad6d21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.MeanInequalities` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Basis` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.WithLp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/macro-rules.md) | 67 | `declaration-track:dc2b3e5f0a5488690f0166e79805af71b5b2e73798a3c142179b04d51bd134cd` |
| 2 | `abbrev` | [PiLp](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/pilp.md) | 77 | `declaration-track:9d18a9f5f65a9b4968de99c594527da79d4ed050f5ba0b68b077123e7e776316` |
| 3 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/instance-source-edition-5.md) | 81 | `declaration-track:adec753baff4177a8502eec59de2378f7211813f04595ba8fa9e458976334067` |
| 4 | `theorem` | [PiLp.ext](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/pilp-ext.md) | 85 | `result-track:63ae9fbeefc4e01acd2e83792f06d0b46cafcc90d76a3341e40ce0fdf43d4fa3` |
| 5 | `theorem` | [_root_.WithLp.equiv_pi_apply](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/root-withlp-equiv-pi-apply.md) | 96 | `result-track:1b300b2a72fe354bc4952b81477f90a2c0ae683da43b9c85eaf8a9ec133c2a9c` |
| 6 | `theorem` | [_root_.WithLp.equiv_symm_pi_apply](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/root-withlp-equiv-symm-pi-apply.md) | 101 | `result-track:5034b99be68d5cde471a05b8afefb7481f75614d58c4c8844cddb0b3da2b616e` |
| 7 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/instance-source-edition-7.md) | 130 | `declaration-track:e73017f6f21a0bd3099ce12d015565ded69e1a336ec6273d4894f14f6aabb6fe` |
| 8 | `theorem` | [edist_eq_card](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/edist-eq-card.md) | 139 | `result-track:2312cd7cdf7ceb247725e8cc572b3cba3d36c2015b590994b7f1966dc5247b5d` |
| 9 | `theorem` | [edist_eq_sum](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/edist-eq-sum.md) | 143 | `result-track:d656db8bb0a9d071731ef5d34e527821388f467898cc4ab248cc1cf6f186cd1e` |
| 10 | `theorem` | [edist_eq_iSup](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/edist-eq-isup.md) | 149 | `result-track:cdd6bbdd7ea33289dc6205ed1df20851a14d11feabae2173dde0002fdc61f3dd` |
| 11 | `theorem` | [edist_self](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/edist-self.md) | 163 | `result-track:935e2796bf5e32f3af44ce2866b9383d881db086708d08b9da536a00aea4acdd` |
| 12 | `theorem` | [edist_comm](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/edist-comm.md) | 172 | `result-track:cc66e8be47fddcfb583b139413709b85500e7da895840d96de2be31f0260fedd` |
| 13 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/instance-source-edition-4.md) | 192 | `declaration-track:9bd9a3d23f4798c46c76695b26eaabbc495fe50ffb4d852ce0b6808cd3202cea` |
| 14 | `theorem` | [dist_eq_card](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/dist-eq-card.md) | 200 | `result-track:a9cdcf24e477386e82cebde6517d0d4fe31714a48702f4a889df9efe6c32a4d3` |
| 15 | `theorem` | [dist_eq_sum](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/dist-eq-sum.md) | 204 | `result-track:c26b7050e5aef8323ece5ecb692288090825ec4fab1b6e1a7914a82b88a0710b` |
| 16 | `theorem` | [dist_eq_iSup](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/dist-eq-isup.md) | 210 | `result-track:db7bf96d356a85143a65dc4c98479e68199d47325609e5f31cd0ae09cdf935e0` |
| 17 | `instance` | [hasNorm](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/hasnorm.md) | 227 | `declaration-track:9e1225e9610789e16b94d77b03181c61c6f5e9a7297f6bd7724bd62478f21398` |
| 18 | `theorem` | [norm_eq_card](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/norm-eq-card.md) | 235 | `result-track:87b8b1d13f96d48783895785ff87302415ae6c70509c1a3e1a861cb58cf16129` |
| 19 | `theorem` | [norm_eq_ciSup](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/norm-eq-cisup.md) | 239 | `result-track:e889b47ef6e368061bed2403f6ce040b2c274120c579d5987185e17bc21a604b` |
| 20 | `theorem` | [norm_eq_sum](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/norm-eq-sum.md) | 244 | `result-track:7743b9c1a46a75d53b6decc42617573b854ff5096fb0e8a5237b219daaeace0e` |
| 21 | `def` | [pseudoEmetricAux](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/pseudoemetricaux.md) | 281 | `declaration-track:308b3384391175380b648d57bd892d37a70d75b00f4c60fac91b96cdbffecfdd` |
| 22 | `theorem` | [iSup_edist_ne_top_aux](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/isup-edist-ne-top-aux.md) | 311 | `result-track:a3a9833b38be7cf1e12ad2d9b0b56da0bd28b4740c88334f6d87839b9a4d397a` |
| 23 | `def` | [pseudoMetricAux](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/pseudometricaux.md) | 330 | `declaration-track:c8010e40bb29cdd7056b36d558bf268db58dbafca7e02a404b1ecbc12a38b121` |
| 24 | `theorem` | [lipschitzWith_equiv_aux](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/lipschitzwith-equiv-aux.md) | 367 | `result-track:bcddb5da9e70aefa146525f3fdcdabf42453938650748ea229dde5303cd0f8e4` |
| 25 | `theorem` | [antilipschitzWith_equiv_aux](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/antilipschitzwith-equiv-aux.md) | 385 | `result-track:c6cb0862c134753886d23bfa01874119d6be0590a0ceca24021d38999f930e3f` |
| 26 | `theorem` | [aux_uniformity_eq](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/aux-uniformity-eq.md) | 416 | `result-track:07949d0e4a0d84496e5e8a821999188ad25f286b37ce655cd95f06fc6d9978d5` |
| 27 | `theorem` | [aux_cobounded_eq](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/aux-cobounded-eq.md) | 425 | `result-track:4180073425f8a23ffeb8f3140542b706738366c3a48c3a156b50435201a1f919` |
| 28 | `instance` | [uniformSpace](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/uniformspace.md) | 438 | `declaration-track:9e9c42043b371fd428dd2ddfb5b5bd4122d083ff68a2dee860ca5c558aa54348` |
| 29 | `theorem` | [uniformContinuous_equiv](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/uniformcontinuous-equiv.md) | 442 | `result-track:62cab30bccae203e093c26b30c1c6d96213754eac2f64c5c37f4e862f81b6fde` |
| 30 | `theorem` | [uniformContinuous_equiv_symm](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/uniformcontinuous-equiv-symm.md) | 447 | `result-track:9de2b5e63f5e480cf0e116b9d3a8c6191fc01d85a6e72cb7dc41348f952f5191` |
| 31 | `theorem` | [continuous_equiv](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/continuous-equiv.md) | 453 | `result-track:a10cfd8c87f28f145488ace5d996dfc2185730732b044fc3e36ba86e31e7a6d1` |
| 32 | `theorem` | [continuous_equiv_symm](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/continuous-equiv-symm.md) | 458 | `result-track:70891e6d08be12044c4395cecd3f23a0bd2b70d112e98558122e9bba5a3a7328` |
| 33 | `instance` | [bornology](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/bornology.md) | 465 | `declaration-track:6dc5c30fae3db5ea6349a5e47a78c125fe753a0778302b811f04a7b60459af4c` |
| 34 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/instance-source-edition-6.md) | 474 | `declaration-track:b528dfad0234813cb225f88e289f3dc0acf735683e170a02773dd77993087b17` |
| 35 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/instance-source-edition-3.md) | 479 | `declaration-track:8357ebe9220180abbe38d0d607ab07d8236dc52ee10d84d82dfc362073a9f10d` |
| 36 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/instance-source-edition-2.md) | 484 | `declaration-track:6ba412ff642300c4df07a46df83d3d4be0ce58aba9be065c11e2b8ac3d1a8e40` |
| 37 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/instance.md) | 490 | `declaration-track:46eca6fe34c5a87e98921e57491d17b310a973f9d111dd7b59c132d8469b3043` |
| 38 | `theorem` | [nndist_eq_sum](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/nndist-eq-sum.md) | 493 | `result-track:033253d340e6657e48cab8f9a28c82fe500103033f0940945b2c712bb8bcc735` |
| 39 | `theorem` | [nndist_eq_iSup](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/nndist-eq-isup.md) | 502 | `result-track:3111782f2c5c7295ff428d00044143f462cfb2a2e446881e473fa5d9b06ef802` |
| 40 | `theorem` | [lipschitzWith_equiv](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/lipschitzwith-equiv.md) | 510 | `result-track:d5bc7c564bd5553d6c445e6f1a2c11ffdf684004f0e6d80cfaca61a1ce1babff` |
| 41 | `theorem` | [antilipschitzWith_equiv](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/antilipschitzwith-equiv.md) | 515 | `result-track:42cfa12d3bf74aaf89f7c6f434d5d134d9947af00a382115ad1e59ab898b1674` |
| 42 | `theorem` | [infty_equiv_isometry](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/infty-equiv-isometry.md) | 520 | `result-track:cd6efa4b94fe5faa75a5b24a4b031d253cc331ebea1896e15871042bdaaeb09f` |
| 43 | `instance` | [seminormedAddCommGroup](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/seminormedaddcommgroup.md) | 531 | `declaration-track:d66c1ba6548fb99be9985bbbc0e146bebd1e8b8681bed3fa4d7ea3a99929ea4b` |
| 44 | `instance` | [normedAddCommGroup](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/normedaddcommgroup.md) | 550 | `declaration-track:c8296997faea9064b152dbe9d2ea542735f252ce88ddac268bafb1c5f841838f` |
| 45 | `theorem` | [nnnorm_eq_sum](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/nnnorm-eq-sum.md) | 555 | `result-track:1f3afc9ed290d18c9d0bde46f96c014159e0c44c7b211fa333e8460478b3464f` |
| 46 | `theorem` | [nnnorm_eq_ciSup](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/nnnorm-eq-cisup.md) | 562 | `result-track:6701c05c86ede3fc0bd240a3a6d17e34ab9565b9a875d95c6c390e004ca22c48` |
| 47 | `theorem` | [norm_eq_of_nat](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/norm-eq-of-nat.md) | 568 | `result-track:81739a9f840e2f7478c0d7930b974e625017259615e8e6c4f2baf9625c398198` |
| 48 | `theorem` | [norm_eq_of_L2](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/norm-eq-of-l2.md) | 576 | `result-track:43e0298e5f24b21606e38dae0048daf051599511d7ea399b66b419dea36eecfd` |
| 49 | `theorem` | [nnnorm_eq_of_L2](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/nnnorm-eq-of-l2.md) | 583 | `result-track:d1963037a595d4a0976afe799b12d9f64fba7a1d894b28727f2b302679ecc3bc` |
| 50 | `theorem` | [norm_sq_eq_of_L2](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/norm-sq-eq-of-l2.md) | 591 | `result-track:547a8934dbd157602cbe884a89948e8fd1fd0ed7dbe7fccee33484097a2f3e96` |
| 51 | `theorem` | [dist_eq_of_L2](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/dist-eq-of-l2.md) | 598 | `result-track:8f6415fabfd2646479ed747de9bc964848acec817dceb20f91872ebbffa215ae` |
| 52 | `theorem` | [nndist_eq_of_L2](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/nndist-eq-of-l2.md) | 604 | `result-track:0e145cc6023742c9c26b0b9e6dbec69d9cae4d19d822434f13455bfeac919415` |
| 53 | `theorem` | [edist_eq_of_L2](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/edist-eq-of-l2.md) | 612 | `result-track:3aeecf6f3d0ce08941527f3768870faa288a3af32a966d09554a1a0ade0f5027` |
| 54 | `instance` | [normedSpace](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/normedspace.md) | 619 | `declaration-track:c9819208e7791ebfb3971e8b629394d44ad176ca8ed3d0a3793ffb0c014c3e38` |
| 55 | `theorem` | [zero_apply](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/zero-apply.md) | 646 | `result-track:84d99cf561e511cbebbd0518b61f57737eedc4f9ec18c9d5e2d1701d021004b5` |
| 56 | `theorem` | [add_apply](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/add-apply.md) | 651 | `result-track:980b4aede8d2a07d7cef736371b98f4623c36675e29cacc57ac9c5efa1b5ad5f` |
| 57 | `theorem` | [sub_apply](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/sub-apply.md) | 656 | `result-track:8ed00aade935844ab7a8e90dcb16e71969f85ab7685dd99e9f29a8efcf821c00` |
| 58 | `theorem` | [smul_apply](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/smul-apply.md) | 661 | `result-track:430b4bc2b459647a358485cc00d4d556c06164308b3f55c94cd646fa13ddad12` |
| 59 | `theorem` | [neg_apply](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/neg-apply.md) | 666 | `result-track:f27a8061f4e12a99a19312146da79ff3e5fe20e69c9ffb2479cb62b6c8d75b52` |
| 60 | `def` | [equivₗᵢ](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/equiv.md) | 672 | `declaration-track:750c7924515d9ef38560eb143ba3b5d7f3fc484a1a5fff195ab5e9612cafe9c6` |
| 61 | `def` | [_root_.LinearIsometryEquiv.piLpCongrLeft](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/root-linearisometryequiv-pilpcongrleft.md) | 696 | `declaration-track:f5e87d1dea542846f8d20ab31ffcf757a001ec9d52bd61d21939b7358dc9e6df` |
| 62 | `theorem` | [_root_.LinearIsometryEquiv.piLpCongrLeft_apply](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/root-linearisometryequiv-pilpcongrleft-apply.md) | 713 | `result-track:fe79e67611f393c057f981244690521110d7d77f5c73a414a20334b31b1789d3` |
| 63 | `theorem` | [_root_.LinearIsometryEquiv.piLpCongrLeft_symm](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/root-linearisometryequiv-pilpcongrleft-symm.md) | 719 | `result-track:24768f0389066f2e9b0d078b26ab14b865a8faef8c7d4831b574e2789c47db13` |
| 64 | `theorem` | [_root_.LinearIsometryEquiv.piLpCongrLeft_single](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/root-linearisometryequiv-pilpcongrleft-single.md) | 732 | `result-track:c298959a73c71bbe09d496feec02072dc685d78c0ceac747c2e2309b954049aa` |
| 65 | `theorem` | [nnnorm_equiv_symm_single](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/nnnorm-equiv-symm-single.md) | 749 | `result-track:020bf3ed8683b1d990d917ab90636acdc23217d6d12d0eb19b894c6084ef72ae` |
| 66 | `theorem` | [norm_equiv_symm_single](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/norm-equiv-symm-single.md) | 773 | `result-track:c80b5f9c61ad72a55e5f6bcb1bcb707ba9b2367499095909ff3dc5543cff9bdb` |
| 67 | `theorem` | [nndist_equiv_symm_single_same](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/nndist-equiv-symm-single-same.md) | 779 | `result-track:2b52093ac52be5fae5fa8d3d01758d68154b2eb82551832a13037a488d6901b6` |
| 68 | `theorem` | [dist_equiv_symm_single_same](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/dist-equiv-symm-single-same.md) | 789 | `result-track:99c1f376aa272e6ed1c2cc4b78da9e7bc8543c201c5e152ec649cb63ecb3cdcf` |
| 69 | `theorem` | [edist_equiv_symm_single_same](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/edist-equiv-symm-single-same.md) | 798 | `result-track:82b5a3cb7c5bc24cdbe4d880746d690979a9d0609fc7aa7efc8249f121c8a341` |
| 70 | `theorem` | [nnnorm_equiv_symm_const](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/nnnorm-equiv-symm-const-source-edition-2.md) | 813 | `result-track:fc56b80f7b9ae299728941ab4d10683ee59800980ebeb1d751c9c03a80d0aa3f` |
| 71 | `theorem` | [nnnorm_equiv_symm_const'](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/nnnorm-equiv-symm-const.md) | 828 | `result-track:c42a264591f121213c0a1bfcf0d869e34296d9ce8d544665054d7908129ea89e` |
| 72 | `theorem` | [norm_equiv_symm_const](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/norm-equiv-symm-const-source-edition-2.md) | 842 | `result-track:9db121145f93a45952240c5bf62c93dc9c6d0d571c8e4b44b32e0c6344d597fa` |
| 73 | `theorem` | [norm_equiv_symm_const'](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/norm-equiv-symm-const.md) | 852 | `result-track:495598c8f0b7ef89f9092eaea771a2d53754ce4c94ba7b4a81d0536a6c41a68a` |
| 74 | `theorem` | [nnnorm_equiv_symm_one](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/nnnorm-equiv-symm-one.md) | 858 | `result-track:ae8111378889af9aba6ca60d1bb7ed51486bf375921e1e2b061785406e923aeb` |
| 75 | `theorem` | [norm_equiv_symm_one](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/norm-equiv-symm-one.md) | 864 | `result-track:9a97fda5c129eb08fb8111d4c4d57dd00e5760dd7023826de86090eebd85f770` |
| 76 | `def` | [continuousLinearEquiv](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/continuouslinearequiv.md) | 873 | `declaration-track:ad14f266bcae6a6a56dedfbcfd007299513e8fee301d5d5039df97e3c446cb05` |
| 77 | `def` | [basisFun](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/basisfun.md) | 884 | `declaration-track:29f528369a9ae38763e7e7ecdcc58a78f862f4e0eaf70260be66b0a17da750a6` |
| 78 | `theorem` | [basisFun_apply](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/basisfun-apply.md) | 889 | `result-track:71f68de5f38f09d7ae912b504a2405de18636e04952051ade8059a983fbe06a5` |
| 79 | `theorem` | [basisFun_repr](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/basisfun-repr.md) | 895 | `result-track:383e9148015519bb809350716b9b842da77bd0c576f5fdd472c7a4d73bf61311` |
| 80 | `theorem` | [basisFun_equivFun](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/basisfun-equivfun.md) | 900 | `result-track:84c06c99aa4b39dd3d06d329a6df50b54f8af4db10528c39b1169e2bca693ac1` |
| 81 | `theorem` | [basisFun_eq_pi_basisFun](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/basisfun-eq-pi-basisfun.md) | 904 | `result-track:8237eb817fcf046f1cce301c95202bfbd7e208b90615ea13e067665c2f543e1d` |
| 82 | `theorem` | [basisFun_map](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/basisfun-map.md) | 910 | `result-track:39370a339be49fc81bf2f5d81eda0f1cd113480f186aa82c334f1311908141ff` |
| 83 | `theorem` | [basis_toMatrix_basisFun_mul](../../../../FunctionalAnalysis/NormedSpacePiLp.lean/declarations/basis-tomatrix-basisfun-mul.md) | 917 | `result-track:f17adf81a9dc8558a54aee4ad6cdd83280cc36efea7511e110ef5b749dde2e69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e79ef0c8bf18dff4680b5ba20443a16061963dbbbcc5f6231fd29611931927d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/PiLp/Variante279ac8bddaf72380a7116620ff103f18ea79375c6f2ce117b9af6d860ad6d21.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/PiLp/Variante279ac8bddaf72380a7116620ff103f18ea79375c6f2ce117b9af6d860ad6d21.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
