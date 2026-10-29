# Verification target: Affine Add Torsor Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a44b15e4d454c7518f920eca5c3441ea56d961e6",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/AddTorsor/Variant6113a1be6b8d640412de26e57eda798790ef53c526ebe380125818a80278591c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a44b15e4d454c7518f920eca5c3441ea56d961e6`.

Source path: `GRWTSK/Topology/MetricTopology/AddTorsor/Variant6113a1be6b8d640412de26e57eda798790ef53c526ebe380125818a80278591c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/AddTorsor/Variant6113a1be6b8d640412de26e57eda798790ef53c526ebe380125818a80278591c.lean.json)

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
| 1 | `theorem` | [dist_homothety](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-homothety.md) | 47 | `result-track:9feb94230300eafdccba4ef74dd51d521e80a47d76a79b9fb6cf69f67c3214af` |
| 2 | `theorem` | [nndist_homothety](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-homothety.md) | 52 | `result-track:9ee2f75fd63fd59559ed7fb31203d7c7aa71a49d767cc4c64c88f2e83f8ef92f` |
| 3 | `theorem` | [lipschitzWith_homothety](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/lipschitzwith-homothety.md) | 56 | `result-track:7a112632f445d75312cadd73206474005f62fb5e7e0aaa86c2cebad4f6e672e0` |
| 4 | `theorem` | [dist_center_homothety](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-center-homothety.md) | 60 | `result-track:1c42ab27cb7776622ebd53fc83a1d94308521aa860be9325b385db40ca441677` |
| 5 | `theorem` | [nndist_center_homothety](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-center-homothety.md) | 65 | `result-track:4e1fc97736dd79d80fadd1e78f26c39844e066577124425a6eec36d1752edb9c` |
| 6 | `theorem` | [dist_homothety_center](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-homothety-center.md) | 70 | `result-track:4dd0307576408bed04244b3629f46df503006d1a27903f27f0ca0e593d4b4f12` |
| 7 | `theorem` | [nndist_homothety_center](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-homothety-center.md) | 74 | `result-track:c911bd33916796573ae48748c734fc7a33b216f89ff37c0447ee68041137c3b3` |
| 8 | `theorem` | [dist_lineMap_lineMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-linemap-linemap.md) | 79 | `result-track:fb424a607c2b65445ded402554d92ef3845f5704c84555501ecf52db8b7caa5a` |
| 9 | `theorem` | [nndist_lineMap_lineMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-linemap-linemap.md) | 86 | `result-track:d8aecdba4a6baab712923b01ad6a90ff8459f84d07b716501139305140abc63f` |
| 10 | `theorem` | [lipschitzWith_lineMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/lipschitzwith-linemap.md) | 90 | `result-track:1c6ffa0f8e4d1af9a3bfb8733341460b0a014df2040efd0ddf4b42680baba4fe` |
| 11 | `theorem` | [dist_lineMap_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-linemap-left.md) | 95 | `result-track:14ec70d1d184f4481136d6e130edbb34729d322b3261f9bade73efbb552a69b2` |
| 12 | `theorem` | [nndist_lineMap_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-linemap-left.md) | 99 | `result-track:424a2f95d784df61de859b7992441c0280002f3b5df2dbab6abfd861f1cc7663` |
| 13 | `theorem` | [dist_left_lineMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-left-linemap.md) | 104 | `result-track:2f90275f4cba9def8b4e3a602b39e41fd22b62289f8719739f6519e12f19d840` |
| 14 | `theorem` | [nndist_left_lineMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-left-linemap.md) | 108 | `result-track:e98b1cb0b4a5e2003fd32712e6ff98c0e48234dfde5f7c57f50c55e81dd7bb39` |
| 15 | `theorem` | [dist_lineMap_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-linemap-right.md) | 113 | `result-track:f720444e2fb1fac3192d411713d082bbe29ba670306962e7cd55e2da374ed44a` |
| 16 | `theorem` | [nndist_lineMap_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-linemap-right.md) | 118 | `result-track:dfd69ae63d6b1498f670de2fcf873c05c82343708b0762666bad50d5986b14ab` |
| 17 | `theorem` | [dist_right_lineMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-right-linemap.md) | 123 | `result-track:97dd3d5b2304a6ae22ee9646dae54237e36b63c4673af43a31c61f3428fca85d` |
| 18 | `theorem` | [nndist_right_lineMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-right-linemap.md) | 127 | `result-track:94d20bac7c0e1e9f74ecddf366b0cfc63f9b82a78e86d57ec5f5219dfe236abe` |
| 19 | `theorem` | [dist_homothety_self](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-homothety-self.md) | 132 | `result-track:d172a3afd2cc06d019d2b5156eb5c09191edaff213dba8f8ec79d7bfbd0f671a` |
| 20 | `theorem` | [nndist_homothety_self](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-homothety-self.md) | 137 | `result-track:e1b8db11e01d82f518ceab50e36d2e4630f5a41272e6da40336c5ae5458bd4f4` |
| 21 | `theorem` | [dist_self_homothety](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-self-homothety.md) | 142 | `result-track:0a31e61f88e0cc1ff3e79038f930a4a7f1250a7175887a1b2109ea819b37c8fb` |
| 22 | `theorem` | [nndist_self_homothety](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-self-homothety.md) | 146 | `result-track:fd027089addb21003b10905dfe5adc004b80352e368b386ea3d99e99bb6b5b76` |
| 23 | `theorem` | [dist_left_midpoint](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-left-midpoint.md) | 155 | `result-track:56a2139511054856e6ddf1d82d410e9d9482ddafdbc3c08565d9e153d3d1d531` |
| 24 | `theorem` | [nndist_left_midpoint](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-left-midpoint.md) | 159 | `result-track:38e893812cd303a02dc095c1b62f65b8b9c84d9527c9e08e6a6d1cbfacf96bec` |
| 25 | `theorem` | [dist_midpoint_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-midpoint-left.md) | 164 | `result-track:8058c56abc2dc065f2ab9d86f1f184e4b4fffa52157365f33009c37d09f6f7bf` |
| 26 | `theorem` | [nndist_midpoint_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-midpoint-left.md) | 168 | `result-track:951ef5c60ecb710647dac883b0afad5d490e2ef10e09f1d1fd2f517ecb98aeeb` |
| 27 | `theorem` | [dist_midpoint_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-midpoint-right.md) | 173 | `result-track:935a50f016eb9c603c9563a9ec86e2247a0da7c7fab747a46d3d324c6bcfe36f` |
| 28 | `theorem` | [nndist_midpoint_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-midpoint-right.md) | 178 | `result-track:fab0f80b541d6d0bd7493b950c796b22d2134038c344c9b3c3cc2f2a4c3811f1` |
| 29 | `theorem` | [dist_right_midpoint](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-right-midpoint.md) | 183 | `result-track:52745001d689f4ce097758e6f5dda212e50dd957ce16134153e8a259341fa6bc` |
| 30 | `theorem` | [nndist_right_midpoint](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-right-midpoint.md) | 188 | `result-track:44d9672e262f6ee7887f89433d0bf587bf41f4ceb322e8d4981fa53c1708ac4a` |
| 31 | `theorem` | [dist_left_midpoint_eq_dist_right_midpoint](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-left-midpoint-eq-dist-right-midpoint.md) | 193 | `result-track:a40cb37b7f278781226367f75e8e96b9704e40de3ba0f6d73f023fcd68369a28` |
| 32 | `theorem` | [dist_midpoint_midpoint_le'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-midpoint-midpoint-le.md) | 197 | `result-track:4a9e25a3a40a84b5166c0639a83bf4e8c1969c3f86e2f7b6b2082be547d2c19d` |
| 33 | `theorem` | [nndist_midpoint_midpoint_le'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-midpoint-midpoint-le-source-edition-2.md) | 203 | `result-track:5ccfe7e989c800644aa670ba1848edf7126e90fb4562479092817f1d0bfcb86f` |
| 34 | `theorem` | [dist_pointReflection_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-pointreflection-left.md) | 209 | `result-track:8fe79b69dbb30a598333224e47c94fa93ecbd5ed948df06d93bf122e2e093cd7` |
| 35 | `theorem` | [dist_left_pointReflection](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-left-pointreflection.md) | 213 | `result-track:d50a63806e10ad6d86d90683efe55c312cdf8639e230d2ff99d076960472b875` |
| 36 | `theorem` | [dist_pointReflection_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-pointreflection-right.md) | 218 | `result-track:5f8911b85d97d48ec3da938820676a677f0ca3541e612a077ab50a94016ea227` |
| 37 | `theorem` | [dist_right_pointReflection](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-right-pointreflection.md) | 224 | `result-track:f8a5d9f74a1bf65517fb052bbfb9d68f12f4656acad9954c60c4670b5e8220ed` |
| 38 | `theorem` | [antilipschitzWith_lineMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/antilipschitzwith-linemap.md) | 228 | `result-track:d90ce92338e007eb478f143d7747de7635d08b85f7a0e3d2d080585b7f1c4ac7` |
| 39 | `theorem` | [dist_midpoint_midpoint_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dist-midpoint-midpoint-le-source-edition-2.md) | 238 | `result-track:f3dc609009bfcf93f5da996fcb7e0fe1d9f9b761f771c86c24b324241014f115` |
| 40 | `theorem` | [nndist_midpoint_midpoint_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/nndist-midpoint-midpoint-le.md) | 242 | `result-track:389d6447989740bfa42c7f6cdfa82742ede1fa5a88e0e22ea606a78810e0775c` |
| 41 | `def` | [AffineMap.ofMapMidpoint](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/affinemap-ofmapmidpoint.md) | 248 | `declaration-track:67a0cc1bec5b317a31cf0383ef017467121db0a4914c2ce2a258418a7c2adee6` |
| 42 | `def` | [DilationEquiv.smulTorsor](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dilationequiv-smultorsor.md) | 270 | `declaration-track:d687e629bd2c2863b76b2bf96094a37e2e2aa104e8e2fbe3b5ea671500320506` |
| 43 | `lemma` | [DilationEquiv.smulTorsor_ratio](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dilationequiv-smultorsor-ratio.md) | 280 | `result-track:bf002e54d04f5c9ddfe3bd51e24a5c88df96597dd7d2bcc17179b88fe16f8896` |
| 44 | `lemma` | [DilationEquiv.smulTorsor_preimage_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorNamespacedPublic.lean/declarations/dilationequiv-smultorsor-preimage-ball.md) | 285 | `result-track:a4cde995e31e8258084bd5335e8a489240eca6fb46bcfd2884d8077a404e716d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6c2bf7efad7fba7e0f37fd882b0cac1ed066b04377c293c5e124039aff1b852 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/AddTorsor/Variant6113a1be6b8d640412de26e57eda798790ef53c526ebe380125818a80278591c.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/AddTorsor/Variant6113a1be6b8d640412de26e57eda798790ef53c526ebe380125818a80278591c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
