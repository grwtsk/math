# Verification target: GRWTSK.Topology.GeneralTopology.Sober.Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7aae3bfd46942645ce342758c524f1ed6161db77",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7aae3bfd46942645ce342758c524f1ed6161db77`.

Source path: `GRWTSK/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsGenericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/isgenericpoint--22c578a3304391d8fab3ef86.md) | 34 | `declaration-track:22c578a3304391d8fab3ef863930fdf5af7c3b00797a0286ec1e23f4fc094a9f` |
| 2 | `theorem` | [isGenericPoint_def](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/isgenericpoint-def--d8d548b8d35fae9e22a16a1b.md) | 38 | `result-track:d8d548b8d35fae9e22a16a1ba5d56dc548c2bb766313631d23cbd5c4e20c3f8a` |
| 3 | `theorem` | [IsGenericPoint.def](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/isgenericpoint-def--22cd6ad6efa9719ec2ffbd05.md) | 42 | `result-track:22cd6ad6efa9719ec2ffbd05a14d81cd4bf4e59da12efb4d6bb759d49a3a107f` |
| 4 | `theorem` | [isGenericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/isgenericpoint-closure--3fc9bd10d9e8496e3f17119a.md) | 47 | `result-track:3fc9bd10d9e8496e3f17119a03aa583a89ae12c3bc952580ae1741afcf8e2f88` |
| 5 | `theorem` | [isGenericPoint_iff_specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/isgenericpoint-iff-specializes--185c379f22d084f855e300ff.md) | 53 | `result-track:185c379f22d084f855e300ff4338ee222b658354236257bee508ae7dd8370929` |
| 6 | `theorem` | [specializes_iff_mem](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/specializes-iff-mem--ffe74ae5d2d01d0eb17d572b.md) | 59 | `result-track:ffe74ae5d2d01d0eb17d572b1bb7703d546627b770e90303ffc3265a288e4ed3` |
| 7 | `theorem` | [specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/specializes--a2e5f0b5a53e4ec55d8ec34b.md) | 63 | `result-track:a2e5f0b5a53e4ec55d8ec34b026bbde6ec619d6481a519797a4f09b06adf89a3` |
| 8 | `theorem` | [mem](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/mem--05ba82e72d86a6942b23d24e.md) | 67 | `result-track:05ba82e72d86a6942b23d24ece1f1537ace79e4de18738960aac67a52122dc21` |
| 9 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/isclosed--208457bbb5679fff094e216e.md) | 71 | `result-track:208457bbb5679fff094e216e279407804b137fde70801ee89b4b4dfef6a6840a` |
| 10 | `theorem` | [isIrreducible](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/isirreducible--7368d321dd1a2f85d1011cd3.md) | 75 | `result-track:7368d321dd1a2f85d1011cd3a23f0d6f0649315afd7c68c1a3963a7b30193512` |
| 11 | `theorem` | [inseparable](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/inseparable--0293825afcc9a81baf0884bb.md) | 79 | `result-track:0293825afcc9a81baf0884bb9c906234466c8bcecbea56fb69934ffd4f6cc0c9` |
| 12 | `theorem` | [eq](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/eq--0407a7f1444b7974a8013ee2.md) | 84 | `result-track:0407a7f1444b7974a8013ee2221986265943f51091a6b262c0b6a7fca20249f9` |
| 13 | `theorem` | [mem_open_set_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/mem-open-set-iff--058a8f45bbfa675a42a9d0d3.md) | 88 | `result-track:058a8f45bbfa675a42a9d0d3595dd5ce4a4376c01b89a56ee47e9de68d8a2de0` |
| 14 | `theorem` | [disjoint_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/disjoint-iff--653849f3e44889e3349d50c6.md) | 92 | `result-track:653849f3e44889e3349d50c6e07922ac915fa675c53d65e8796e89548f763757` |
| 15 | `theorem` | [mem_closed_set_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/mem-closed-set-iff--ab4a0c889cfc2543b01cccf7.md) | 96 | `result-track:ab4a0c889cfc2543b01cccf70281617eddf474a0b4f669d1089ab8f5272fcc53` |
| 16 | `theorem` | [image](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/image--318b1d39d072ded5fc673cd6.md) | 100 | `result-track:318b1d39d072ded5fc673cd663709daef77bee446768757ab525c6c1d228df66` |
| 17 | `theorem` | [isGenericPoint_iff_forall_closed](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/isgenericpoint-iff-forall-closed--6bf06c7957e7f253285800f5.md) | 107 | `result-track:6bf06c7957e7f253285800f54e4ea5b6d3690275e5e529f94eacaa45bc711d20` |
| 18 | `class` | [QuasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/quasisober--9e3d6c59bfb0c1f98a6e7b8e.md) | 120 | `declaration-track:9e3d6c59bfb0c1f98a6e7b8e44ca0a16b6c55f09e89e6cabf04a5ae9313ca8ff` |
| 19 | `def` | [IsIrreducible.genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/isirreducible-genericpoint--352fb58af01f8b126d5ad519.md) | 125 | `declaration-track:352fb58af01f8b126d5ad519b62e74be9890dfff45a3c53b47ebb7c07e63b95d` |
| 20 | `theorem` | [IsIrreducible.genericPoint_spec](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/isirreducible-genericpoint-spec--0435cd7b9b28c2a6ac976265.md) | 130 | `result-track:0435cd7b9b28c2a6ac97626537d85b9f0a93dafbb7391a38e13a176001293f86` |
| 21 | `theorem` | [IsIrreducible.genericPoint_closure_eq](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/isirreducible-genericpoint-closure-eq--b8faa9e18b97dfc4f9cb0cc7.md) | 136 | `result-track:b8faa9e18b97dfc4f9cb0cc7ade42357078e52c3005460bb78ade62d72c84029` |
| 22 | `def` | [genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/genericpoint--810b15a194a52d6d342dab8b.md) | 144 | `declaration-track:810b15a194a52d6d342dab8b248d5eae1939ab08e15f43869a19392e5e38d9bb` |
| 23 | `theorem` | [genericPoint_spec](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/genericpoint-spec--7054387e600d80c68957ccab.md) | 148 | `result-track:7054387e600d80c68957ccaba5c567c3aa035c31e78eeced241ec047178aeb4d` |
| 24 | `theorem` | [genericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/genericpoint-closure--73ccd085a1eb76f67113d937.md) | 153 | `result-track:73ccd085a1eb76f67113d9377611767e64763c7f5c3ee8c25bfc96c33a9705d2` |
| 25 | `theorem` | [genericPoint_specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/genericpoint-specializes--b36de58b64627707a0c001f2.md) | 160 | `result-track:b36de58b64627707a0c001f265447a5e3f9b1c7de7d313c0e4a0b23509790bab` |
| 26 | `def` | [irreducibleSetEquivPoints](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/irreduciblesetequivpoints--f2e74b7e7f7c283fd2e01e4b.md) | 167 | `declaration-track:f2e74b7e7f7c283fd2e01e4b888e2376071ea63f851afd2190f5fe233a2b926b` |
| 27 | `theorem` | [ClosedEmbedding.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/closedembedding-quasisober--106e3318992809d5871d98b0.md) | 181 | `result-track:106e3318992809d5871d98b01d0a1fe0aca0fd713eb9f9681df45bbd110f074a` |
| 28 | `theorem` | [OpenEmbedding.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/openembedding-quasisober--7677a52d4d62bb05368d737e.md) | 192 | `result-track:7677a52d4d62bb05368d737e74358ac7be12f726e391f04cea0ff9257d85cbcd` |
| 29 | `theorem` | [quasiSober_of_open_cover](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/quasisober-of-open-cover--cba0e0cb603b72fa347bd838.md) | 217 | `result-track:cba0e0cb603b72fa347bd83838c83c4310c94321c074f6c54fa9ffb6b21c94a1` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/declarations/instance--d94430fe5b90f8395a42440f.md) | 243 | `declaration-track:d94430fe5b90f8395a42440fc749fec4791ec2cd8b5d0b3acfe41c6c178903c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
