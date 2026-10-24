# Verification target: GRWTSK.Topology.GeneralTopology.Sober.Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a49253ce7e75d937d2ec72b15e1147d18298d04d",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a49253ce7e75d937d2ec72b15e1147d18298d04d`.

Source path: `GRWTSK/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean.json)

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
| 1 | `def` | [IsGenericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/isgenericpoint--8f4c06a98c29d323b742a01e.md) | 39 | `declaration-track:8f4c06a98c29d323b742a01ea818efa4ee34559c1c323e91c36d78acb8b5c88d` |
| 2 | `theorem` | [isGenericPoint_def](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/isgenericpoint-def--f1199c7eb38195cc8d98f660.md) | 42 | `result-track:f1199c7eb38195cc8d98f66051d7b7904544aa9f3037aaa355fd7535e6aaee6f` |
| 3 | `theorem` | [IsGenericPoint.def](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/isgenericpoint-def--d2d2de1b8b095e39c16bfe94.md) | 45 | `result-track:d2d2de1b8b095e39c16bfe94d9e52d9458ac909e9eb72e73eb5c928d8af1be45` |
| 4 | `theorem` | [isGenericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/isgenericpoint-closure--78aca1961e7a34f8a0eec57b.md) | 49 | `result-track:78aca1961e7a34f8a0eec57b4d25fe2888a918e226928ee84817ce5ccc6e96cb` |
| 5 | `theorem` | [isGenericPoint_iff_specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/isgenericpoint-iff-specializes--f3f2ee972971eb70fba02b24.md) | 54 | `result-track:f3f2ee972971eb70fba02b24a01dd9891671c34e2ebc04976e6b02d625b13c59` |
| 6 | `theorem` | [specializes_iff_mem](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/specializes-iff-mem--fec00c48a8306d882d10c248.md) | 59 | `result-track:fec00c48a8306d882d10c2481fbda82d9bd08631e6ba0e03855baafdaf2a57ed` |
| 7 | `theorem` | [specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/specializes--10f178db92836c850239ac42.md) | 62 | `result-track:10f178db92836c850239ac425e1531e19e2176444370ff33e171fc62287d672f` |
| 8 | `theorem` | [mem](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/mem--d0fe2424aa96bdaa5deba855.md) | 65 | `result-track:d0fe2424aa96bdaa5deba8558a7d62f1366ffdd5e0bd1c4ee7a0967c574f45dc` |
| 9 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/isclosed--f52a500988cd41f22ed86518.md) | 68 | `result-track:f52a500988cd41f22ed865187f723d9a855b1ac5b4509b31168b4a3bb3e05117` |
| 10 | `theorem` | [isIrreducible](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/isirreducible--4a435274832c1f95f7c8782e.md) | 71 | `result-track:4a435274832c1f95f7c8782ea30cef92dc35c4d6eba2c5c754c7a3e41c1d7692` |
| 11 | `theorem` | [inseparable](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/inseparable--4560c47d428fee868d12c9b5.md) | 74 | `result-track:4560c47d428fee868d12c9b54edd7ca39f763159e5ac7de1ec8195d3cfc27ff4` |
| 12 | `theorem` | [eq](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/eq--d8cee3772bd8479e925e3a92.md) | 79 | `result-track:d8cee3772bd8479e925e3a9230437e857ee042e684483c930146e8a942bbdf01` |
| 13 | `theorem` | [mem_open_set_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/mem-open-set-iff--d6afb2c0494b9fb7acc58fdd.md) | 82 | `result-track:d6afb2c0494b9fb7acc58fdd185a298a58018c65b27af63579a82a45dde04ddb` |
| 14 | `theorem` | [disjoint_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/disjoint-iff--cb96fd8f57445cd17c24a916.md) | 85 | `result-track:cb96fd8f57445cd17c24a916251eb295b35188e37db33736795650c2d13d5f82` |
| 15 | `theorem` | [mem_closed_set_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/mem-closed-set-iff--781f5a0b21076ba5104f3865.md) | 88 | `result-track:781f5a0b21076ba5104f3865afeb3731c96d650f1700f31b5d10049b3f6f677e` |
| 16 | `theorem` | [image](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/image--82090fe16a4e6eff3c07df2d.md) | 91 | `result-track:82090fe16a4e6eff3c07df2dbc9e13e9d55cb222f5e626aaf4367892f09d0015` |
| 17 | `theorem` | [isGenericPoint_iff_forall_closed](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/isgenericpoint-iff-forall-closed--a65d7f1d235e8dcc185dfc30.md) | 97 | `result-track:a65d7f1d235e8dcc185dfc308c50c02088b6801d84dc1b032f8643b59c362089` |
| 18 | `class` | [QuasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/quasisober--fd3288a79ffd7d92f07b333f.md) | 109 | `declaration-track:fd3288a79ffd7d92f07b333fa57025b402a806ee24e8f1c97ff2afd46a5907c6` |
| 19 | `def` | [IsIrreducible.genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/isirreducible-genericpoint--44effca60384c5a14337d125.md) | 113 | `declaration-track:44effca60384c5a14337d125a847ec119ac5f6423e39ae2dc6c4d2e74803e966` |
| 20 | `theorem` | [IsIrreducible.isGenericPoint_genericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/isirreducible-isgenericpoint-genericpoint-closure--b825024f2cb773ecd8cc45f8.md) | 117 | `result-track:b825024f2cb773ecd8cc45f8e1be9b5adfe1eff700566ea3af2153ebec90cab9` |
| 21 | `theorem` | [IsIrreducible.isGenericPoint_genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/isirreducible-isgenericpoint-genericpoint--7b7fb7c2b02a14ffb600c9ae.md) | 122 | `result-track:7b7fb7c2b02a14ffb600c9ae64223da854c4e299b3c52c35f01beecdea1e5fef` |
| 22 | `theorem` | [IsIrreducible.genericPoint_closure_eq](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/isirreducible-genericpoint-closure-eq--f1220b08521964573a7d6f11.md) | 128 | `result-track:f1220b08521964573a7d6f1101659d1657dbb87c8b05186555eb901ff4028c2f` |
| 23 | `theorem` | [IsIrreducible.closure_genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/isirreducible-closure-genericpoint--334b6d373beaf7159b328ea4.md) | 132 | `result-track:334b6d373beaf7159b328ea474f12aaaaf5cd0ad4ccc9e34835713b676b1f2d8` |
| 24 | `def` | [genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/genericpoint--d381ab3c9c526ed2cfa306fc.md) | 140 | `declaration-track:d381ab3c9c526ed2cfa306fc94cb55e89e29c382a4086195088f92e290f056da` |
| 25 | `theorem` | [genericPoint_spec](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/genericpoint-spec--c54049a47cc30fac1bd7ff00.md) | 143 | `result-track:c54049a47cc30fac1bd7ff00add41e2cb478212205e8aa3c3f0b5588a1ba7e4e` |
| 26 | `theorem` | [genericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/genericpoint-closure--0ad6222c4ddaed1991673349.md) | 148 | `result-track:0ad6222c4ddaed19916733496e0e6a1a2aff28488978f57d7ecfe3aa7c5c8b43` |
| 27 | `theorem` | [genericPoint_specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/genericpoint-specializes--a8f9bd74ea5f601cd788a1d1.md) | 154 | `result-track:a8f9bd74ea5f601cd788a1d19ad0c14f10e2c35894ea3e5b8a77f453d5b150be` |
| 28 | `def` | [irreducibleSetEquivPoints](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/irreduciblesetequivpoints--a9a5c5ca80b126cd5711a85c.md) | 160 | `declaration-track:a9a5c5ca80b126cd5711a85cac950bf53e52172c6cc552e2c40d0d5e0d159814` |
| 29 | `lemma` | [coe_irreducibleEquivPoints_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/coe-irreducibleequivpoints-symm-apply--8854b435786dbe1ab3757a2e.md) | 178 | `result-track:8854b435786dbe1ab3757a2eefc3bdd731e8eb81fb4d5e28acf7f8dd7160aaa4` |
| 30 | `lemma` | [Topology.IsClosedEmbedding.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/topology-isclosedembedding-quasisober--08891c0fe1528dd220f92644.md) | 181 | `result-track:08891c0fe1528dd220f926443f78de14cd4460e04853bce8e56e69cc14ec027e` |
| 31 | `theorem` | [Topology.IsOpenEmbedding.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/topology-isopenembedding-quasisober--c0e955c5670ac77082234746.md) | 191 | `result-track:c0e955c5670ac7708223474639ef4a941779c435d9b894774d8cc3d9bee77897` |
| 32 | `lemma` | [TopologicalSpace.IsOpenCover.quasiSober_iff_forall](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/topologicalspace-isopencover-quasisober-iff-forall--0755ea5ad50764d751e529ea.md) | 214 | `result-track:0755ea5ad50764d751e529ead2e1096be42ff2aeb512d3967c9ed9f1e097a092` |
| 33 | `lemma` | [TopologicalSpace.IsOpenCover.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/topologicalspace-isopencover-quasisober--9c88be9f71d10ba96b7e489a.md) | 231 | `result-track:9c88be9f71d10ba96b7e489a7f222fa27e8306e577dfadf3ee52a196489440ec` |
| 34 | `theorem` | [quasiSober_of_open_cover](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/quasisober-of-open-cover--e5f06a20a709b4427266f427.md) | 236 | `result-track:e5f06a20a709b4427266f4270c660ec483b6d8750bb93b59d00bca622bbdbd57` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/instance--c2110f7cb9ffd4c8da541cae.md) | 246 | `declaration-track:c2110f7cb9ffd4c8da541caec0d05cd4eeb1d63045e7075aa28a71a1cf160b43` |
| 36 | `lemma` | [QuasiSober.val_lt_genericPoint_of_closure_ne_univ](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/quasisober-val-lt-genericpoint-of-closure-ne-univ--e4a794a91c5d1362db8e642a.md) | 260 | `result-track:e4a794a91c5d1362db8e642a37ec6225e257ae91db9ae80a6b7338bc3bb8089b` |
| 37 | `lemma` | [QuasiSober.of_subset](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/quasisober-of-subset--34af900355722f5081d02518.md) | 268 | `result-track:34af900355722f5081d02518e5f8ca40b0f5d1112963664f86364e7e7351ccc2` |
| 38 | `lemma` | [QuasiSober.inter_of_isClosed_of_quasiSober_left](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/quasisober-inter-of-isclosed-of-quasisober-left--59277e545dd8329b1610c615.md) | 271 | `result-track:59277e545dd8329b1610c615abe6f5da3db19c890af02d0d4533ff9c4ea8d611` |
| 39 | `lemma` | [QuasiSober.inter_of_isClosed_of_quasiSober_right](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/quasisober-inter-of-isclosed-of-quasisober-right--db0b056b6d34830dd4a7225e.md) | 277 | `result-track:db0b056b6d34830dd4a7225e48f5cda4e73a5b70e8b88a65f434ffc79b4adabd` |
| 40 | `def` | [genericPoints](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/genericpoints--a2fbaf3f6b6ac80e88ec1742.md) | 288 | `declaration-track:a2fbaf3f6b6ac80e88ec1742b14cbf4803057c9a768ff26f2709c1dc2efe21fc` |
| 41 | `def` | [component](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/component--78d81a50d072696c70ef2925.md) | 293 | `declaration-track:78d81a50d072696c70ef29259bc368e9731bbf419fbcefbb337b4f5a450ffa0d` |
| 42 | `lemma` | [isGenericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/isgenericpoint--e85bf8c563d627d42a2a3988.md) | 296 | `result-track:e85bf8c563d627d42a2a3988ff07ca41e7e20980f94bbf9e23fbda778c66da3a` |
| 43 | `lemma` | [component_injective](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/component-injective--34cd43aef78538b11075cf81.md) | 298 | `result-track:34cd43aef78538b11075cf814f5606981d6c18cc1a78741d578965dc0cda88d9` |
| 44 | `def` | [ofComponent](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/ofcomponent--c92aea779ae5759e0bab5592.md) | 303 | `declaration-track:c92aea779ae5759e0bab559271f75410da5873ea79aef7872a926b0faf4cbe14` |
| 45 | `lemma` | [isGenericPoint_ofComponent](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/isgenericpoint-ofcomponent--97e5636c14aad243f9d675c2.md) | 307 | `result-track:97e5636c14aad243f9d675c24e30d31cdb98a663136e4cbcaabf2eb051e9e311` |
| 46 | `lemma` | [component_ofComponent](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/component-ofcomponent--6e3d4c5b791fc74dc9d916a0.md) | 312 | `result-track:6e3d4c5b791fc74dc9d916a033b8a9c31b2bd7ee9e247b350c8769aafc162610` |
| 47 | `lemma` | [ofComponent_component](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/ofcomponent-component--317f130891fd36d5bedf7518.md) | 317 | `result-track:317f130891fd36d5bedf751831dd6f382f9c5a47dbf5034efc37baee34f05abf` |
| 48 | `lemma` | [component_surjective](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/component-surjective--f9c09688f888c7178df1350b.md) | 321 | `result-track:f9c09688f888c7178df1350bd96e1f140809831ba008c933cc93decf2c57adac` |
| 49 | `lemma` | [finite](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/finite--50cf25b4a114bd05a81c383d.md) | 324 | `result-track:50cf25b4a114bd05a81c383d67fc4a4b122140b3fb191a49755f2bec525a030c` |
| 50 | `def` | [equiv](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/equiv--1bd1dff55e59d931eafaecc8.md) | 330 | `declaration-track:1bd1dff55e59d931eafaecc8584089981e2774ed739d9ab58538fddc8b66292e` |
| 51 | `lemma` | [closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/closure--6515492fb0c8767cbe04ba0f.md) | 333 | `result-track:6515492fb0c8767cbe04ba0fb5fd7fc1bd04828e806d61b479685e13585c1be3` |
| 52 | `lemma` | [genericPoints_eq_singleton](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/declarations/genericpoints-eq-singleton--5b8f38533779ea2e037ab0f2.md) | 341 | `result-track:5b8f38533779ea2e037ab0f2d71653c3f1bbd8fe561a1d1c46400b10cdd061ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
