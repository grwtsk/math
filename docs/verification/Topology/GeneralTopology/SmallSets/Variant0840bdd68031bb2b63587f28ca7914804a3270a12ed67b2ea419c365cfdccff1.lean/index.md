# Verification target: GRWTSK.Topology.GeneralTopology.SmallSets.Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56bf3c32b5621fa192909af1ac80c4740ef27407",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56bf3c32b5621fa192909af1ac80c4740ef27407`.

Source path: `GRWTSK/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Lift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/smallsets--578af2adc4241a64d6dfc666.md) | 34 | `declaration-track:578af2adc4241a64d6dfc666ba4c6c14f467a587831c0925716ded8f1d2ac82d` |
| 2 | `theorem` | [smallSets_eq_generate](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/smallsets-eq-generate--a247dfd45660dd6386b5e805.md) | 37 | `result-track:a247dfd45660dd6386b5e805bb8ffd8e2eb487c49a082a2c68438b5d47a81084` |
| 3 | `theorem` | [bind_smallSets_gc](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/bind-smallsets-gc--7716c9f5c8c6f387b2ed7d81.md) | 43 | `result-track:7716c9f5c8c6f387b2ed7d8103d6de97645cbe933500e357c2414e39974da92e` |
| 4 | `theorem` | [HasBasis.smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/hasbasis-smallsets--5d6d4920e72f28a3dcd77b8c.md) | 49 | `result-track:5d6d4920e72f28a3dcd77b8c885a5187c8006d3dda46172ec8d72c74b425a08f` |
| 5 | `theorem` | [hasBasis_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/hasbasis-smallsets--7531f1bca847e98b073fb14c.md) | 53 | `result-track:7531f1bca847e98b073fb14c7b9801902070ce9dcdde1292237a965a35136524` |
| 6 | `theorem` | [Eventually.exists_mem_basis_of_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/eventually-exists-mem-basis-of-smallsets--a1660388033a7067abba520b.md) | 57 | `result-track:a1660388033a7067abba520b42d8df226ff01b10fcceeb62423971d260a125b0` |
| 7 | `theorem` | [Frequently.smallSets_of_forall_mem_basis](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/frequently-smallsets-of-forall-mem-basis--59cd87d546f36e83f6518fb3.md) | 61 | `result-track:59cd87d546f36e83f6518fb35223010966fd8c1066ff6bc503b27f6675c4af0f` |
| 8 | `theorem` | [Eventually.exists_mem_of_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/eventually-exists-mem-of-smallsets--4917b7b1bc07bc8eb6556e95.md) | 65 | `result-track:4917b7b1bc07bc8eb6556e953c6ec43354b375d9a087e931ab2bda0be3a95c24` |
| 9 | `theorem` | [tendsto_smallSets_iff](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/tendsto-smallsets-iff--10179cd1d111ebc1e80da179.md) | 73 | `result-track:10179cd1d111ebc1e80da17975108fb0b3cd4559f01aeb1cce9404468d8e9058` |
| 10 | `theorem` | [eventually_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/eventually-smallsets--b5cf8259aeaaac7495651073.md) | 77 | `result-track:b5cf8259aeaaac749565107334fbe63f5b5e885cf9613a0aa5f7d38ee90b7c2a` |
| 11 | `theorem` | [eventually_smallSets'](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/eventually-smallsets--84fd772d7e7b4c2725a3fe6e.md) | 81 | `result-track:84fd772d7e7b4c2725a3fe6e8a0b45f64799abf00f312e68f3e658a2e82a8e7c` |
| 12 | `theorem` | [frequently_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/frequently-smallsets--f83d4ffb1c9ba021313466b5.md) | 86 | `result-track:f83d4ffb1c9ba021313466b57bb71414786517dc61c99f4d86f796f5f1c4d786` |
| 13 | `theorem` | [frequently_smallSets_mem](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/frequently-smallsets-mem--6d939da0784005004d48dc1c.md) | 90 | `result-track:6d939da0784005004d48dc1c03cf26d25f6c2787202d6969aaadc397556d6bf4` |
| 14 | `lemma` | [tendsto_image_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/tendsto-image-smallsets--0a05b737cc33c5bd6ac1a3c2.md) | 94 | `result-track:0a05b737cc33c5bd6ac1a3c2d2b9fb431c688c2b15cd9c5dabe5b472d7f7c55a` |
| 15 | `theorem` | [HasAntitoneBasis.tendsto_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/hasantitonebasis-tendsto-smallsets--d4af6495677eb1055ef33cc5.md) | 103 | `result-track:d4af6495677eb1055ef33cc5db91bf3ceb943dc717d043996a0ee02ab7da4480` |
| 16 | `theorem` | [monotone_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/monotone-smallsets--e8aba72e976c27f390e35cb7.md) | 108 | `result-track:e8aba72e976c27f390e35cb774d64dde822aa478010b87838769d01a4e690b99` |
| 17 | `theorem` | [smallSets_bot](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/smallsets-bot--0502f6a8f7967e094562b15f.md) | 112 | `result-track:0502f6a8f7967e094562b15f25c59fdc9ea73a4ed1efa4165d0113518b2dd3b0` |
| 18 | `theorem` | [smallSets_top](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/smallsets-top--083e94fc0e4dc968079e0fd6.md) | 117 | `result-track:083e94fc0e4dc968079e0fd694f27b35ea2ef94839f500a29f426252ab56d03a` |
| 19 | `theorem` | [smallSets_principal](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/smallsets-principal--59d61c35c335e3ffd852b6ec.md) | 121 | `result-track:59d61c35c335e3ffd852b6ec6cd6729acfebb6bf4ccbc4415016c0a3a0485815` |
| 20 | `theorem` | [smallSets_comap_eq_comap_image](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/smallsets-comap-eq-comap-image--9a89210e071b51b6f277f0cc.md) | 124 | `result-track:9a89210e071b51b6f277f0cc0b57bffb891f9dc70c8762121c197be61cd5ecda` |
| 21 | `theorem` | [smallSets_comap](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/smallsets-comap--10795576eff59f42ed3af410.md) | 129 | `result-track:10795576eff59f42ed3af410c489be61317e6b9b534f1f9e8a9ea1da62b06b74` |
| 22 | `theorem` | [comap_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/comap-smallsets--46e0ea57c8fa1b7eb9bf3ac7.md) | 133 | `result-track:46e0ea57c8fa1b7eb9bf3ac724f364022678c70ad5932647a0b80de592a082ec` |
| 23 | `theorem` | [smallSets_iInf](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/smallsets-iinf--37aea11f8baf9d4c23e22072.md) | 137 | `result-track:37aea11f8baf9d4c23e22072ef6cad40b2fcd6baa74ef61003cc56776d30f224` |
| 24 | `theorem` | [smallSets_inf](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/smallsets-inf--727bd07926727625c11ec416.md) | 140 | `result-track:727bd07926727625c11ec4160590b69e62b3e501155d8c707aeede1fd91278cc` |
| 25 | `instance` | [smallSets_neBot](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/smallsets-nebot--3a1608061e3ef668541d0eb7.md) | 143 | `declaration-track:3a1608061e3ef668541d0eb7e0a10b7999e9ef75e089334fde053efac3734c33` |
| 26 | `theorem` | [Tendsto.smallSets_mono](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/tendsto-smallsets-mono--3c6f54ad94916597efb3489b.md) | 147 | `result-track:3c6f54ad94916597efb3489bf51f113554a693a7497978239fcab7bcb83b3d67` |
| 27 | `theorem` | [Tendsto.of_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/tendsto-of-smallsets--2626f1763e481922a37d737e.md) | 159 | `result-track:2626f1763e481922a37d737ed4029e775cda229ff6ef189e3863bc5b668f75f4` |
| 28 | `theorem` | [eventually_smallSets_eventually](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/eventually-smallsets-eventually--1374efea79dbc52d08b5d795.md) | 164 | `result-track:1374efea79dbc52d08b5d7956f8889c7a36512c5b6526f74665178d066ebb04e` |
| 29 | `theorem` | [eventually_smallSets_forall](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/eventually-smallsets-forall--c7055d8bb7ef96f35dc46c70.md) | 173 | `result-track:c7055d8bb7ef96f35dc46c708b3a4348251babac648455560de6dd48f20b88c0` |
| 30 | `theorem` | [eventually_smallSets_subset](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/declarations/eventually-smallsets-subset--d732dd8c247a851ba1b96a6b.md) | 180 | `result-track:d732dd8c247a851ba1b96a6b0075d15c48a8afd494c146adebc1b4bf3f81cee2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
