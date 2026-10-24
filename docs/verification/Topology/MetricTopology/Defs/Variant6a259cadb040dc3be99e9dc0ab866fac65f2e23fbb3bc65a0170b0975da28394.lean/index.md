# Verification target: GRWTSK.Topology.MetricTopology.Defs.Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1230ba39096fad9ba358e692d8f72d4384e70672",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1230ba39096fad9ba358e692d8f72d4384e70672`.

Source path: `GRWTSK/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean.json)

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
| 1 | `class` | [Norm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/norm--0d0193ec8b7336cb84ff6120.md) | 68 | `declaration-track:0d0193ec8b7336cb84ff61206e8204e76b6e847f6c76363c53ee4e77cdb4c4e1` |
| 2 | `class` | [NNNorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/nnnorm--ddcfcbf70acc640c87f6c2e4.md) | 74 | `declaration-track:ddcfcbf70acc640c87f6c2e4648efbe6906b6b1acbbb0028fe8caf387cb8bb22` |
| 3 | `class` | [ENorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/enorm--f1d1c520712767ab293cb092.md) | 80 | `declaration-track:f1d1c520712767ab293cb092565fa0eede1a40e77d49fc6e442999f77ad09451` |
| 4 | `instance` | [NNNorm.toENorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/nnnorm-toenorm--7008becdd6aa2103cd974e9f.md) | 95 | `declaration-track:7008becdd6aa2103cd974e9fc2e07da81edcb4bbde9e0544cb60933a5a69e0d7` |
| 5 | `lemma` | [enorm_eq_nnnorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/enorm-eq-nnnorm--b8fe3c2bd31a16c085174495.md) | 97 | `result-track:b8fe3c2bd31a16c0851744956ed94ead735ede7542cde4d20a359f3e1d0f3d3d` |
| 6 | `lemma` | [toNNReal_enorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/tonnreal-enorm--30ec0d880a5b878ef1686d0a.md) | 99 | `result-track:30ec0d880a5b878ef1686d0ab1b47746f0776eadbd74e75179f93136acd2498d` |
| 7 | `lemma` | [coe_le_enorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/coe-le-enorm--bd965c94ea79cd2e09f7e16e.md) | 101 | `result-track:bd965c94ea79cd2e09f7e16eaabc96aa2e2cfc99ccca6ef1b9748858a0b7c6dd` |
| 8 | `lemma` | [enorm_le_coe](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/enorm-le-coe--3fe58a671381167e73d314b5.md) | 102 | `result-track:3fe58a671381167e73d314b54e765546380d641357a86ec24caa12516d219ad2` |
| 9 | `lemma` | [coe_lt_enorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/coe-lt-enorm--69fd90f362d62aee5aef0bea.md) | 103 | `result-track:69fd90f362d62aee5aef0bea3c9e0ed40aea0f20b48dc42847c12d5dd616c5c6` |
| 10 | `lemma` | [enorm_lt_coe](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/enorm-lt-coe--eee27259c8853b4713afcb85.md) | 104 | `result-track:eee27259c8853b4713afcb858dcf7c9ac5484ef124c3fb78ac59ea1dd78b49f7` |
| 11 | `lemma` | [enorm_ne_top](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/enorm-ne-top--fef721470c1233274c43aa8d.md) | 107 | `result-track:fef721470c1233274c43aa8d6638a79d2d5b6874a251c6ad67f1e7be5c8b2a47` |
| 12 | `lemma` | [enorm_lt_top](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/enorm-lt-top--333527cca587e7607b766dad.md) | 108 | `result-track:333527cca587e7607b766dad44a1635f98f312de2c7efbf2ef6fff5e6f19518c` |
| 13 | `class` | [ContinuousENorm](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/continuousenorm--d8c1208ed08bbc11d7a34e5d.md) | 116 | `declaration-track:d8c1208ed08bbc11d7a34e5d0e2e36acd405a3cb1daf86abd5a0b55382ffe15c` |
| 14 | `class` | [ESeminormedAddMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/eseminormedaddmonoid--c7361ffeb14fde9e46a8dcd3.md) | 122 | `declaration-track:c7361ffeb14fde9e46a8dcd3196cafaf5145cd712fc01d99b1f724e1380c9e04` |
| 15 | `class` | [ENormedAddMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/enormedaddmonoid--843b92d8754cc394c8edae01.md) | 133 | `declaration-track:843b92d8754cc394c8edae0149443966bfcda4c59f3fa2e0702c2eb2d1cf166d` |
| 16 | `class` | [ESeminormedMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/eseminormedmonoid--e5cadeb2051de510c4c7fc44.md) | 140 | `declaration-track:e5cadeb2051de510c4c7fc4423a70ffa37d4e6f68396673a5d0f3b639afcf65e` |
| 17 | `class` | [ENormedMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/enormedmonoid--45231cfe005b87ea2712ea0b.md) | 151 | `declaration-track:45231cfe005b87ea2712ea0b658311a3b8cff6b21e9ae03a0e942b10001f3ffd` |
| 18 | `class` | [ESeminormedAddCommMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/eseminormedaddcommmonoid--1617604eb432fb8ad061a67c.md) | 160 | `declaration-track:1617604eb432fb8ad061a67c1cc50a4eeceb8632d640d1426c485c9b78a26477` |
| 19 | `class` | [ENormedAddCommMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/enormedaddcommmonoid--f6944afee387dba7fcb84a96.md) | 172 | `declaration-track:f6944afee387dba7fcb84a965159300c422777c7b0920d6afbf8f429931aa6fb` |
| 20 | `class` | [ESeminormedCommMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/eseminormedcommmonoid--19a97d47efd98bb3149c82cb.md) | 177 | `declaration-track:19a97d47efd98bb3149c82cb078c69611f12d30265d319e1b5a0c88374f7954a` |
| 21 | `class` | [ENormedCommMonoid](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/enormedcommmonoid--29df549834d70e118e6b40c3.md) | 186 | `declaration-track:29df549834d70e118e6b40c33b940b9c65d4edb52766a6bf29dd54cdb010c01b` |
| 22 | `class` | [SeminormedAddGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/seminormedaddgroup--1a331175935dddba6e9aeb5d.md) | 191 | `declaration-track:1a331175935dddba6e9aeb5d49bbb754a65efe69643595a136f57881f03dd2a4` |
| 23 | `class` | [SeminormedGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/seminormedgroup--ac79ec04d1ed867416cd41f5.md) | 202 | `declaration-track:ac79ec04d1ed867416cd41f5c4aa629840db8c6dc1c224fb7e863f1077b8eff3` |
| 24 | `class` | [NormedAddGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/normedaddgroup--92979046d98b623e4953f2bd.md) | 212 | `declaration-track:92979046d98b623e4953f2bd315ad8477a8f47b92d119ef9e79bc58e577aae07` |
| 25 | `class` | [NormedGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/normedgroup--93a08ae20eab587aa60d6880.md) | 223 | `declaration-track:93a08ae20eab587aa60d68804c2c8c74bf692e82e2a62824fc30bbcbc8c78380` |
| 26 | `class` | [SeminormedAddCommGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/seminormedaddcommgroup--4c83eb3fad3f658b470f9846.md) | 233 | `declaration-track:4c83eb3fad3f658b470f98462fb09663916969b950bf977a6208fb7772fd6b16` |
| 27 | `class` | [SeminormedCommGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/seminormedcommgroup--7263b786a0d8716353747118.md) | 245 | `declaration-track:7263b786a0d8716353747118eab9c54c654c056bc963b9a0df35dba68b4ab384` |
| 28 | `class` | [NormedAddCommGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/normedaddcommgroup--4fbec0c700556f6cbfae7ee0.md) | 255 | `declaration-track:4fbec0c700556f6cbfae7ee01a02958304da4ecff7b84c4fe1c664255cc8915d` |
| 29 | `class` | [NormedCommGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/normedcommgroup--12e730a89d470602fe9f6950.md) | 266 | `declaration-track:12e730a89d470602fe9f69501b40048b2c9356979f7ec720eda8eb113188c814` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/instance--a9f96115684b10b04cf1dd4a.md) | 276 | `declaration-track:a9f96115684b10b04cf1dd4aa0ee26080ab5dcb31e2dbee8ed8b2fd9cd87caf2` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/instance--98d9f8f149fc44f1f83f0d69.md) | 281 | `declaration-track:98d9f8f149fc44f1f83f0d698eb44e5b8a1dad48a3054c204b2eabd588abab6b` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/instance--93c339ff1865fb605db43712.md) | 287 | `declaration-track:93c339ff1865fb605db43712d8d6afd130603c85d6893c63841f90e0851cc0b0` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/instance--aeb96795f3229cde655c553a.md) | 293 | `declaration-track:aeb96795f3229cde655c553a9993d7f46778964d5bc52109d6b156dbe0c94af9` |
| 34 | `abbrev` | [NormedGroup.ofSeparation](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/normedgroup-ofseparation--eb964e40652ae41a11c19f37.md) | 304 | `declaration-track:eb964e40652ae41a11c19f37ca2bc46d160771763b3063e2f87508360ea518f9` |
| 35 | `abbrev` | [NormedCommGroup.ofSeparation](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/normedcommgroup-ofseparation--9cffd00195e6139bcbd33dc0.md) | 320 | `declaration-track:9cffd00195e6139bcbd33dc0e39bcb510d9da21794ab1279f76400da5a42f9aa` |
| 36 | `abbrev` | [SeminormedGroup.ofMulDist](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/seminormedgroup-ofmuldist--40ec22f1903b954b0437369b.md) | 328 | `declaration-track:40ec22f1903b954b0437369b286701c1c894bb2a2be1fc514fe54fef5520f618` |
| 37 | `abbrev` | [SeminormedGroup.ofMulDist'](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/seminormedgroup-ofmuldist--2e2e026bb33356bd9c8957f7.md) | 340 | `declaration-track:2e2e026bb33356bd9c8957f739b37a51f6f0ac31309498d5ef18795bd59de5cb` |
| 38 | `abbrev` | [SeminormedCommGroup.ofMulDist](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/seminormedcommgroup-ofmuldist--f73472ab4c7d39e0560d9bfa.md) | 352 | `declaration-track:f73472ab4c7d39e0560d9bfa6c1d6b25f11b86682d7beba9cfc3957ce867ef82` |
| 39 | `abbrev` | [SeminormedCommGroup.ofMulDist'](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/seminormedcommgroup-ofmuldist--084d8349264ed4d65dc859a0.md) | 362 | `declaration-track:084d8349264ed4d65dc859a0934d82fde95fc589715b6b9e41fcf1b76f6f4b4d` |
| 40 | `abbrev` | [NormedGroup.ofMulDist](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/normedgroup-ofmuldist--6a54d8268df087eadbfddcd5.md) | 372 | `declaration-track:6a54d8268df087eadbfddcd5922ae42ef467f6ba03dc267e5c63694fc7f0bd3c` |
| 41 | `abbrev` | [NormedGroup.ofMulDist'](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/normedgroup-ofmuldist--1b2533f0c1b5f87ef6995c69.md) | 381 | `declaration-track:1b2533f0c1b5f87ef6995c6940a72ab7944c27e82df4e3828441f603501de9ce` |
| 42 | `abbrev` | [NormedCommGroup.ofMulDist](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/normedcommgroup-ofmuldist--f92e89a115504aa8f8c860d2.md) | 390 | `declaration-track:f92e89a115504aa8f8c860d28b86afa9673234ef0f5baf96b92d055d5fbf6a32` |
| 43 | `abbrev` | [NormedCommGroup.ofMulDist'](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/normedcommgroup-ofmuldist--f93f63c60ce1f75752a8d14a.md) | 400 | `declaration-track:f93f63c60ce1f75752a8d14a203790e7215f417c3a4ee50afe01615761200f3b` |
| 44 | `abbrev` | [GroupSeminorm.toSeminormedGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/groupseminorm-toseminormedgroup--763548f2597a50bb1d884f28.md) | 416 | `declaration-track:763548f2597a50bb1d884f287503e1f4d6201a248a15330c5a86cb11600ea706` |
| 45 | `abbrev` | [GroupSeminorm.toSeminormedCommGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/groupseminorm-toseminormedcommgroup--acb06acfe63400b8447cb7f1.md) | 434 | `declaration-track:acb06acfe63400b8447cb7f1ce4c9063ab20eea448feb3c95a4dfc5a22c69a29` |
| 46 | `abbrev` | [GroupNorm.toNormedGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/groupnorm-tonormedgroup--0b71bad193698cc85aa0c9d4.md) | 449 | `declaration-track:0b71bad193698cc85aa0c9d4b3544547e6d612c36106fe2db4b57e917e7dd485` |
| 47 | `abbrev` | [GroupNorm.toNormedCommGroup](../../../../../mathematics/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/declarations/groupnorm-tonormedcommgroup--ad0adc5d8bcde20a39a629d7.md) | 463 | `declaration-track:ad0adc5d8bcde20a39a629d7ac6c96251d7057bbdb67cf82803084b5ca8c0dd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
