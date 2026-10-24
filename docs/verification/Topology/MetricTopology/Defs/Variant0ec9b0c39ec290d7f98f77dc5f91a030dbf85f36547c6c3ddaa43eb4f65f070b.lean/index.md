# Verification target: GRWTSK.Topology.MetricTopology.Defs.Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "968586593512aa16616ed5bf4d48d06f58281518",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `968586593512aa16616ed5bf4d48d06f58281518`.

Source path: `GRWTSK/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Norm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/norm--9fe9b44113fc50d753889562.md) | 60 | `declaration-track:9fe9b44113fc50d753889562f7f68097cd2842ed605d99d1f68513e40944841c` |
| 2 | `class` | [NNNorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/nnnorm--81bc3da3308cfdec02c98128.md) | 66 | `declaration-track:81bc3da3308cfdec02c9812899494412fd589a5ed171729ad35c23a7d1b60c57` |
| 3 | `class` | [ENorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/enorm--1d9c5f27a31e525e2f34d42e.md) | 72 | `declaration-track:1d9c5f27a31e525e2f34d42e4abd883dfedcad04384d7cef68e253aef6c1069b` |
| 4 | `instance` | [NNNorm.toENorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/nnnorm-toenorm--ef8e4d3dbaf8a47aaa26a28d.md) | 87 | `declaration-track:ef8e4d3dbaf8a47aaa26a28d621ee0a1c0885620962295a100d22a55ad244ca8` |
| 5 | `lemma` | [enorm_eq_nnnorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/enorm-eq-nnnorm--b2b28045b67b8ab2d0ec2060.md) | 89 | `result-track:b2b28045b67b8ab2d0ec20603e3df42d0b80ae3030a0588c2c6e5d43b0f6d4e7` |
| 6 | `lemma` | [toNNReal_enorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/tonnreal-enorm--448709fe04c0c01b56eb186e.md) | 91 | `result-track:448709fe04c0c01b56eb186e495079184b2ec4a46f90bb3be890b9ff7fc74f3c` |
| 7 | `lemma` | [coe_le_enorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/coe-le-enorm--dd9923b8359f1d329f740d84.md) | 93 | `result-track:dd9923b8359f1d329f740d8450557968192cafd61c9782e32792f758ba56e4fa` |
| 8 | `lemma` | [enorm_le_coe](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/enorm-le-coe--f02766628ae9725a2881a431.md) | 94 | `result-track:f02766628ae9725a2881a431f1298d0a63285b6fac07bbeca5b4df197b50228d` |
| 9 | `lemma` | [coe_lt_enorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/coe-lt-enorm--3dcd2d29df9540201708348d.md) | 95 | `result-track:3dcd2d29df9540201708348dc8517143d5403a84a418cdb30698d359db2cc822` |
| 10 | `lemma` | [enorm_lt_coe](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/enorm-lt-coe--fd9fcba94c75fc310a28192f.md) | 96 | `result-track:fd9fcba94c75fc310a28192fe3cb646f57de0a986fe1f1a905092169b2590725` |
| 11 | `lemma` | [enorm_ne_top](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/enorm-ne-top--3e43f45ce46ab43bed5e2868.md) | 99 | `result-track:3e43f45ce46ab43bed5e28689a17c378782e39ec7a9cfd80f016857a3a36a253` |
| 12 | `lemma` | [enorm_lt_top](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/enorm-lt-top--9121104345789876e8fee16d.md) | 100 | `result-track:9121104345789876e8fee16dbaf3aa5e45dbdf58b383a8f38174d4191902fd85` |
| 13 | `class` | [ContinuousENorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/continuousenorm--a1d935395fad825263faec3a.md) | 108 | `declaration-track:a1d935395fad825263faec3ae6655ce53633c19e18cebc5a06de393670963029` |
| 14 | `class` | [ESeminormedAddMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/eseminormedaddmonoid--31a0216846cc7bdb6dd73283.md) | 114 | `declaration-track:31a0216846cc7bdb6dd7328372c8206b6b57fa6c11d51f4522a0cb99ec466f63` |
| 15 | `class` | [ENormedAddMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/enormedaddmonoid--27bb50c6701ad71621118b0a.md) | 125 | `declaration-track:27bb50c6701ad71621118b0ad33f7c464965ee75760cdac71922dedf9e826f42` |
| 16 | `class` | [ESeminormedMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/eseminormedmonoid--5c765eacdf2a4a60f427f62d.md) | 132 | `declaration-track:5c765eacdf2a4a60f427f62d3be98bc4f729bfc7f160919a0d78637a3722db85` |
| 17 | `class` | [ENormedMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/enormedmonoid--a980a9348646e3a627779018.md) | 143 | `declaration-track:a980a9348646e3a6277790181ad4df01bd186a392605ada168e7666ab1922289` |
| 18 | `class` | [ESeminormedAddCommMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/eseminormedaddcommmonoid--0fbe147addd355fffbe5ec4c.md) | 152 | `declaration-track:0fbe147addd355fffbe5ec4c0162fc17e663e2828ecc98b27f814e768a1df8f2` |
| 19 | `class` | [ENormedAddCommMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/enormedaddcommmonoid--fcd104b1c5c173a8b271d483.md) | 164 | `declaration-track:fcd104b1c5c173a8b271d483320630c467f69224fac6114784f6f34b110d7d7b` |
| 20 | `class` | [ESeminormedCommMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/eseminormedcommmonoid--0248877bba803abc60747497.md) | 169 | `declaration-track:0248877bba803abc60747497236a5a733c5f6c91157321278c2d5a945959b746` |
| 21 | `class` | [ENormedCommMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/enormedcommmonoid--0b73e734ed898aa62e30f5b9.md) | 178 | `declaration-track:0b73e734ed898aa62e30f5b9d9d040a364787dc0f5502fa09a22bd339934d980` |
| 22 | `class` | [SeminormedAddGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/seminormedaddgroup--15888aca1ac504c565160748.md) | 183 | `declaration-track:15888aca1ac504c5651607489f0f3b72b2caf0d5d45c73a4aeb2fbf8fd233238` |
| 23 | `class` | [SeminormedGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/seminormedgroup--210276c8d006b99da42b5e1f.md) | 194 | `declaration-track:210276c8d006b99da42b5e1fe9502f7192bc3a86689425767074346b46f222ba` |
| 24 | `class` | [NormedAddGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/normedaddgroup--a2d207feeb7f7d85d7605ec3.md) | 204 | `declaration-track:a2d207feeb7f7d85d7605ec394156a6009595b9c6fa8697f52388ea445af3e71` |
| 25 | `class` | [NormedGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/normedgroup--7577c57a098ba77893ace79f.md) | 215 | `declaration-track:7577c57a098ba77893ace79fbb1e142d2d8745928b6e6808383f13e80607a8cf` |
| 26 | `class` | [SeminormedAddCommGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/seminormedaddcommgroup--b27222f2a9bc33c35bf3fcc7.md) | 225 | `declaration-track:b27222f2a9bc33c35bf3fcc7cceb2f53967332a4bf91d366ddd5d39f3153842c` |
| 27 | `class` | [SeminormedCommGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/seminormedcommgroup--9903968f32f0c9ed22410c6b.md) | 237 | `declaration-track:9903968f32f0c9ed22410c6b6569c9af3d517022eed3c42e4a65e6a3c9c28e89` |
| 28 | `class` | [NormedAddCommGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/normedaddcommgroup--bb9cd88272dc376948401c29.md) | 247 | `declaration-track:bb9cd88272dc376948401c29630d4ee3527b2444f158f58adb42a602deaab804` |
| 29 | `class` | [NormedCommGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/normedcommgroup--277b09b0b5b00b0e1876e2e3.md) | 258 | `declaration-track:277b09b0b5b00b0e1876e2e39a97a462b7599e79aacfab9c717606a57d89dc66` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/instance--59b53197df806201ccb709fd.md) | 268 | `declaration-track:59b53197df806201ccb709fd08d39243ff416b7bdf0aa7127fb21076a621744c` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/instance--5b8e9b83640ec63fe7f4e5fc.md) | 273 | `declaration-track:5b8e9b83640ec63fe7f4e5fc2f1eab7254322b9319b8ad8ffb8354278b841cfd` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/instance--80efea59510d16e60265975d.md) | 279 | `declaration-track:80efea59510d16e60265975d2032945c2d629b48227c0294d2a73e0b2528c363` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/instance--2154556cc7bb4e74068727cf.md) | 285 | `declaration-track:2154556cc7bb4e74068727cf98aba9fc704265ab2a1dcff9841cdbd49c01443a` |
| 34 | `abbrev` | [NormedGroup.ofSeparation](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/normedgroup-ofseparation--20e6be5553a2313788852254.md) | 296 | `declaration-track:20e6be5553a2313788852254462abe5bce92aaa31a02209b2a37b05eb9727c7c` |
| 35 | `abbrev` | [NormedCommGroup.ofSeparation](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/normedcommgroup-ofseparation--a0a4217a1f4d8328f0a303c4.md) | 312 | `declaration-track:a0a4217a1f4d8328f0a303c440f2588da793c93f2e7afb27b12d8c8b7f1bba87` |
| 36 | `abbrev` | [SeminormedGroup.ofMulDist](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/seminormedgroup-ofmuldist--5916582d897db3a7d27fad21.md) | 320 | `declaration-track:5916582d897db3a7d27fad21ef8d0112e2cbca866019cea8ca55559461fce0b9` |
| 37 | `abbrev` | [SeminormedGroup.ofMulDist'](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/seminormedgroup-ofmuldist--89860727148b62b064c95e35.md) | 332 | `declaration-track:89860727148b62b064c95e35bc4add58324c7cfefdb0fa0d8ae5ff8f13e14d45` |
| 38 | `abbrev` | [SeminormedCommGroup.ofMulDist](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/seminormedcommgroup-ofmuldist--2ad2e7db81ce236c90399dbf.md) | 344 | `declaration-track:2ad2e7db81ce236c90399dbfabac1ceed7c52cf2ca99f0f104abdbbfc94fd29e` |
| 39 | `abbrev` | [SeminormedCommGroup.ofMulDist'](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/seminormedcommgroup-ofmuldist--c617a3c273e5ec599c7bba19.md) | 354 | `declaration-track:c617a3c273e5ec599c7bba199a6ab6b49f968a74f0701977cc33cbf4a9b1becb` |
| 40 | `abbrev` | [NormedGroup.ofMulDist](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/normedgroup-ofmuldist--bc32ffa19f987a949bd329fb.md) | 364 | `declaration-track:bc32ffa19f987a949bd329fba585cf92bc0305f43c0be3f660b7385e7ecddb09` |
| 41 | `abbrev` | [NormedGroup.ofMulDist'](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/normedgroup-ofmuldist--f531c45b99f86210ccf93dbd.md) | 373 | `declaration-track:f531c45b99f86210ccf93dbdfc9a4c1c2918663b537fffb273771828812a3247` |
| 42 | `abbrev` | [NormedCommGroup.ofMulDist](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/normedcommgroup-ofmuldist--adaf73b39a682411762020ad.md) | 382 | `declaration-track:adaf73b39a682411762020ad34c7fbe3db4ac5aefb3a6d753eff77bc4e42d71f` |
| 43 | `abbrev` | [NormedCommGroup.ofMulDist'](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/normedcommgroup-ofmuldist--bd95b8ca6b84a6762a487c30.md) | 392 | `declaration-track:bd95b8ca6b84a6762a487c30b3fe88606345cb3955ae19609705b4ee2c762270` |
| 44 | `abbrev` | [GroupSeminorm.toSeminormedGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/groupseminorm-toseminormedgroup--8701027c8fc56980b7ad8e2e.md) | 408 | `declaration-track:8701027c8fc56980b7ad8e2eba0228a1eab7fd48b177e683fc13c918c6416699` |
| 45 | `abbrev` | [GroupSeminorm.toSeminormedCommGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/groupseminorm-toseminormedcommgroup--67ea353fc3ef0566af6f8df3.md) | 426 | `declaration-track:67ea353fc3ef0566af6f8df3b371ea18f83bc0b7c67867a3454f55197b3ba3e9` |
| 46 | `abbrev` | [GroupNorm.toNormedGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/groupnorm-tonormedgroup--c4d5dbbd604730cd62c3f770.md) | 441 | `declaration-track:c4d5dbbd604730cd62c3f770e6c12fa6895b9044833ed54adc6bf42983e6c386` |
| 47 | `abbrev` | [GroupNorm.toNormedCommGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/declarations/groupnorm-tonormedcommgroup--75cadc14faac8768ee7c5628.md) | 455 | `declaration-track:75cadc14faac8768ee7c5628824dc8bdee296899d10d953fbf1feff54d4ad672` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
