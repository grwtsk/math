# Verification target: GRWTSK.Topology.GeneralTopology.Sober.Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b522c9eeb0f7e7f4f338732066ff0b7d5a9e4d0f",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b522c9eeb0f7e7f4f338732066ff0b7d5a9e4d0f`.

Source path: `GRWTSK/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sets.Closeds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.OpenCover` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsGenericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/isgenericpoint--4e011f17f37ab0589e3c1e78.md) | 35 | `declaration-track:4e011f17f37ab0589e3c1e78f724a278d53063603c3ea28a76083bf5d6f0a920` |
| 2 | `theorem` | [isGenericPoint_def](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/isgenericpoint-def--12a9b836a1763f4cc03d4467.md) | 38 | `result-track:12a9b836a1763f4cc03d44677f6b5fc86515b2fa112cfb99c459c489bc10f7f1` |
| 3 | `theorem` | [IsGenericPoint.def](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/isgenericpoint-def--9dae33d3bd564c8c13499d22.md) | 41 | `result-track:9dae33d3bd564c8c13499d2243f2600e8006530a5d3fc335bde1c0808a3da1ee` |
| 4 | `theorem` | [isGenericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/isgenericpoint-closure--e3c7835f273acd665639e03a.md) | 45 | `result-track:e3c7835f273acd665639e03a212dd710146d7e70c5d8cfaad3350fee088cdd9d` |
| 5 | `theorem` | [isGenericPoint_iff_specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/isgenericpoint-iff-specializes--48912c5da3023e9e8410ef82.md) | 50 | `result-track:48912c5da3023e9e8410ef826d97ab4838448b3ce800669e920b714a775ca8e6` |
| 6 | `theorem` | [specializes_iff_mem](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/specializes-iff-mem--7bddafe3a9245d54acc0fac9.md) | 55 | `result-track:7bddafe3a9245d54acc0fac9fd3ce8623e8bba03d670baf82bd74bf9d91a7825` |
| 7 | `theorem` | [specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/specializes--5b43d084cb6c08b2b242ad10.md) | 58 | `result-track:5b43d084cb6c08b2b242ad10c80a420dfb2c8a00e48df3bcf7fe724b00381534` |
| 8 | `theorem` | [mem](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/mem--c3fab95c1a10e298b4b0a6eb.md) | 61 | `result-track:c3fab95c1a10e298b4b0a6ebf9e596b1be8a0a2c1118b002055c4df6f5bfa33a` |
| 9 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/isclosed--6d56097e63f41177a592cd87.md) | 64 | `result-track:6d56097e63f41177a592cd873fe18f774b01464ac54ab602fa63fc9596b5cabf` |
| 10 | `theorem` | [isIrreducible](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/isirreducible--e6ed37bd04cd0ae1ab4aafe2.md) | 67 | `result-track:e6ed37bd04cd0ae1ab4aafe2e9b953a84060b85a3a9f824b1838b8f737454e90` |
| 11 | `theorem` | [inseparable](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/inseparable--0228a6314d8ab6e419092623.md) | 70 | `result-track:0228a6314d8ab6e419092623142fbece43b95c939193b793a756cefa2890a2eb` |
| 12 | `theorem` | [eq](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/eq--c5eda28843ca7d1e28fee7d1.md) | 75 | `result-track:c5eda28843ca7d1e28fee7d14117a02da5ef146a595c334e9c10a2aa6681f247` |
| 13 | `theorem` | [mem_open_set_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/mem-open-set-iff--6a5e8058bd383fc06335311c.md) | 78 | `result-track:6a5e8058bd383fc06335311c6480a3989d7bf2e18f8036c714540b2d9633d8f4` |
| 14 | `theorem` | [disjoint_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/disjoint-iff--800aa3f126b6284522cd2123.md) | 81 | `result-track:800aa3f126b6284522cd2123ce52022f1d686609ed116525c94fdc17a7be7752` |
| 15 | `theorem` | [mem_closed_set_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/mem-closed-set-iff--a9849493afec1c1029ffdb78.md) | 84 | `result-track:a9849493afec1c1029ffdb7893ac057986351657d6fee4e8c27bb752cddf70a5` |
| 16 | `theorem` | [image](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/image--71869d1da70cbad8b0cf7157.md) | 87 | `result-track:71869d1da70cbad8b0cf7157e731f59578bd271dc9f5db1043c235ad0b316958` |
| 17 | `theorem` | [isGenericPoint_iff_forall_closed](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/isgenericpoint-iff-forall-closed--0a98636d2b351e881d0fa775.md) | 93 | `result-track:0a98636d2b351e881d0fa775adf3124597c67fb4e73c22c9b63b88015cfdeafc` |
| 18 | `class` | [QuasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/quasisober--8e0a2f6b0f4362e66db9d3b5.md) | 105 | `declaration-track:8e0a2f6b0f4362e66db9d3b5f68aa42395d908014b406b0a8d1e54e81da00b37` |
| 19 | `def` | [IsIrreducible.genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/isirreducible-genericpoint--c874a1fac586144eeaef349f.md) | 109 | `declaration-track:c874a1fac586144eeaef349f41d3fbd7653318068677188929c86ce7a29e0676` |
| 20 | `theorem` | [IsIrreducible.isGenericPoint_genericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/isirreducible-isgenericpoint-genericpoint-closure--9657f46cb8ace4c3e6198c8f.md) | 113 | `result-track:9657f46cb8ace4c3e6198c8f91dcb056d531d439308d5663b33f158381a08d9c` |
| 21 | `theorem` | [IsIrreducible.isGenericPoint_genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/isirreducible-isgenericpoint-genericpoint--cfe788d68d4230d858b86bed.md) | 118 | `result-track:cfe788d68d4230d858b86bed90c0e38e0be7deebdd99febe32580fda692a65b5` |
| 22 | `theorem` | [IsIrreducible.genericPoint_closure_eq](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/isirreducible-genericpoint-closure-eq--fe6ad539f2e58088c7b46e98.md) | 124 | `result-track:fe6ad539f2e58088c7b46e98de233219ee50ef05185de2e99af2a692e1c84995` |
| 23 | `theorem` | [IsIrreducible.closure_genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/isirreducible-closure-genericpoint--0d9bdc89f6a2650838b1f6ed.md) | 128 | `result-track:0d9bdc89f6a2650838b1f6ed32b1a2b6bf6ebb91d0128eea00d3812c661400b0` |
| 24 | `def` | [genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/genericpoint--440e565e6a652669bf1d7ab3.md) | 136 | `declaration-track:440e565e6a652669bf1d7ab3961e1b427cf7641bbccd20f53cea7adee69599f4` |
| 25 | `theorem` | [genericPoint_spec](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/genericpoint-spec--58b5da917a4c4865a11f842c.md) | 139 | `result-track:58b5da917a4c4865a11f842cb06ab44eb97be531a1c2c15cd4a31d92b9d832ea` |
| 26 | `theorem` | [genericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/genericpoint-closure--25afbead7ee093961aa494bd.md) | 144 | `result-track:25afbead7ee093961aa494bd07ddbe7e02c16183d244a94bc587d277c765ad8a` |
| 27 | `theorem` | [genericPoint_specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/genericpoint-specializes--7b7d1cb8d9cb88b92ac6b62d.md) | 150 | `result-track:7b7d1cb8d9cb88b92ac6b62df0bcd16532cfa29ce4c362add120ae21ee265418` |
| 28 | `def` | [irreducibleSetEquivPoints](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/irreduciblesetequivpoints--2cefb74e2064d48092d73f2b.md) | 156 | `declaration-track:2cefb74e2064d48092d73f2bfcc2db0ee2b9c4fdd7b725b7993c58d8e0c66364` |
| 29 | `lemma` | [Topology.IsClosedEmbedding.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/topology-isclosedembedding-quasisober--e4de8b4655ebf03b0c098362.md) | 173 | `result-track:e4de8b4655ebf03b0c09836271c5e47e66e69a14b64552d60b5b77d028f8ab28` |
| 30 | `theorem` | [Topology.IsOpenEmbedding.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/topology-isopenembedding-quasisober--536761d327f6745da6607f29.md) | 183 | `result-track:536761d327f6745da6607f29c1a2e70bd20875231ca949abff4e91af2848c23a` |
| 31 | `lemma` | [TopologicalSpace.IsOpenCover.quasiSober_iff_forall](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/topologicalspace-isopencover-quasisober-iff-forall--da3a05fc8a1759a9c304c0ce.md) | 206 | `result-track:da3a05fc8a1759a9c304c0ce2c034d6d4bc7d51359fb1147b1661103b2f594a3` |
| 32 | `lemma` | [TopologicalSpace.IsOpenCover.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/topologicalspace-isopencover-quasisober--b76554c3e0af2cdd430924d5.md) | 223 | `result-track:b76554c3e0af2cdd430924d53c30827686759eef3e8b1dfad7bbc79a8fc96e74` |
| 33 | `theorem` | [quasiSober_of_open_cover](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/quasisober-of-open-cover--37193f54d4f71e4444f25517.md) | 228 | `result-track:37193f54d4f71e4444f2551770dc1dfc9e5e90524ddafd95439fbacf11577db3` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/instance--d66ccfd5080deec557b5905d.md) | 234 | `declaration-track:d66ccfd5080deec557b5905db354d063211b87f14de3ae13a4b6105c5e05868b` |
| 35 | `def` | [genericPoints](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/genericpoints--d9c7280b72c5aad8bce2d847.md) | 245 | `declaration-track:d9c7280b72c5aad8bce2d847e9c1a38942048ef0636cec6a7e1833cc03b3c980` |
| 36 | `def` | [component](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/component--415d1b8f2c1913cebc303603.md) | 250 | `declaration-track:415d1b8f2c1913cebc303603071bd5372b6596c788a59ac46990f6533389da7f` |
| 37 | `lemma` | [isGenericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/isgenericpoint--a1fc6d48305c9c3285f9799c.md) | 253 | `result-track:a1fc6d48305c9c3285f9799c00bd206efb38328baff81fd689de1cbc49629db8` |
| 38 | `lemma` | [component_injective](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/component-injective--a50e208fa3cf3a97a90288ce.md) | 255 | `result-track:a50e208fa3cf3a97a90288ce6387111d6e1b601eefd0d9c5ecd6ad5b9d232abf` |
| 39 | `def` | [ofComponent](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/ofcomponent--ae472feaa2c27c0abe11e40a.md) | 260 | `declaration-track:ae472feaa2c27c0abe11e40a8590415c25f6aeec45ce25913ef7e432ba395b91` |
| 40 | `lemma` | [isGenericPoint_ofComponent](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/isgenericpoint-ofcomponent--ed32dde36624bb074bf0c259.md) | 264 | `result-track:ed32dde36624bb074bf0c259fe70286c8c01e0a35642a3e4accbd60b6511b7c6` |
| 41 | `lemma` | [component_ofComponent](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/component-ofcomponent--328ad8b5ca39475b84b7dcb7.md) | 269 | `result-track:328ad8b5ca39475b84b7dcb720d1d83ce7cdfa3794cd70bd744ab0c6da4fee49` |
| 42 | `lemma` | [ofComponent_component](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/ofcomponent-component--024c0064db9723285c9129fa.md) | 274 | `result-track:024c0064db9723285c9129fa92577b699040fda22cc3d22b89558a30094e63f1` |
| 43 | `lemma` | [component_surjective](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/component-surjective--9fc5e79175b5dc2a7db79a3e.md) | 278 | `result-track:9fc5e79175b5dc2a7db79a3e1984d292c7edf8e8f6117a2fa36903e005887d67` |
| 44 | `lemma` | [finite](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/finite--cc06d5d4c3d3648beaab1937.md) | 281 | `result-track:cc06d5d4c3d3648beaab1937ebe0c3770dda14308d6394a9b339647714afb813` |
| 45 | `def` | [equiv](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/equiv--fde2980c818de9fa67f2e73c.md) | 287 | `declaration-track:fde2980c818de9fa67f2e73c8f7b5faa103ffdc4e2a0843f25031dd1ae2cd870` |
| 46 | `lemma` | [closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/closure--1b690e85f2d2e88bb7b979f6.md) | 290 | `result-track:1b690e85f2d2e88bb7b979f6440c7acdf1344a1f718be736333d0805561d642c` |
| 47 | `lemma` | [genericPoints_eq_singleton](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant52fa92ebc571632d6c540e7d0c387950df6c6574a3f74071f79dcad35bc4738e.lean/declarations/genericpoints-eq-singleton--e1ce75dfd320e73c91b94621.md) | 298 | `result-track:e1ce75dfd320e73c91b94621639547a83168de8b56b7dd05d47aeaa7d7505c1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
