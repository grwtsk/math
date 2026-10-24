# Verification target: GRWTSK.Topology.MetricTopology.DilationEquiv.Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0969cdac19311c05858f2c296ac437a27a52170",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0969cdac19311c05858f2c296ac437a27a52170`.

Source path: `GRWTSK/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Dilation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DilationEquivClass](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/dilationequivclass--f5701ee610cd32eb41a26750.md) | 40 | `declaration-track:f5701ee610cd32eb41a26750c1c1334e47a655d06005e7b4c429900dd649f37a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/instance--66ce0bf8807ffd51b1423631.md) | 43 | `declaration-track:66ce0bf8807ffd51b142363136b13a6af46c56813a7729d009926240c374db6b` |
| 3 | `structure` | [DilationEquiv](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/dilationequiv--d7940242f83257cb0d24895b.md) | 50 | `declaration-track:d7940242f83257cb0d24895b92c69ff7abb6b7c0c89578e0bbf494b073b74413` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/instance--bd28c110e2ccf063cc037e8f.md) | 61 | `declaration-track:bd28c110e2ccf063cc037e8fc3a8245ba1f607b2ec7281344960439d8793d91e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/instance--ce2797bcf4a6aaf725f82ac9.md) | 68 | `declaration-track:ce2797bcf4a6aaf725f82ac99e51f910cec80c4ee6645922e96f74f0c1ee1939` |
| 6 | `theorem` | [coe_toEquiv](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/coe-toequiv--13c74d74c9a080ffe9e6ae90.md) | 71 | `result-track:13c74d74c9a080ffe9e6ae90c34de2a7db6ccb960353bec6a70a3dee5af08faa` |
| 7 | `theorem` | [ext](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/ext--90c06fac0bdf772f23cf78eb.md) | 74 | `result-track:90c06fac0bdf772f23cf78ebf2da4ed097e39712f89fa6cfad70648c60d6bc8b` |
| 8 | `def` | [symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/symm--567370f0438857e6ca9296a2.md) | 78 | `declaration-track:567370f0438857e6ca9296a2dd23960b516f143fd663fb016ec60c02dfaa2f56` |
| 9 | `theorem` | [symm_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/symm-symm--1aa13452bbcf28d2b4dfdef3.md) | 86 | `result-track:1aa13452bbcf28d2b4dfdef3669a0e0792f6e55760ab9934e7f46a20e1c61750` |
| 10 | `theorem` | [symm_bijective](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/symm-bijective--98c9bf91aeaddab5f02ffc7a.md) | 88 | `result-track:98c9bf91aeaddab5f02ffc7ac38fb3a6455b46edec976982e1671dd3d93b127a` |
| 11 | `theorem` | [apply_symm_apply](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/apply-symm-apply--68810b72192abc0fe6d8e8d7.md) | 91 | `result-track:68810b72192abc0fe6d8e8d7e67b75a9b813f2e27690aa153eb511832525e81b` |
| 12 | `theorem` | [symm_apply_apply](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/symm-apply-apply--a532d3b0d0a95bdb9a12115b.md) | 92 | `result-track:a532d3b0d0a95bdb9a12115b42776a8567a1bd187e0c3067b8e398bb9b01a23f` |
| 13 | `def` | [Simps.symm_apply](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/simps-symm-apply--71cd2f79311535582055dffd.md) | 95 | `declaration-track:71cd2f79311535582055dffd2fc9d1dc15fa44bedaab5798bdf93bb94249027c` |
| 14 | `lemma` | [ratio_toDilation](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/ratio-todilation--15f42685ed428ac75b482d0f.md) | 99 | `result-track:15f42685ed428ac75b482d0ff75629a95b0b006689caf373a21c642255245b5d` |
| 15 | `def` | [refl](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/refl--a6d9eda6c77d692473cfa77c.md) | 103 | `declaration-track:a6d9eda6c77d692473cfa77c60978e2bf4de88766e791f8c388481db9c93688e` |
| 16 | `theorem` | [refl_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/refl-symm--910f3b5179eb3c89f02c9e4a.md) | 107 | `result-track:910f3b5179eb3c89f02c9e4a08bf48b8ea834cbc2154616fb5abe6784651522e` |
| 17 | `theorem` | [ratio_refl](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/ratio-refl--739f0ba20a946e2ee75ef486.md) | 108 | `result-track:739f0ba20a946e2ee75ef4869a0474a2ff87293198a68c2921e91d720421521c` |
| 18 | `def` | [trans](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/trans--887e1bb74261e5f1ee4522b8.md) | 112 | `declaration-track:887e1bb74261e5f1ee4522b8e6cd0ed23d962159db629683ea47d042d8806a9f` |
| 19 | `theorem` | [refl_trans](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/refl-trans--df8b0bd21ee9c38da1acf481.md) | 116 | `result-track:df8b0bd21ee9c38da1acf48127b255feb2a4e704464790ff0cae93bead778a71` |
| 20 | `theorem` | [trans_refl](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/trans-refl--1c56527846f028ed836025d7.md) | 117 | `result-track:1c56527846f028ed836025d776225816a081555ea3c23029eb34deb94fa3823f` |
| 21 | `theorem` | [symm_trans_self](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/symm-trans-self--baeca594dbe01adeaf98240c.md) | 119 | `result-track:baeca594dbe01adeaf98240cb209442028dc3523b80e7defd578255daecb809d` |
| 22 | `theorem` | [self_trans_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/self-trans-symm--cf5595b1f2fae66bc9846139.md) | 122 | `result-track:cf5595b1f2fae66bc984613906ce4e94e68a3f6f7fabe3c338c1379d0f82f92a` |
| 23 | `theorem` | [surjective](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/surjective--2b6012e99344fb619d9cbbd0.md) | 125 | `result-track:2b6012e99344fb619d9cbbd0166cdd4cecb6e23fcef8124b14caf363f28a8f58` |
| 24 | `theorem` | [bijective](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/bijective--d987ca752dd4a0aad14a4130.md) | 126 | `result-track:d987ca752dd4a0aad14a413052d5b302d1f736292badaddb4729573c6391efd3` |
| 25 | `theorem` | [injective](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/injective--ec79f157d23919f799d2c294.md) | 127 | `result-track:ec79f157d23919f799d2c29490f38e3ad2dd61f04e863ef2ec175ec339bb7ec4` |
| 26 | `theorem` | [ratio_trans](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/ratio-trans--ec1e4192e39f5d413d5c7a3c.md) | 130 | `result-track:ec1e4192e39f5d413d5c7a3cda8cc70414184a4cef2c06a1ad49c4d2bcf16e77` |
| 27 | `theorem` | [ratio_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/ratio-symm--ab76eb50f8eb5f1610221181.md) | 140 | `result-track:ab76eb50f8eb5f16102211812059ae1cbf1df72e876e58b30cb18d59143f440a` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/instance--b6454b490009a7c6fb5425bb.md) | 143 | `declaration-track:b6454b490009a7c6fb5425bb770ca6620592b2f9fbdd87fcc81ff7e897d53eb0` |
| 29 | `theorem` | [mul_def](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/mul-def--51fd98ec8c4441d5a17ebf47.md) | 152 | `result-track:51fd98ec8c4441d5a17ebf4792a679dad6207281c880c0552092801c97ac9898` |
| 30 | `theorem` | [one_def](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/one-def--66f8a756c5a0a1ee1e549e25.md) | 153 | `result-track:66f8a756c5a0a1ee1e549e25d48ad258e4c6935cfe1f465f082389ecae24ac07` |
| 31 | `theorem` | [inv_def](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/inv-def--9853d82e20fdb10f0ed91d8e.md) | 154 | `result-track:9853d82e20fdb10f0ed91d8e99de68c79fe491b654d066e79068a53febe9759b` |
| 32 | `theorem` | [coe_mul](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/coe-mul--234639fd695d7676c3c71d09.md) | 156 | `result-track:234639fd695d7676c3c71d09852feda2acb211e0fb364756ee6e3a6adace4db4` |
| 33 | `theorem` | [coe_one](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/coe-one--3b984b48adc4a75ce62aa95a.md) | 157 | `result-track:3b984b48adc4a75ce62aa95a047d691aa2deeea11440f29221b04a7edeed51f0` |
| 34 | `theorem` | [coe_inv](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/coe-inv--ec1bb76e86c98684f43a6d2e.md) | 158 | `result-track:ec1bb76e86c98684f43a6d2eb5aa74a5f4434837df80675610f6d6ba6d34d359` |
| 35 | `def` | [ratioHom](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/ratiohom--78a408a1a8259eb7430c3cff.md) | 161 | `declaration-track:78a408a1a8259eb7430c3cffc2de646ec11a5bc539c769b645f0cd2d57b95608` |
| 36 | `theorem` | [ratio_inv](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/ratio-inv--6910c0689635bc032e788b7c.md) | 167 | `result-track:6910c0689635bc032e788b7c974826a111d895913e70db78f3d572b3c5a5f688` |
| 37 | `theorem` | [ratio_pow](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/ratio-pow--44b8bb8903e3a9a0ee319446.md) | 170 | `result-track:44b8bb8903e3a9a0ee3194466b1e74dfe5731102543090e072d8a68225ba9d5c` |
| 38 | `theorem` | [ratio_zpow](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/ratio-zpow--1f9a1cfc51e868575d563ef6.md) | 174 | `result-track:1f9a1cfc51e868575d563ef66535b1d12ff6f6e42f63d88d47907a7fbfbb9619` |
| 39 | `def` | [toPerm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/toperm--7b2b513788a727e03203db3d.md) | 179 | `declaration-track:7b2b513788a727e03203db3dfee20b94cc29ef1a4b5dbcf83167fd7e8690176b` |
| 40 | `theorem` | [coe_pow](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/coe-pow--9dc90a7f0de9d63d6e5155d5.md) | 185 | `result-track:9dc90a7f0de9d63d6e5155d51069802c9e652eedc8bbba962dff521db665a080` |
| 41 | `def` | [_root_.GRWTSK.Topology.MetricTopology.DilationEquivClass.Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.IsometryEquiv.toDilationEquiv](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/root-grwtsk-topology-metrictopology-dilationequivclass-variant0ceeeadfb3--0cbfdcdfbd421e638ffae968.md) | 191 | `declaration-track:0cbfdcdfbd421e638ffae9684e9149b4199886e576583e237eaf196d47dafe4f` |
| 42 | `lemma` | [_root_.GRWTSK.Topology.MetricTopology.DilationEquivClass.Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.IsometryEquiv.toDilationEquiv_apply](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/root-grwtsk-topology-metrictopology-dilationequivclass-variant0ceeeadfb3--a65b8508506a0b6bc9c51f0c.md) | 196 | `result-track:a65b8508506a0b6bc9c51f0c47d1cb5584fc35c6f2192b1a0e818787fbb219fd` |
| 43 | `lemma` | [_root_.GRWTSK.Topology.MetricTopology.DilationEquivClass.Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.IsometryEquiv.toDilationEquiv_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/root-grwtsk-topology-metrictopology-dilationequivclass-variant0ceeeadfb3--9af01deae0a3c9a111f2b14c.md) | 201 | `result-track:9af01deae0a3c9a111f2b14c4142854c7034680e11803ba30f7a91d205fe7867` |
| 44 | `lemma` | [_root_.GRWTSK.Topology.MetricTopology.DilationEquivClass.Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.IsometryEquiv.toDilationEquiv_toDilation](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/root-grwtsk-topology-metrictopology-dilationequivclass-variant0ceeeadfb3--ed33c2a54948461a4c235b72.md) | 206 | `result-track:ed33c2a54948461a4c235b7283cdc0a649e84b668dd0abf13d8ab48fddbee7a5` |
| 45 | `lemma` | [_root_.GRWTSK.Topology.MetricTopology.DilationEquivClass.Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.IsometryEquiv.toDilationEquiv_ratio](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/root-grwtsk-topology-metrictopology-dilationequivclass-variant0ceeeadfb3--ec4ca629f1ad35518ab13c35.md) | 211 | `result-track:ec4ca629f1ad35518ab13c3530843bfc41cf78e49846a33d6f5ca933b36d41fe` |
| 46 | `def` | [toHomeomorph](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/tohomeomorph--d6b609b0a7e769b2186e7cf9.md) | 215 | `declaration-track:d6b609b0a7e769b2186e7cf9b19db20e846c73b37e9d5e45fbbced2719e1c3bf` |
| 47 | `lemma` | [coe_toHomeomorph](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/coe-tohomeomorph--31ce68736b173caa0f26d349.md) | 221 | `result-track:31ce68736b173caa0f26d3496cb8664636f477743991715fe76680be3c986de9` |
| 48 | `lemma` | [toHomeomorph_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/tohomeomorph-symm--0316b77ff9ebb267e707150e.md) | 225 | `result-track:0316b77ff9ebb267e707150e132bd6b29b1551004990b2002bb4dee2040f68c1` |
| 49 | `lemma` | [map_cobounded](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant6ad4a3ad603c8880833015105d3b21a6c46140c46a26121f13a00bd6fceb08ec.lean/declarations/map-cobounded--233d2f995d6b11fbc618e6de.md) | 236 | `result-track:233d2f995d6b11fbc618e6de59b924d9c30586a0324e6d29f4b6849be2ca89e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
