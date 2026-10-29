# Verification target: Presheaf Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5444303c843083eca5e6b9d5002114d95c8343b0",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Presheaf/Variantd01d5cd084cb5b2d25bf6bc09058624b4a2873ce8182aa41a8be6f6eee564000.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PresheafNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/PresheafNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5444303c843083eca5e6b9d5002114d95c8343b0`.

Source path: `GRWTSK/Topology/Presheaf/Variantd01d5cd084cb5b2d25bf6bc09058624b4a2873ce8182aa41a8be6f6eee564000.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Presheaf/Variantd01d5cd084cb5b2d25bf6bc09058624b4a2873ce8182aa41a8be6f6eee564000.lean.json)

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
| 1 | `def` | [Presheaf](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/presheaf.md) | 54 | `declaration-track:ec35c0963edf6266381df18c0804c65c6300f759ddffa62c6f36ca38916ec8e1` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/instance.md) | 57 | `declaration-track:1feccee1aaa5b48722e8f7cb8c64c46723a1446432ad28cb4aca76a9015ad9e4` |
| 3 | `theorem` | [comp_app](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/comp-app.md) | 64 | `result-track:648616537a378a192f65356a8d23ef622e91efbfe68ff9825937d5c27ff33206` |
| 4 | `lemma` | [ext](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/ext.md) | 69 | `result-track:9517202efa7874c5bde388fb8b17d8877a8bc1763b88f8568e6aab61e89a3b87` |
| 5 | `macro` | [(anonymous)](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/macro.md) | 78 | `declaration-track:0d0452d3b6e86104b402aad3f1128deca6caba7cc506503c5555d163fcc67e5d` |
| 6 | `macro` | [(anonymous)](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/macro-source-edition-3.md) | 85 | `declaration-track:d8d347aece5febe43e64e68a18e1244ebec06fb58634c6d95357b7af9ff814da` |
| 7 | `macro` | [(anonymous)](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/macro-source-edition-2.md) | 94 | `declaration-track:3370b1f5107edc0ae21ac55452bb25d8ef2c75f05edc9657af1235b71a25f532` |
| 8 | `example` | [(anonymous)](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/example.md) | 107 | `declaration-track:414ba1a82a3d8748e40f2d5fb2e1763e9fc2d85a2433d0046c0166fca4edd634` |
| 9 | `def` | [restrict](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/restrict.md) | 118 | `declaration-track:7817bdabfc5908baff4c80f802447101f5b4cc0ec10335042764ff322b248bb7` |
| 10 | `abbrev` | [restrictOpen](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/restrictopen.md) | 133 | `declaration-track:49f882ad70472e25e9d83db01a0ac966bd55ed7f883acb2351b3045f4fe7e0dc` |
| 11 | `theorem` | [restrict_restrict](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/restrict-restrict.md) | 142 | `result-track:648524b1078ac47277b427b2b96a1741ebc579b3d989d8490f4aa38ce43465de` |
| 12 | `theorem` | [map_restrict](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/map-restrict.md) | 149 | `result-track:0dadb6171554d25831c2ece48bb04fdc671e1232a26b2eddda1f52bf6846eb00` |
| 13 | `lemma` | [restrict_self](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/restrict-self.md) | 156 | `result-track:ac3f081d66b7f84b44ae66ce1f9de0be04e1ee06cb776e1d53594d85eb791e70` |
| 14 | `def` | [pushforward](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pushforward.md) | 166 | `declaration-track:0b1dea8e201dc3f6e7cd7ae478424306496cadb6394e499af00588b72e84c1ee` |
| 15 | `theorem` | [pushforward_map_app'](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pushforward-map-app.md) | 174 | `result-track:d7a5a46653c3b83fc60fd9a564e1d2e62efba5cb801f6b368aaf40a4937e6ce9` |
| 16 | `lemma` | [id_pushforward](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/id-pushforward.md) | 178 | `result-track:a1e0175b84b70bfafddd1c625ec468066f7f065886a5a401d5edb7544034a9c7` |
| 17 | `def` | [id](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/id.md) | 186 | `declaration-track:59c813b98e4c3e73a7332cfdc1f3167fd21167817e306631ccd935be5ea55cac` |
| 18 | `theorem` | [id_hom_app](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/id-hom-app.md) | 189 | `result-track:fd17e49379d428d813adbfe277b4dfb1c4ed5a9506f86b9579d0f437fd6e8f52` |
| 19 | `theorem` | [id_inv_app](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/id-inv-app.md) | 192 | `result-track:01c651da2b2cf753df2f691bad31bccac06166182a7bd9fe66265b173bd71e79` |
| 20 | `theorem` | [id_eq](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/id-eq.md) | 195 | `result-track:169ac69714de04088dca20c2091a91b0b38ae0200f88f1b9324137cf440967d1` |
| 21 | `def` | [comp](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/comp.md) | 200 | `declaration-track:6fbf7fe20c9d45dd8138f30e4056f7f681b3e7cb4be54feabe9c93379f1b712e` |
| 22 | `theorem` | [comp_eq](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/comp-eq.md) | 203 | `result-track:4eb681fa43acf01a213cae75b7355ff3c7af558b2af97e116a521d271756b53f` |
| 23 | `theorem` | [comp_hom_app](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/comp-hom-app.md) | 208 | `result-track:dd61a458558325985c94cc6448a2f88d95da2c17b7dbd97777f1cc7269f0036e` |
| 24 | `theorem` | [comp_inv_app](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/comp-inv-app.md) | 212 | `result-track:c79d24615192c80c4641690ad38662a158623b10736f24cef85220cc660638eb` |
| 25 | `def` | [pushforwardEq](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pushforwardeq.md) | 221 | `declaration-track:8a0def163c48ff8015e2e25fd888b6293e91b15b72a7204d516676a58534036c` |
| 26 | `theorem` | [pushforward_eq'](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pushforward-eq.md) | 225 | `result-track:a02bb365aad48db1d87fec95fac252da575d168ace9c2ea43138cb3fd780b2b2` |
| 27 | `theorem` | [pushforwardEq_hom_app](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pushforwardeq-hom-app.md) | 230 | `result-track:92b398d1e66f0e584eb774682acbce0f4f2efc4813a69ff19f907f3dd8599187` |
| 28 | `def` | [presheafEquivOfIso](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/presheafequivofiso.md) | 244 | `declaration-track:02984be73d6d367ff245e0d810966fc1422c78f78ff9bd1517027141511657b5` |
| 29 | `def` | [toPushforwardOfIso](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/topushforwardofiso.md) | 252 | `declaration-track:7acc802332352a4573471c7cb4c344c487629e0ed2297a8adc2631cf4f69cc33` |
| 30 | `theorem` | [toPushforwardOfIso_app](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/topushforwardofiso-app.md) | 259 | `result-track:707a2b9c14a21ef0f2b908597a80edea2ecc361f797f20f2b8e6c67ac952a359` |
| 31 | `def` | [pushforwardToOfIso](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pushforwardtoofiso.md) | 269 | `declaration-track:5ac949fb03b33fc8a2c009cbb16225d0a639caa0f47a858f5c440c45b80f3141` |
| 32 | `theorem` | [pushforwardToOfIso_app](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pushforwardtoofiso-app.md) | 276 | `result-track:d660b1368ca7c9b965ce6eee56122f92d447affe39e28f1df8a96482e70152bb` |
| 33 | `def` | [pullback](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pullback.md) | 291 | `declaration-track:9039244e609a0113d6d47443ab173f6d216e4f8027988ffd95089fbda9791504` |
| 34 | `def` | [pullbackPushforwardAdjunction](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pullbackpushforwardadjunction.md) | 295 | `declaration-track:1350123696a3b787642bd0d9383539643d9ae92f6975814a148575f92da7ee8d` |
| 35 | `def` | [pullbackHomIsoPushforwardInv](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pullbackhomisopushforwardinv.md) | 303 | `declaration-track:1e9ecfe9b5a918906c87350bc617dab746f47b346c84de1f4e6fe64e42217bf3` |
| 36 | `def` | [pullbackInvIsoPushforwardHom](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pullbackinvisopushforwardhom.md) | 309 | `declaration-track:ee4b19255aaeb7e9fd88b0afc29ecddc71bd41d5089df134e803fabed91dd84e` |
| 37 | `def` | [pullbackObjObjOfImageOpen](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pullbackobjobjofimageopen.md) | 317 | `declaration-track:b4c88f84da6a8e3efd12680d58eb915672e96eba77b9cd9e84b07ebb0a1554d9` |
| 38 | `theorem` | [pullbackObjObjOfImageOpen_hom_naturality](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pullbackobjobjofimageopen-hom-naturality.md) | 337 | `result-track:8584bfae3c8cb0065aa1272d025824ac5fad217e97083ef64718e33edc9b6d0c` |
| 39 | `def` | [pullbackObjIso](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pullbackobjiso.md) | 374 | `declaration-track:1d8f6b52dba892cd8ea72c28904b7dd9ba80a2a4574943af90eaae845727fff8` |
| 40 | `lemma` | [pullbackObjIso_hom_naturality](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pullbackobjiso-hom-naturality.md) | 388 | `result-track:6096d74b9cd5cac5a143feeec725f64df4bfcb38a97ecd4698bb948ac859637d` |
| 41 | `def` | [pullbackIso](../../../../GeneralTopology/PresheafNamespacedPublic.lean/declarations/pullbackiso.md) | 419 | `declaration-track:a0ff0896aab067624134f7958fefdae2951c9190c90eeff9e13d731d612f5f69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6de086ee3f6ad0d72cafbc4f5a1d97b4efec9f5a268333826a6c0db3cb6d76ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Presheaf/Variantd01d5cd084cb5b2d25bf6bc09058624b4a2873ce8182aa41a8be6f6eee564000.lean","GRWTSK/_verification/specifications/Topology/Presheaf/Variantd01d5cd084cb5b2d25bf6bc09058624b4a2873ce8182aa41a8be6f6eee564000.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
