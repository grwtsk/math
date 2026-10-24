# Verification target: GRWTSK.Topology.Presheaf.Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35c621fae5eb744449c424515f3c574a3452d909",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/index.md) · [Full source](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35c621fae5eb744449c424515f3c574a3452d909`.

Source path: `GRWTSK/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Opens` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Unique` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.KanExtension.Adjunction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Init` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Presheaf](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/presheaf--b37568e78cb08eddafeb41de.md) | 49 | `declaration-track:b37568e78cb08eddafeb41de712f92cfc8b2de3888b0874beaa4aa934613ab0f` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/instance--692ae4be7d7bf03ff079c32e.md) | 52 | `declaration-track:692ae4be7d7bf03ff079c32e12d5e8f1e68106b90c2d08c4728d9d6e1b39e86a` |
| 3 | `theorem` | [comp_app](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/comp-app--2a1a98a7a0488a7f87a02fd6.md) | 59 | `result-track:2a1a98a7a0488a7f87a02fd66f97c703d52399b5ac5a12fc4b429068d63c9484` |
| 4 | `lemma` | [ext](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/ext--c01e613487340d82d1676828.md) | 64 | `result-track:c01e613487340d82d167682839eb61b5ea908f04d05990fe6134a15a314367cc` |
| 5 | `macro` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/macro--65080eac239c6ecd20b6b568.md) | 73 | `declaration-track:65080eac239c6ecd20b6b568aadda867ae6fedb363a94ee822f09813c449aaa9` |
| 6 | `macro` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/macro--2d53f143a32515b93c46a1aa.md) | 80 | `declaration-track:2d53f143a32515b93c46a1aa6e74068d75972089f113bb1398df23096c55113e` |
| 7 | `macro` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/macro--0c6a4dccde79badcf2c07b66.md) | 89 | `declaration-track:0c6a4dccde79badcf2c07b66633d36ecf14893e96fa69f31082cb7227d1a40fc` |
| 8 | `example` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/example--2aea0cd9e6d93834d96c7608.md) | 102 | `declaration-track:2aea0cd9e6d93834d96c76083a86c5d26cbc3d993ee8e0d1db900e582af9855c` |
| 9 | `def` | [restrict](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/restrict--b6d717c71da17b55591823d2.md) | 113 | `declaration-track:b6d717c71da17b55591823d2ce13b75b4a4ac62fc64e337ab58ec5c8206d3019` |
| 10 | `abbrev` | [restrictOpen](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/restrictopen--896005a094b0a7ceb9f64e5b.md) | 128 | `declaration-track:896005a094b0a7ceb9f64e5b4430819de9a7aae0b5418b54201585a5c2d9fe20` |
| 11 | `theorem` | [restrict_restrict](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/restrict-restrict--edfa9078cccd43953816001e.md) | 137 | `result-track:edfa9078cccd43953816001e2377302c02299ccf4a3e2f513f8b57ad8d9e7c89` |
| 12 | `theorem` | [map_restrict](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/map-restrict--7897e44ace4a7ee3918f9579.md) | 144 | `result-track:7897e44ace4a7ee3918f95796c14fbc7fbaa33a9b3795d3a41aa7cbec6fd68c6` |
| 13 | `def` | [pushforward](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/pushforward--d14938dc5c4928059d4b6a07.md) | 156 | `declaration-track:d14938dc5c4928059d4b6a07a4f9641634e9f2bb7043972763e5a34b6423702f` |
| 14 | `theorem` | [pushforward_map_app'](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/pushforward-map-app--f6b4d1aa8c49829e81073ba6.md) | 164 | `result-track:f6b4d1aa8c49829e81073ba6201f27b88b71b8a0d191878bf31fb4d80b40ff19` |
| 15 | `lemma` | [id_pushforward](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/id-pushforward--3d39589578e1c8b98d366346.md) | 168 | `result-track:3d39589578e1c8b98d366346bd4b07b0f98c433459cf4c19c1b7c15b0d3af2ac` |
| 16 | `def` | [id](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/id--ee10a3f9ab99785b7d03d1e7.md) | 176 | `declaration-track:ee10a3f9ab99785b7d03d1e75e7f974f2f92a450e37fff8b0bdbc7c9a6a34bd7` |
| 17 | `theorem` | [id_hom_app](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/id-hom-app--10d38f946dda3010852464e0.md) | 179 | `result-track:10d38f946dda3010852464e0eaa2094bd2bc385be02d3cbe9a1b1e87c50e5a7f` |
| 18 | `theorem` | [id_inv_app](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/id-inv-app--7224d7a07faf3a4762f8e9e3.md) | 182 | `result-track:7224d7a07faf3a4762f8e9e31372764880c2ae424c8284276f2427e05ae5011d` |
| 19 | `theorem` | [id_eq](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/id-eq--e02d7be7f4e4a83f3cf1da38.md) | 185 | `result-track:e02d7be7f4e4a83f3cf1da382774bedd6da3e6cd638fa86fe7a9c609fdc166ab` |
| 20 | `def` | [comp](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/comp--db6ab8e85d5353ce16815f39.md) | 190 | `declaration-track:db6ab8e85d5353ce16815f3958aa5808ae5dbc815d9696428421cccdcd300be3` |
| 21 | `theorem` | [comp_eq](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/comp-eq--e596029f9dc24ab5db4ebd78.md) | 193 | `result-track:e596029f9dc24ab5db4ebd7836b4b70a4cf3600104e07fcaf6b5714d059e4f99` |
| 22 | `theorem` | [comp_hom_app](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/comp-hom-app--b9da8a15b8f236cdf979b2c6.md) | 198 | `result-track:b9da8a15b8f236cdf979b2c605694398ecf2f2a4275f94746ab58c65f5e84759` |
| 23 | `theorem` | [comp_inv_app](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/comp-inv-app--b28ecc72e1aa30449fbcab9e.md) | 202 | `result-track:b28ecc72e1aa30449fbcab9ed253583ab006aa35959f1a8dc223b515d497358c` |
| 24 | `def` | [pushforwardEq](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/pushforwardeq--c3eb7f87e8619593035b083f.md) | 211 | `declaration-track:c3eb7f87e8619593035b083f42273b5dadbd71c29358d86dcf9435a0c20c7f3e` |
| 25 | `theorem` | [pushforward_eq'](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/pushforward-eq--a25e8e6f12f32857a8c20266.md) | 215 | `result-track:a25e8e6f12f32857a8c2026655dc873b7accb16b3230695475c391c8473d1035` |
| 26 | `theorem` | [pushforwardEq_hom_app](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/pushforwardeq-hom-app--870f517114eb496441a15620.md) | 219 | `result-track:870f517114eb496441a1562055c3ad22791e38f1212250f12bfbeb62ce5286ec` |
| 27 | `def` | [presheafEquivOfIso](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/presheafequivofiso--c11ab57a7dcf70c276da5176.md) | 230 | `declaration-track:c11ab57a7dcf70c276da51761331b8f035fef606bb36bb7e40d256a47a892f69` |
| 28 | `def` | [toPushforwardOfIso](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/topushforwardofiso--ca9be0c089e45d67833be5de.md) | 238 | `declaration-track:ca9be0c089e45d67833be5de55f07d316ccefd6367eeeb48bff7274a32e19f39` |
| 29 | `theorem` | [toPushforwardOfIso_app](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/topushforwardofiso-app--ee65051d20dfb95ba77aab65.md) | 243 | `result-track:ee65051d20dfb95ba77aab655c1f2bfb1cc168fd592d1ab80bc18ea5089e1c89` |
| 30 | `def` | [pushforwardToOfIso](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/pushforwardtoofiso--76330180c9f9be09447e76b9.md) | 253 | `declaration-track:76330180c9f9be09447e76b94a43fc6267d181bc0db0fda7c60212adaf44a221` |
| 31 | `theorem` | [pushforwardToOfIso_app](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/pushforwardtoofiso-app--1f4c4a2ccda6aa8be5853065.md) | 258 | `result-track:1f4c4a2ccda6aa8be58530656db4f54e65b351f95e3f8e8991fa0205d7d37efb` |
| 32 | `def` | [pullback](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/pullback--e177763e7a93e9611bc35158.md) | 273 | `declaration-track:e177763e7a93e9611bc351582aa431dc104ba8779ce0f88568cfbf0f74ad566d` |
| 33 | `def` | [pushforwardPullbackAdjunction](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/pushforwardpullbackadjunction--81d337790849a0dab88cd43c.md) | 277 | `declaration-track:81d337790849a0dab88cd43c0cc83d82ad5f38a5d71954e2a7c4e9344d4a165e` |
| 34 | `def` | [pullbackHomIsoPushforwardInv](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/pullbackhomisopushforwardinv--0d07e5870cbc6dadbbeb3135.md) | 282 | `declaration-track:0d07e5870cbc6dadbbeb3135feb3ab9ffaabe7aca776be0cee2c26c66955838d` |
| 35 | `def` | [pullbackInvIsoPushforwardHom](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/pullbackinvisopushforwardhom--6546f8feab00ecb1c44a2335.md) | 288 | `declaration-track:6546f8feab00ecb1c44a2335267bd3fe1cb2746ade2aed89de570973affe2dd5` |
| 36 | `def` | [pullbackObjObjOfImageOpen](../../../../mathematics/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/declarations/pullbackobjobjofimageopen--024a8a8bd45d0a6fecbbcf5d.md) | 296 | `declaration-track:024a8a8bd45d0a6fecbbcf5d0dd7244c5b4e79f9b338c93b7d02ec653abcf48b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
