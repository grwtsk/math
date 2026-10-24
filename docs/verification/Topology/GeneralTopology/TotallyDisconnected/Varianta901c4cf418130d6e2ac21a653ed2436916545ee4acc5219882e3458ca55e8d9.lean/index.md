# Verification target: GRWTSK.Topology.GeneralTopology.TotallyDisconnected.Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd11b06d09450631e88f4260cb6e7029b0cb6bca",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd11b06d09450631e88f4260cb6e7029b0cb6bca`.

Source path: `GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Connected.Clopen` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTotallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/istotallydisconnected--ac9e7258265fd61e61881fe2.md) | 40 | `declaration-track:ac9e7258265fd61e61881fe25105b65dcd15e9c90beab14f9f07bad54d726f64` |
| 2 | `theorem` | [isTotallyDisconnected_empty](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/istotallydisconnected-empty--f0d660e1a211f2cb5a92905e.md) | 43 | `result-track:f0d660e1a211f2cb5a92905e21c0b154b9b4161b330f0a6c2bdbb3eaae6fcb0b` |
| 3 | `theorem` | [isTotallyDisconnected_singleton](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/istotallydisconnected-singleton--6561ec30b08ee21aeb605c11.md) | 46 | `result-track:6561ec30b08ee21aeb605c1182a2c9b38f4161da3ade430ee11d4ddc3ff52731` |
| 4 | `class` | [TotallyDisconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/totallydisconnectedspace--c4328ae8277433643cddce3e.md) | 51 | `declaration-track:c4328ae8277433643cddce3e2f072a93ee7af607ace083a7ae55eaada442bbee` |
| 5 | `theorem` | [IsPreconnected.subsingleton](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/ispreconnected-subsingleton--65d232727a309ef823de07d4.md) | 55 | `result-track:65d232727a309ef823de07d486187c13fbe59ac71aa64975f0a58dec754aefa7` |
| 6 | `instance` | [Pi.totallyDisconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/pi-totallydisconnectedspace--980ae05db2c65ed153f6e5f3.md) | 59 | `declaration-track:980ae05db2c65ed153f6e5f3955d15551b4652f308b55b67c96cd23b75d540ee` |
| 7 | `instance` | [Prod.totallyDisconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/prod-totallydisconnectedspace--fc870da15002ef7a2d770a24.md) | 67 | `declaration-track:fc870da15002ef7a2d770a24966568e6ed2b1899e61c88bb19b731461f83f563` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/instance--ddc2591ffb58276a1a3a419f.md) | 76 | `declaration-track:ddc2591ffb58276a1a3a419fbe168ba25a47c5cdfacbd821537d5d8de2f9dc74` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/instance--5c6804ab355e1ff854302932.md) | 83 | `declaration-track:5c6804ab355e1ff8543029324b7d9c9d8678208254dda82fe7cd05b758a629e6` |
| 10 | `theorem` | [totallyDisconnectedSpace_iff_connectedComponent_subsingleton](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/totallydisconnectedspace-iff-connectedcomponent-subsingleton--30df748709acef2f53c1237f.md) | 92 | `result-track:30df748709acef2f53c1237fc09886efe527d4ea1091d125d482b081c0e6d12e` |
| 11 | `theorem` | [totallyDisconnectedSpace_iff_connectedComponent_singleton](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/totallydisconnectedspace-iff-connectedcomponent-singleton--ed0e364f1c2bc9817009b867.md) | 106 | `result-track:ed0e364f1c2bc9817009b867d562f4c0d987809036833a26ab4f9536ac893151` |
| 12 | `theorem` | [connectedComponent_eq_singleton](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/connectedcomponent-eq-singleton--579837f2be7b5aa7be834267.md) | 113 | `result-track:579837f2be7b5aa7be834267b1352a938d04433cae4d4d26b4bfe379c5a32a04` |
| 13 | `theorem` | [Continuous.image_connectedComponent_eq_singleton](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/continuous-image-connectedcomponent-eq-singleton--44554a3ff64d6211d8b253f8.md) | 119 | `result-track:44554a3ff64d6211d8b253f885dad1e09a2b828b66ee33b1d1c98b4af3ed0a9d` |
| 14 | `theorem` | [isTotallyDisconnected_of_totallyDisconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/istotallydisconnected-of-totallydisconnectedspace--831323ab8898d9b27cc277f9.md) | 125 | `result-track:831323ab8898d9b27cc277f92d9e9e0f11dbbd34700ba8b1071337da148e5579` |
| 15 | `lemma` | [TotallyDisconnectedSpace.eq_of_continuous](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/totallydisconnectedspace-eq-of-continuous--0077d0d3eb5c1b9b3c782203.md) | 129 | `result-track:0077d0d3eb5c1b9b3c782203f7c7257bb6624131df305e462bab033405a491bc` |
| 16 | `theorem` | [isTotallyDisconnected_of_image](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/istotallydisconnected-of-image--e12882223a88bb282d9133db.md) | 134 | `result-track:e12882223a88bb282d9133dbfe2aea847582cf40da44e9bd369126c625ce78c1` |
| 17 | `lemma` | [Topology.IsEmbedding.isTotallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/topology-isembedding-istotallydisconnected--26639bee0ae3530568276bb1.md) | 141 | `result-track:26639bee0ae3530568276bb10e15393c1bf7ac6759f116b5199db32e80533603` |
| 18 | `lemma` | [Topology.IsEmbedding.isTotallyDisconnected_image](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/topology-isembedding-istotallydisconnected-image--632b38813a50620511185b79.md) | 148 | `result-track:632b38813a50620511185b796adf4e37e77f92240c01cf457a3960388fe00695` |
| 19 | `lemma` | [Topology.IsEmbedding.isTotallyDisconnected_range](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/topology-isembedding-istotallydisconnected-range--43b14b2b39f3459ca2d71a36.md) | 159 | `result-track:43b14b2b39f3459ca2d71a363f7ea64dc711f44388bd83b5aa69433d45ce3866` |
| 20 | `lemma` | [totallyDisconnectedSpace_subtype_iff](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/totallydisconnectedspace-subtype-iff--48008f0b084a14d4cd0130d1.md) | 166 | `result-track:48008f0b084a14d4cd0130d11630f2334d10b7e031aa574e5f8bfecf21bf2455` |
| 21 | `instance` | [Subtype.totallyDisconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/subtype-totallydisconnectedspace--5d2b767ced1902f0d9a84cb2.md) | 170 | `declaration-track:5d2b767ced1902f0d9a84cb284c17f9d5702f67ef37a73adab7c80db74ad6cde` |
| 22 | `def` | [IsTotallySeparated](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/istotallyseparated--7603b674be598e92bbecd368.md) | 180 | `declaration-track:7603b674be598e92bbecd3688156d91309634cd8b446f4d36350385ce645c6f6` |
| 23 | `theorem` | [isTotallySeparated_empty](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/istotallyseparated-empty--dcf13bae821df948fdf19fd4.md) | 184 | `result-track:dcf13bae821df948fdf19fd49ba9c5c1ee76f2107dafb6c2a4ff9d3f6fc3c572` |
| 24 | `theorem` | [isTotallySeparated_singleton](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/istotallyseparated-singleton--99c2b1aa9e0e69715452bca8.md) | 186 | `result-track:99c2b1aa9e0e69715452bca8b330903492e72f426f45aee925bdd1358343c53e` |
| 25 | `theorem` | [isTotallyDisconnected_of_isTotallySeparated](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/istotallydisconnected-of-istotallyseparated--d10dc16ea6a08b9cead9f407.md) | 189 | `result-track:d10dc16ea6a08b9cead9f40749802f957c20e63075b13e4e26fd97b7e878d92d` |
| 26 | `class` | [TotallySeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/totallyseparatedspace--786fd2edd2701a3974fbc7dd.md) | 204 | `declaration-track:786fd2edd2701a3974fbc7dd49e29ae2df3887c7225ffb259647bb4ca1ee5f99` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/instance--ceb78524f1d62efefc80efa2.md) | 209 | `declaration-track:ceb78524f1d62efefc80efa2d2d418bd4df39b6358410a1ac6b7405c7d3f4174` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/instance--ebadfb85739af96c1e5d691d.md) | 214 | `declaration-track:ebadfb85739af96c1e5d691df18817bd1ae67f4952ef7fed1d45baf78ccfb801` |
| 29 | `theorem` | [totallySeparatedSpace_iff_exists_isClopen](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/totallyseparatedspace-iff-exists-isclopen--f1dff80641ed60f813ca1830.md) | 219 | `result-track:f1dff80641ed60f813ca1830c1770ab8f66b4dc9dbfa584654ec13b83db94f4f` |
| 30 | `theorem` | [exists_isClopen_of_totally_separated](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/exists-isclopen-of-totally-separated--380fc0aba86491f2ff402f6f.md) | 228 | `result-track:380fc0aba86491f2ff402f6f90c195fe2b3044db26457f09c7c61bba74aaec6c` |
| 31 | `theorem` | [isTotallyDisconnected_of_isClopen_set](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/istotallydisconnected-of-isclopen-set--4066201482141a5fa988a115.md) | 235 | `result-track:4066201482141a5fa988a115dfb1de3093b735291ea1e7d74bd54ee376529f07` |
| 32 | `theorem` | [Continuous.image_eq_of_connectedComponent_eq](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/continuous-image-eq-of-connectedcomponent-eq--2cd54966c4e9463c9a70315b.md) | 246 | `result-track:2cd54966c4e9463c9a70315b843d5c8dc8e6f1d9db3a563acd8f1d1cd648f9b6` |
| 33 | `def` | [Continuous.connectedComponentsLift](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/continuous-connectedcomponentslift--f63c76acfe4ffc3c7693f0da.md) | 255 | `declaration-track:f63c76acfe4ffc3c7693f0da39b709be46fe45ae23d3ccb7f2d69f14bc51373b` |
| 34 | `theorem` | [Continuous.connectedComponentsLift_continuous](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/continuous-connectedcomponentslift-continuous--43aad738c13ad4cda2678e38.md) | 259 | `result-track:43aad738c13ad4cda2678e384fb483176a986dcfecc9ffabe8d26676cd43b031` |
| 35 | `theorem` | [Continuous.connectedComponentsLift_apply_coe](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/continuous-connectedcomponentslift-apply-coe--5205f7797ead4d8aea37b242.md) | 264 | `result-track:5205f7797ead4d8aea37b242afbc7b988a79d33d1e55220cb9766638f96cf67d` |
| 36 | `theorem` | [Continuous.connectedComponentsLift_comp_coe](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/continuous-connectedcomponentslift-comp-coe--6a88b08f61e792e33683a0a6.md) | 269 | `result-track:6a88b08f61e792e33683a0a687a93c63c23c5ba8ade92f395812135c361c2be4` |
| 37 | `theorem` | [connectedComponents_lift_unique'](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/connectedcomponents-lift-unique--ccc1366201311deff721150c.md) | 273 | `result-track:ccc1366201311deff721150c188de194ec9fb7ba9ff6276ca518966bac884d5f` |
| 38 | `theorem` | [Continuous.connectedComponentsLift_unique](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/continuous-connectedcomponentslift-unique--b0799bcdcf02d9335d609e3c.md) | 277 | `result-track:b0799bcdcf02d9335d609e3c9a4b64821176cd8a241a38536548a25571a370a2` |
| 39 | `instance` | [ConnectedComponents.totallyDisconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/connectedcomponents-totallydisconnectedspace--36eb3ecda352a0af37505429.md) | 281 | `declaration-track:36eb3ecda352a0af37505429d894a4a83640046b95ad8a69817b2da537c3e244` |
| 40 | `def` | [Continuous.connectedComponentsMap](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/continuous-connectedcomponentsmap--c87a459ce66fa62898f8ee82.md) | 292 | `declaration-track:c87a459ce66fa62898f8ee82ad61a9b53398708b1c85a471d4655e5dd1ab6cf9` |
| 41 | `theorem` | [Continuous.connectedComponentsMap_continuous](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/continuous-connectedcomponentsmap-continuous--ad0d7336d216e61f14442cba.md) | 296 | `result-track:ad0d7336d216e61f14442cba7916a86363ec12fc0a46bedfa4f30446de349b88` |
| 42 | `theorem` | [IsPreconnected.constant](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/ispreconnected-constant--4d72e46cc5d17fb8840d427d.md) | 302 | `result-track:4d72e46cc5d17fb8840d427deb3f55c95cfb0e3394c9273715d7f518a6358c30` |
| 43 | `theorem` | [PreconnectedSpace.constant](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/preconnectedspace-constant--822f586c14e1cd7be7065c6a.md) | 308 | `result-track:822f586c14e1cd7be7065c6ab5a9216cb51974d0ae171e3465009c1ea9ceedf5` |
| 44 | `theorem` | [IsPreconnected.constant_of_mapsTo](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/ispreconnected-constant-of-mapsto--8ba67f4dc5de9b01b59680c0.md) | 314 | `result-track:8ba67f4dc5de9b01b59680c03a9e13f901233aa62bb8c0114b7e1bbadc2f8e5e` |
| 45 | `theorem` | [IsPreconnected.eqOn_const_of_mapsTo](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/declarations/ispreconnected-eqon-const-of-mapsto--15751caae18df26ba5da4b54.md) | 323 | `result-track:15751caae18df26ba5da4b546ecd46e30240a95c240f8b9dda8b3a7a6fd552f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
