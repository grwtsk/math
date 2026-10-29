# Verification target: Connected Totally Disconnected Namespaced

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

[Module and every result](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/source.md)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTotallyDisconnected](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/istotallydisconnected.md) | 40 | `declaration-track:ac9e7258265fd61e61881fe25105b65dcd15e9c90beab14f9f07bad54d726f64` |
| 2 | `theorem` | [isTotallyDisconnected_empty](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/istotallydisconnected-empty.md) | 43 | `result-track:f0d660e1a211f2cb5a92905e21c0b154b9b4161b330f0a6c2bdbb3eaae6fcb0b` |
| 3 | `theorem` | [isTotallyDisconnected_singleton](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/istotallydisconnected-singleton.md) | 46 | `result-track:6561ec30b08ee21aeb605c1182a2c9b38f4161da3ade430ee11d4ddc3ff52731` |
| 4 | `class` | [TotallyDisconnectedSpace](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/totallydisconnectedspace.md) | 51 | `declaration-track:c4328ae8277433643cddce3e2f072a93ee7af607ace083a7ae55eaada442bbee` |
| 5 | `theorem` | [IsPreconnected.subsingleton](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/ispreconnected-subsingleton.md) | 55 | `result-track:65d232727a309ef823de07d486187c13fbe59ac71aa64975f0a58dec754aefa7` |
| 6 | `instance` | [Pi.totallyDisconnectedSpace](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/pi-totallydisconnectedspace.md) | 59 | `declaration-track:980ae05db2c65ed153f6e5f3955d15551b4652f308b55b67c96cd23b75d540ee` |
| 7 | `instance` | [Prod.totallyDisconnectedSpace](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/prod-totallydisconnectedspace.md) | 67 | `declaration-track:fc870da15002ef7a2d770a24966568e6ed2b1899e61c88bb19b731461f83f563` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/instance-source-edition-3.md) | 76 | `declaration-track:ddc2591ffb58276a1a3a419fbe168ba25a47c5cdfacbd821537d5d8de2f9dc74` |
| 9 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/instance.md) | 83 | `declaration-track:5c6804ab355e1ff8543029324b7d9c9d8678208254dda82fe7cd05b758a629e6` |
| 10 | `theorem` | [totallyDisconnectedSpace_iff_connectedComponent_subsingleton](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/totallydisconnectedspace-iff-connectedcomponent-subsingleton.md) | 92 | `result-track:30df748709acef2f53c1237fc09886efe527d4ea1091d125d482b081c0e6d12e` |
| 11 | `theorem` | [totallyDisconnectedSpace_iff_connectedComponent_singleton](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/totallydisconnectedspace-iff-connectedcomponent-singleton.md) | 106 | `result-track:ed0e364f1c2bc9817009b867d562f4c0d987809036833a26ab4f9536ac893151` |
| 12 | `theorem` | [connectedComponent_eq_singleton](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/connectedcomponent-eq-singleton.md) | 113 | `result-track:579837f2be7b5aa7be834267b1352a938d04433cae4d4d26b4bfe379c5a32a04` |
| 13 | `theorem` | [Continuous.image_connectedComponent_eq_singleton](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/continuous-image-connectedcomponent-eq-singleton.md) | 119 | `result-track:44554a3ff64d6211d8b253f885dad1e09a2b828b66ee33b1d1c98b4af3ed0a9d` |
| 14 | `theorem` | [isTotallyDisconnected_of_totallyDisconnectedSpace](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/istotallydisconnected-of-totallydisconnectedspace.md) | 125 | `result-track:831323ab8898d9b27cc277f92d9e9e0f11dbbd34700ba8b1071337da148e5579` |
| 15 | `lemma` | [TotallyDisconnectedSpace.eq_of_continuous](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/totallydisconnectedspace-eq-of-continuous.md) | 129 | `result-track:0077d0d3eb5c1b9b3c782203f7c7257bb6624131df305e462bab033405a491bc` |
| 16 | `theorem` | [isTotallyDisconnected_of_image](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/istotallydisconnected-of-image.md) | 134 | `result-track:e12882223a88bb282d9133dbfe2aea847582cf40da44e9bd369126c625ce78c1` |
| 17 | `lemma` | [Topology.IsEmbedding.isTotallyDisconnected](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/topology-isembedding-istotallydisconnected.md) | 141 | `result-track:26639bee0ae3530568276bb10e15393c1bf7ac6759f116b5199db32e80533603` |
| 18 | `lemma` | [Topology.IsEmbedding.isTotallyDisconnected_image](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/topology-isembedding-istotallydisconnected-image.md) | 148 | `result-track:632b38813a50620511185b796adf4e37e77f92240c01cf457a3960388fe00695` |
| 19 | `lemma` | [Topology.IsEmbedding.isTotallyDisconnected_range](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/topology-isembedding-istotallydisconnected-range.md) | 159 | `result-track:43b14b2b39f3459ca2d71a363f7ea64dc711f44388bd83b5aa69433d45ce3866` |
| 20 | `lemma` | [totallyDisconnectedSpace_subtype_iff](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/totallydisconnectedspace-subtype-iff.md) | 166 | `result-track:48008f0b084a14d4cd0130d11630f2334d10b7e031aa574e5f8bfecf21bf2455` |
| 21 | `instance` | [Subtype.totallyDisconnectedSpace](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/subtype-totallydisconnectedspace.md) | 170 | `declaration-track:5d2b767ced1902f0d9a84cb284c17f9d5702f67ef37a73adab7c80db74ad6cde` |
| 22 | `def` | [IsTotallySeparated](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/istotallyseparated.md) | 180 | `declaration-track:7603b674be598e92bbecd3688156d91309634cd8b446f4d36350385ce645c6f6` |
| 23 | `theorem` | [isTotallySeparated_empty](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/istotallyseparated-empty.md) | 184 | `result-track:dcf13bae821df948fdf19fd49ba9c5c1ee76f2107dafb6c2a4ff9d3f6fc3c572` |
| 24 | `theorem` | [isTotallySeparated_singleton](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/istotallyseparated-singleton.md) | 186 | `result-track:99c2b1aa9e0e69715452bca8b330903492e72f426f45aee925bdd1358343c53e` |
| 25 | `theorem` | [isTotallyDisconnected_of_isTotallySeparated](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/istotallydisconnected-of-istotallyseparated.md) | 189 | `result-track:d10dc16ea6a08b9cead9f40749802f957c20e63075b13e4e26fd97b7e878d92d` |
| 26 | `class` | [TotallySeparatedSpace](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/totallyseparatedspace.md) | 204 | `declaration-track:786fd2edd2701a3974fbc7dd49e29ae2df3887c7225ffb259647bb4ca1ee5f99` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/instance-source-edition-2.md) | 209 | `declaration-track:ceb78524f1d62efefc80efa2d2d418bd4df39b6358410a1ac6b7405c7d3f4174` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/instance-source-edition-4.md) | 214 | `declaration-track:ebadfb85739af96c1e5d691df18817bd1ae67f4952ef7fed1d45baf78ccfb801` |
| 29 | `theorem` | [totallySeparatedSpace_iff_exists_isClopen](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/totallyseparatedspace-iff-exists-isclopen.md) | 219 | `result-track:f1dff80641ed60f813ca1830c1770ab8f66b4dc9dbfa584654ec13b83db94f4f` |
| 30 | `theorem` | [exists_isClopen_of_totally_separated](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/exists-isclopen-of-totally-separated.md) | 228 | `result-track:380fc0aba86491f2ff402f6f90c195fe2b3044db26457f09c7c61bba74aaec6c` |
| 31 | `theorem` | [isTotallyDisconnected_of_isClopen_set](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/istotallydisconnected-of-isclopen-set.md) | 235 | `result-track:4066201482141a5fa988a115dfb1de3093b735291ea1e7d74bd54ee376529f07` |
| 32 | `theorem` | [Continuous.image_eq_of_connectedComponent_eq](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/continuous-image-eq-of-connectedcomponent-eq.md) | 246 | `result-track:2cd54966c4e9463c9a70315b843d5c8dc8e6f1d9db3a563acd8f1d1cd648f9b6` |
| 33 | `def` | [Continuous.connectedComponentsLift](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/continuous-connectedcomponentslift.md) | 255 | `declaration-track:f63c76acfe4ffc3c7693f0da39b709be46fe45ae23d3ccb7f2d69f14bc51373b` |
| 34 | `theorem` | [Continuous.connectedComponentsLift_continuous](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/continuous-connectedcomponentslift-continuous.md) | 259 | `result-track:43aad738c13ad4cda2678e384fb483176a986dcfecc9ffabe8d26676cd43b031` |
| 35 | `theorem` | [Continuous.connectedComponentsLift_apply_coe](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/continuous-connectedcomponentslift-apply-coe.md) | 264 | `result-track:5205f7797ead4d8aea37b242afbc7b988a79d33d1e55220cb9766638f96cf67d` |
| 36 | `theorem` | [Continuous.connectedComponentsLift_comp_coe](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/continuous-connectedcomponentslift-comp-coe.md) | 269 | `result-track:6a88b08f61e792e33683a0a687a93c63c23c5ba8ade92f395812135c361c2be4` |
| 37 | `theorem` | [connectedComponents_lift_unique'](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/connectedcomponents-lift-unique.md) | 273 | `result-track:ccc1366201311deff721150c188de194ec9fb7ba9ff6276ca518966bac884d5f` |
| 38 | `theorem` | [Continuous.connectedComponentsLift_unique](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/continuous-connectedcomponentslift-unique.md) | 277 | `result-track:b0799bcdcf02d9335d609e3c9a4b64821176cd8a241a38536548a25571a370a2` |
| 39 | `instance` | [ConnectedComponents.totallyDisconnectedSpace](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/connectedcomponents-totallydisconnectedspace.md) | 281 | `declaration-track:36eb3ecda352a0af37505429d894a4a83640046b95ad8a69817b2da537c3e244` |
| 40 | `def` | [Continuous.connectedComponentsMap](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/continuous-connectedcomponentsmap.md) | 292 | `declaration-track:c87a459ce66fa62898f8ee82ad61a9b53398708b1c85a471d4655e5dd1ab6cf9` |
| 41 | `theorem` | [Continuous.connectedComponentsMap_continuous](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/continuous-connectedcomponentsmap-continuous.md) | 296 | `result-track:ad0d7336d216e61f14442cba7916a86363ec12fc0a46bedfa4f30446de349b88` |
| 42 | `theorem` | [IsPreconnected.constant](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/ispreconnected-constant.md) | 302 | `result-track:4d72e46cc5d17fb8840d427deb3f55c95cfb0e3394c9273715d7f518a6358c30` |
| 43 | `theorem` | [PreconnectedSpace.constant](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/preconnectedspace-constant.md) | 308 | `result-track:822f586c14e1cd7be7065c6ab5a9216cb51974d0ae171e3465009c1ea9ceedf5` |
| 44 | `theorem` | [IsPreconnected.constant_of_mapsTo](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/ispreconnected-constant-of-mapsto.md) | 314 | `result-track:8ba67f4dc5de9b01b59680c03a9e13f901233aa62bb8c0114b7e1bbadc2f8e5e` |
| 45 | `theorem` | [IsPreconnected.eqOn_const_of_mapsTo](../../../../GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/declarations/ispreconnected-eqon-const-of-mapsto.md) | 323 | `result-track:15751caae18df26ba5da4b546ecd46e30240a95c240f8b9dda8b3a7a6fd552f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d973a3b411da49b734448d3e49dc272a3d6cff4946486f2d7084fd08ee59c75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
