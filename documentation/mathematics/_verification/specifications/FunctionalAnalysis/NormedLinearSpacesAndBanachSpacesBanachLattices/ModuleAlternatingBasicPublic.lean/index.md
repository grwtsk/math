# Verification target: Module Alternating Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52e68a3388580c4af7defad23b8085005083cc20",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52e68a3388580c4af7defad23b8085005083cc20`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean.json)

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
| 1 | `instance` | [ContinuousAlternatingMap.instContinuousEval](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/continuousalternatingmap-instcontinuouseval.md) | 47 | `declaration-track:c028b5f427c01a5972eefdf5300b551118d713bfe406ae24995567d0898a4733` |
| 2 | `theorem` | [norm_map_coord_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/norm-map-coord-zero.md) | 77 | `result-track:6a7a073c84709b7a91fb51e1e841e06b8af020c888b4e925e12a4bfc76394882` |
| 3 | `theorem` | [bound_of_shell_of_norm_map_coord_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/bound-of-shell-of-norm-map-coord-zero.md) | 92 | `result-track:fa7afc4a214433e7cd53119aebae1203cea152cf8d6bcc7ed7e59b170f49842d` |
| 4 | `theorem` | [bound_of_shell_of_continuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/bound-of-shell-of-continuous.md) | 106 | `result-track:385654e0e93bbf864831fe0349072170db7d0f564c4fd6e0be44aaaffce2e514` |
| 5 | `theorem` | [exists_bound_of_continuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/exists-bound-of-continuous.md) | 115 | `result-track:d3f8db8785a6cb1d0fd4c6072474efcbfe209ecac8ebb3244c921de26793f09d` |
| 6 | `theorem` | [norm_image_sub_le_of_bound'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/norm-image-sub-le-of-bound.md) | 127 | `result-track:b3e38cfff629e5b710b35cfc9c63ef355d9daa62d47e1f896a72b95b0eb2a864` |
| 7 | `theorem` | [norm_image_sub_le_of_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/norm-image-sub-le-of-bound-source-edition-2.md) | 137 | `result-track:eedc1ff9fbb87aaaac73a3f2ef13adde7dc6d97d3a7b2988fc55142430c89913` |
| 8 | `theorem` | [continuous_of_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/continuous-of-bound.md) | 144 | `result-track:6eba8dfb1834166e8f716cd082112f9b90a2c87cea28e8eab1074dba3aa98477` |
| 9 | `def` | [mkContinuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/mkcontinuous.md) | 150 | `declaration-track:dd0a56022c4820957e1ab0100fccf3ab2c4610a66d7af0013c0efa5bdf4878aa` |
| 10 | `theorem` | [coe_mkContinuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/coe-mkcontinuous.md) | 153 | `result-track:44e8e3108ffa19844924d00658df2af4b784d01bfa2f6b695cc7f9ba2c63fbcf` |
| 11 | `theorem` | [bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/bound.md) | 171 | `result-track:77976be5d15b78007bd10baf2c90bb554265374f4e4e96eea83f02fece364ca7` |
| 12 | `instance` | [instSeminormedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/instseminormedaddcommgroup.md) | 177 | `declaration-track:8fc13cc5a64cfbec7b296ae5db373317caba21f3a14b14a69a5402d92e65ae4e` |
| 13 | `theorem` | [norm_toContinuousMultilinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/norm-tocontinuousmultilinearmap.md) | 182 | `result-track:8d0a52edd904b8e65a7c9589a247bf44a34e5218ad9e136645919ecf19fa005a` |
| 14 | `theorem` | [nnnorm_toContinuousMultilinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/nnnorm-tocontinuousmultilinearmap.md) | 183 | `result-track:0c0a79a0fedc2163ed51b3e3668ea794f2c94e2dab6f0d764b0c2352473ab922` |
| 15 | `theorem` | [enorm_toContinuousMultilinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/enorm-tocontinuousmultilinearmap.md) | 184 | `result-track:d115226fd4f8c5e39725b8f4731722b873f3d4728be0ba08ed192807ca34ffd7` |
| 16 | `def` | [toContinuousMultilinearMapLI](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/tocontinuousmultilinearmapli.md) | 189 | `declaration-track:1698363d9a620b40c09051e30a5bbec9a9ef677976f7d4ee8c80e39b7836a870` |
| 17 | `theorem` | [norm_def](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/norm-def.md) | 194 | `result-track:18fbfd6adef68318f4aaa5cb2d687e6981adc3b7a7ab503631a8139bbc9f45c6` |
| 18 | `theorem` | [bounds_nonempty](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/bounds-nonempty.md) | 198 | `result-track:2ea5ec998dd1fef1515fa2970f12415ed48746283b18636415548fd4988c1f33` |
| 19 | `theorem` | [bounds_bddBelow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/bounds-bddbelow.md) | 202 | `result-track:75d696fcca2f27d620c7f548355899bb402cb1b14c2b5719b1b770692862f44f` |
| 20 | `theorem` | [isLeast_opNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/isleast-opnorm.md) | 206 | `result-track:84348b5d53b2f2168a287f510c6729048a15d0c5c557f73e5e31d34a2588490a` |
| 21 | `theorem` | [le_opNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/le-opnorm.md) | 212 | `result-track:4026fe00616389794547901d697a271f5a17e97c148d60d76e7a07cdaec08d21` |
| 22 | `theorem` | [le_mul_prod_of_opNorm_le_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/le-mul-prod-of-opnorm-le-of-le.md) | 214 | `result-track:2ccfb8e9bcc2159c1817c683bfd1910b7787b30ae50f3630ab1a1f19c1e89991` |
| 23 | `theorem` | [le_opNorm_mul_prod_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/le-opnorm-mul-prod-of-le.md) | 219 | `result-track:4c0f8499c51b44b14476d83c19be8cc1bf806535fc4cf4090b0f094cb909764b` |
| 24 | `theorem` | [le_opNorm_mul_pow_card_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/le-opnorm-mul-pow-card-of-le.md) | 223 | `result-track:da8c6ba8c8b7ba3f53f8866d28fe1f31fd491a5688483b339b09039cc16b06be` |
| 25 | `theorem` | [le_opNorm_mul_pow_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/le-opnorm-mul-pow-of-le.md) | 227 | `result-track:d9115e0341428e3882a77ad421b5b03bfbc335870c7fb80f8c9cb306814d1608` |
| 26 | `theorem` | [le_of_opNorm_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/le-of-opnorm-le.md) | 231 | `result-track:5a14c46dfe450c5a0204ebcc9c1acaec5aa54a455728daa41ff3a3afca40091a` |
| 27 | `theorem` | [ratio_le_opNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/ratio-le-opnorm.md) | 234 | `result-track:2e962209338f6d59ba6b359b807c9586cd91e105ba3121bbe26b65705b31a57f` |
| 28 | `theorem` | [unit_le_opNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/unit-le-opnorm.md) | 238 | `result-track:f83e082248ab4787dab6bf1578ad07d66c83459185e49ec2468e9000f72a1adb` |
| 29 | `theorem` | [opNorm_le_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/opnorm-le-bound.md) | 241 | `result-track:5197b1726c72036b62444c8b9d9724352947c4443ee6edb4a84fd445527dd8cc` |
| 30 | `theorem` | [opNorm_le_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/opnorm-le-iff.md) | 245 | `result-track:c2d12b67a0e46b5b570d57fc0b685f2af501851a90f12316c15467b0259f7d09` |
| 31 | `theorem` | [le_opNNNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/le-opnnnorm.md) | 250 | `result-track:23dbd19df2e20f7fae4d85bd9e775fd0f32964c2d824e7c2da854ac12edb3ea2` |
| 32 | `theorem` | [le_of_opNNNorm_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/le-of-opnnnorm-le.md) | 253 | `result-track:5d94dfe98a35b2b50a84b543da269d741c7187d65144f5a25b1803b3d1da3afd` |
| 33 | `theorem` | [opNNNorm_le_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/opnnnorm-le-iff.md) | 256 | `result-track:fdf932df363f597e9bf656bb79ebf79d0215dcc765b8d918590361faffd987a7` |
| 34 | `theorem` | [isLeast_opNNNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/isleast-opnnnorm.md) | 259 | `result-track:9c46dd5abef495e8347e3657edce1b0095cf1ab2cee4bba49515333e7df02ade` |
| 35 | `theorem` | [opNNNorm_prod](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/opnnnorm-prod.md) | 263 | `result-track:8b784f7b4e4109c71b37e595369d878d7e6ae12599e1b92611efbc4a2f8f56a7` |
| 36 | `theorem` | [opNorm_prod](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/opnorm-prod.md) | 267 | `result-track:6e18b4fb66a11220120b7e81c7adb5823d598ccbd53fbcf6f71914311801d768` |
| 37 | `theorem` | [opNNNorm_pi](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/opnnnorm-pi.md) | 270 | `result-track:c828d616ca7f8eb4aa3e49f1da7a03a390bd5635a5f3e34bee990238951f8f25` |
| 38 | `theorem` | [opNorm_pi](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/opnorm-pi.md) | 274 | `result-track:1fbadf562f533f00a8e2e8016ccda744e452032315814605cef5408024e340fd` |
| 39 | `instance` | [instNormedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/instnormedspace.md) | 278 | `declaration-track:1dc903719945519a2e17e88a96bd766481989297dbb6db84ca71971ad64ad743` |
| 40 | `theorem` | [norm_ofSubsingleton](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/norm-ofsubsingleton.md) | 284 | `result-track:856e54a7553fc5843111592fadc66a98a8de971fe25141709dd933bc111aa1e6` |
| 41 | `theorem` | [nnnorm_ofSubsingleton](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/nnnorm-ofsubsingleton.md) | 288 | `result-track:8c0a0ca41432c4f2afd717d118688941ed43db4fbd69818cd718db42f8134e57` |
| 42 | `def` | [ofSubsingletonLIE](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/ofsubsingletonlie.md) | 294 | `declaration-track:4b7fca5d3511d9d580675dd8a1a7db891225821710fc15422bdd22226e64fb14` |
| 43 | `theorem` | [norm_ofSubsingleton_id_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/norm-ofsubsingleton-id-le.md) | 300 | `result-track:197b63dde794f321ee67ed9cf38e1d8b69a5f347ff8376e5dea228aa3adaabf2` |
| 44 | `theorem` | [nnnorm_ofSubsingleton_id_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/nnnorm-ofsubsingleton-id-le.md) | 304 | `result-track:87099d7c6dd8757ef526024847f1bae6c89e9332cb336dc875bd31cc194996b7` |
| 45 | `theorem` | [norm_constOfIsEmpty](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/norm-constofisempty.md) | 310 | `result-track:d5ac8282f43a02a208fecdf3eddb74a336dfba900b20d091ae8855659179a149` |
| 46 | `theorem` | [nnnorm_constOfIsEmpty](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/nnnorm-constofisempty.md) | 313 | `result-track:ccd811e30f22ee721ecb1a8396614e323bb486ed424d2bcb3ea90c0b61a11df6` |
| 47 | `def` | [constOfIsEmptyLIE](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/constofisemptylie.md) | 319 | `declaration-track:37bf765b165ce867e029a05b128026170188afa74217d543b129535214913475` |
| 48 | `def` | [prodLIE](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/prodlie.md) | 333 | `declaration-track:66f1fa28c84268d7e5ced73c1a6aebee96b1eb327e599b05c7180f7e67ed4209` |
| 49 | `def` | [piLIE](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/pilie.md) | 344 | `declaration-track:d9fc90535263a5ab7f1b55844b431e409bda9c2236d7ad717a567dd902f27526` |
| 50 | `theorem` | [norm_restrictScalars](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/norm-restrictscalars.md) | 356 | `result-track:a505be61a32192180190989a0015852edf9b72545bea2fb7adbf276a7c6142e6` |
| 51 | `def` | [restrictScalarsLI](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/restrictscalarsli.md) | 362 | `declaration-track:1987708c6d52d2bc21e30eb2031aecb509bc5145c21638e999f3e023ef849f74` |
| 52 | `theorem` | [norm_image_sub_le'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/norm-image-sub-le.md) | 375 | `result-track:c1289213df29c3e5cd84cc4c1c167121db40da157a52fcf8a121ed1e3f8a3d79` |
| 53 | `theorem` | [norm_image_sub_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/norm-image-sub-le-source-edition-2.md) | 383 | `result-track:e16841a304a8321db616bbe5d999f97e2913f93188116c0525630a5dfa48cd76` |
| 54 | `theorem` | [AlternatingMap.mkContinuous_norm_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/alternatingmap-mkcontinuous-norm-le.md) | 394 | `result-track:4ef97ada48a501f9cd1b3561a7c98e0326a48a36857d97991c722b68da259e6a` |
| 55 | `theorem` | [AlternatingMap.mkContinuous_norm_le'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/alternatingmap-mkcontinuous-norm-le-source-edition-2.md) | 401 | `result-track:ea1807503edb3af7563a9689c5119d47fb3f2f812bf8c8ee0e54593041ded6cb` |
| 56 | `theorem` | [norm_compContinuousAlternatingMap_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/norm-compcontinuousalternatingmap-le.md) | 409 | `result-track:6a1d9f5cc7733bae68b60addce7f297208374b1d59ef7a7a57cebdce3fb65616` |
| 57 | `def` | [flipAlternating](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/flipalternating.md) | 415 | `declaration-track:0c7fb344a88660a0f24da1ee394291ea4a318b430271bfe0ea4619baa863321d` |
| 58 | `theorem` | [LinearIsometry.norm_compContinuousAlternatingMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/linearisometry-norm-compcontinuousalternatingmap.md) | 422 | `result-track:ada9c61e0cb486e35bd892afe626f3c49a9d8529fd59e444e08e098db3679c28` |
| 59 | `theorem` | [norm_compContinuousLinearMap_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/norm-compcontinuouslinearmap-le.md) | 432 | `result-track:f74f1159f66d827e8def75897041751b2310234fb49c395ad8b35dd12f50249b` |
| 60 | `theorem` | [continuous_compContinuousLinearMapCLM](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/continuous-compcontinuouslinearmapclm.md) | 437 | `result-track:09eb15bead49e256429b730cc4807c3c5d90bed80b533cf3263ac97fbc904934` |
| 61 | `def` | [fderivCompContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/fderivcompcontinuouslinearmap.md) | 466 | `declaration-track:6533fb9ac12f9cecdf09c8e8e474b5ac4af81b0a8444107f26003123ea89578f` |
| 62 | `lemma` | [toContinuousMultilinearMapCLM_comp_fderivCompContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/tocontinuousmultilinearmapclm-comp-fderivcompcontinuouslinearmap.md) | 485 | `result-track:ec28b87dd12167e94e3887618290fb2436ded2d86e2cca8c8f00064b1926898c` |
| 63 | `lemma` | [fderivCompContinuousLinearMap_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/fderivcompcontinuouslinearmap-apply.md) | 492 | `result-track:c6a5a491d43c165c35ff59bc55e265e720355e5460fd84c0599f73a3a2de7528` |
| 64 | `lemma` | [fderivCompContinuousLinearMap_of_isEmpty](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/fderivcompcontinuouslinearmap-of-isempty.md) | 498 | `result-track:4d72a2152de1238ab5f201e11bd236abfd8d59967028592eabe05e80124b1b76` |
| 65 | `def` | [fderivCompContinuousLinearMapCLM](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/fderivcompcontinuouslinearmapclm.md) | 504 | `declaration-track:27400bfb5cbc6a4e17f609e0240ba40a8b06a6f8ef4bf2c6301e4080b17fa1ac` |
| 66 | `lemma` | [fderivCompContinuousLinearMapCLM_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/fderivcompcontinuouslinearmapclm-apply.md) | 530 | `result-track:6b104baff0dc90846becf286eec46014cfd6dcd69908dd0a547c28199904728a` |
| 67 | `def` | [mkContinuousLinear](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/mkcontinuouslinear.md) | 550 | `declaration-track:553849a9d8c3539401f58737ec70d93f041c9eb4badac073e86b5cdd5d8403b9` |
| 68 | `theorem` | [mkContinuousLinear_norm_le_max](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/mkcontinuouslinear-norm-le-max.md) | 561 | `result-track:94a4942350c1199c043b86bc47c9e4ec2e3d253c289756def1bcc93495a93134` |
| 69 | `theorem` | [mkContinuousLinear_norm_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/mkcontinuouslinear-norm-le.md) | 565 | `result-track:5cb41de906c6d5fef63759d5f576a076842a226292823cbd332cf3ee805ec9e2` |
| 70 | `def` | [mkContinuousAlternating](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/mkcontinuousalternating.md) | 574 | `declaration-track:52ebf22d5c1fbac9157c17321c03982ac32289bc56284987a46cdcaac5b0f24e` |
| 71 | `theorem` | [mkContinuousAlternating_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/mkcontinuousalternating-apply.md) | 592 | `result-track:ec0c8fe1a1ef3d944b96e73ff2797b34be8e3f1c7182efe8fc5ab359e494af7d` |
| 72 | `theorem` | [mkContinuousAlternating_norm_le_max](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/mkcontinuousalternating-norm-le-max.md) | 597 | `result-track:1b6177fad187c11f1d4764374460e755798621a093c700b70fe127a77d257ed2` |
| 73 | `theorem` | [mkContinuousAlternating_norm_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/mkcontinuousalternating-norm-le.md) | 603 | `result-track:e7f01b5a67af8edf632faf7511f43d318328fcedafa255f524f858c539473a2a` |
| 74 | `instance` | [instNormedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/instnormedaddcommgroup.md) | 627 | `declaration-track:404fd204af936f8cc329258c2215942a6155b0545290e900a491c990b66abb9a` |
| 75 | `theorem` | [norm_ofSubsingleton_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/norm-ofsubsingleton-id.md) | 632 | `result-track:b4540fa5d0ed73b63095119bb91ce305a079ed5dd3f60efd56012d1fdcbb141d` |
| 76 | `theorem` | [nnnorm_ofSubsingleton_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/nnnorm-ofsubsingleton-id.md) | 637 | `result-track:518aaaa5a74a3a6a4929c4166c39cd208251ae6e2659a4675acb246e97b0ad84` |
| 77 | `theorem` | [bound_of_shell](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleAlternatingBasicPublic.lean/declarations/bound-of-shell.md) | 648 | `result-track:421814f107e95990f561c6f89e74cca14287bf54b9364d9295c990c85ddcd6af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c9a06d0114d0ef198eafb50c5ca1d304ce8daee19bca2445db68ed4ed3dc5d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
